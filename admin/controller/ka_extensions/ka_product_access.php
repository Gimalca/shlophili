<?php
/*
	Project: Restricted Product Access
	Author : karapuz <support@ka-station.com>

	Version: 3 ($Revision: 19 $)

*/

class ControllerKaExtensionsKaProductAccess extends KaInstaller {

	protected $extension_version = '3.1.1';
	protected $min_store_version = '2.0.1.0';
	protected $max_store_version = '2.0.3.9';
	protected $tables;
	protected $xml_file = "ka_product_access.xml";
	
	//temporary variables
	protected $error;
	
	public function getTitle() {
		$str = str_replace('{{version}}', $this->extension_version, $this->language->get('extension_title'));
		return $str;
	}

	
	protected function onLoad() {

		$this->loadLanguage('ka_extensions/ka_product_access');
		
		$this->load->model('setting/setting');
	
 		$this->tables = array(
 			'category' => array(
 				'fields' => array(
 					'propagate_restrictions' => array(
 						'type'   => "enum('N','Y')"
 					)
 				)
 			), 			
			'product_customer_group' => array(
				'is_new' => true,
				'fields' => array(
					'product_id' => array(
					'type'  => 'int(11)'
					),
				'customer_group_id' => array(
					'type'  => 'int(11)'								
					)
				),
			),
			'category_customer_group' => array(
				'is_new' => true,
				'fields' => array(
					'category_id' => array(
					'type'  => 'int(11)'
					),
					'customer_group_id' => array(
					'type'  => 'int(11)'								
					)
				)
			)
		);

		$this->tables['product_customer_group']['query'] = "
			CREATE TABLE `" . DB_PREFIX . "product_customer_group` (
			  `product_id` int(11) NOT NULL,
			  `customer_group_id` int(11) NOT NULL,
		  PRIMARY KEY  (`product_id`,`customer_group_id`)
			);
		";
		$this->tables['category_customer_group']['query'] = "
			CREATE TABLE `" . DB_PREFIX . "category_customer_group` (
			  `category_id` int(11) NOT NULL,
			  `customer_group_id` int(11) NOT NULL,
		  PRIMARY KEY  (`category_id`,`customer_group_id`)
			);
		";

		$this->tables['category']['fields']['propagate_restrictions']['query'] = 
			"ALTER TABLE " . DB_PREFIX . "category ADD propagate_restrictions ENUM( 'N', 'Y' ) DEFAULT 'N' NOT NULL";

		return true;
	}

	
	public function index() {

		$heading_title = $this->getTitle();
		$this->document->setTitle($heading_title);

		// handle autoinstall actions
		//
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
		
			$this->request->post['ka_pa_show_login_page'] = (isset($this->request->post['ka_pa_show_login_page'])) ? 'Y' : 'N';

			if ($this->request->post['ka_pa_visibility'] != $this->config->get('ka_pa_visibility')) {
				$this->cache->delete('product');
			}
					
			$this->model_setting_setting->editSetting('ka_pa', $this->request->post);
			$this->session->data['success'] = $this->language->get('Settings have been stored sucessfully.');
				
			$this->response->redirect($this->url->link('extension/ka_extensions', 'token=' . $this->session->data['token'], 'SSL'));
			
		} elseif ($this->request->server['REQUEST_METHOD'] == 'POST') {
			$this->data = $this->request->post;

		} else {
			$this->data['button_save']           = $this->language->get('button_save');
			$this->data['button_cancel']         = $this->language->get('button_cancel');
			$this->data['ka_pa_no_propagation']  = $this->config->get('ka_pa_no_propagation');
			$this->data['ka_pa_visibility']      = $this->config->get('ka_pa_visibility');
			$this->data['ka_pa_purchase_url']    = $this->config->get('ka_pa_purchase_url');
			$this->data['ka_pa_show_login_page'] = $this->config->get('ka_pa_show_login_page');
		}

		$this->data['heading_title']   = $heading_title;
	
		$this->data['button_save']           = $this->language->get('button_save');
		$this->data['button_cancel']         = $this->language->get('button_cancel');
		$this->data['ka_pa_no_propagation']  = $this->config->get('ka_pa_no_propagation');
		$this->data['ka_pa_visibility']      = $this->config->get('ka_pa_visibility');
		$this->data['ka_pa_purchase_url']    = $this->config->get('ka_pa_purchase_url');
		$this->data['ka_pa_show_login_page'] = $this->config->get('ka_pa_show_login_page');

		$this->data['product_visibilities'] = array(
			''          => 'none',
			'no_prices' => 'Show without prices',
			'full'      => 'Full information'
		);

		$this->data['extension_version']        = $this->extension_version;
		$this->data['error'] = $this->error;
		
 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}

		$this->data['breadcrumbs'] = array();
   		$this->data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
			'separator' => false
		);

  		$this->data['breadcrumbs'][] = array(
	 		'text'      => $this->language->get('Ka Extensions'),
			'href'      => $this->url->link('extension/ka_extensions', 'token=' . $this->session->data['token'], 'SSL'),
   			'separator' => ' :: '
 		);
		
 		$this->data['breadcrumbs'][] = array(
	 		'text'      => $heading_title,
 		);
		
		$this->data['action'] = $this->url->link('ka_extensions/ka_product_access', 'token=' . $this->session->data['token'], 'SSL');
		$this->data['cancel'] = $this->url->link('extension/ka_extensions', 'token=' . $this->session->data['token'], 'SSL');

		$this->template = 'ka_extensions/ka_product_access.tpl';
		$this->children = array(
			'common/header',
			'common/column_left',			
			'common/footer'
		);
				
		$this->setOutput();
	}

		
	protected function validate() {
		if (!$this->user->hasPermission('modify', 'ka_extensions/ka_product_access')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}
}
?>