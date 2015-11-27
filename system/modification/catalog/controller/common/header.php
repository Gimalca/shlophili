<?php
class ControllerCommonHeader extends Controller {
	public function index() {
		$data['title'] = $this->document->getTitle();

		if ($this->request->server['HTTPS']) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}

		$data['base'] = $server;
		$data['description'] = $this->document->getDescription();
		$data['keywords'] = $this->document->getKeywords();
		$data['links'] = $this->document->getLinks();
		$data['styles'] = $this->document->getStyles();
		$data['scripts'] = $this->document->getScripts();
		$data['lang'] = $this->language->get('code');
		$data['direction'] = $this->language->get('direction');
		$data['google_analytics'] = html_entity_decode($this->config->get('config_google_analytics'), ENT_QUOTES, 'UTF-8');
		$data['name'] = $this->config->get('config_name');

		if (is_file(DIR_IMAGE . $this->config->get('config_icon'))) {
			$data['icon'] = $server . 'image/' . $this->config->get('config_icon');
		} else {
			$data['icon'] = '';
		}

		if (is_file(DIR_IMAGE . $this->config->get('config_logo'))) {
			$data['logo'] = $server . 'image/' . $this->config->get('config_logo');
		} else {
			$data['logo'] = '';
		}

		$this->load->language('common/header');

		$data['text_home'] = $this->language->get('text_home');
		$data['text_categories_menu'] = $this->language->get('text_categories_menu');
		$data['text_brands_menu'] = $this->language->get('text_brands_menu');
		//karapuz (ka_product_access.ocmod.xml) 
		if ($this->db->isKaInstalled('ka_product_access')) {
			if (!empty($this->session->data['wishlist'])) {
				$this->load->model('catalog/product');
				$_wishlist = array();
				foreach ($this->session->data['wishlist'] as $product_id) {
					if ($this->model_catalog_product->IsProductAccessDenied($product_id)) {
						if ($this->config->get('ka_pa_visibility') == '') {
							continue;
						}
					}
					$_wishlist[] = $product_id;
				}
				$this->session->data['wishlist'] = $_wishlist;
			}
		}
		///karapuz (ka_product_access.ocmod.xml) 

		$data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), (isset($this->session->data['wishlist']) ? count($this->session->data['wishlist']) : 0));
		$data['text_shopping_cart'] = $this->language->get('text_shopping_cart');
		$data['text_logged'] = sprintf($this->language->get('text_logged'), $this->url->link('account/account', '', 'SSL'), $this->customer->getFirstName(), $this->url->link('account/logout', '', 'SSL'));
		
		$data['text_welcome'] = sprintf($this->language->get('text_welcome'), $this->url->link('account/login', '', 'SSL'), $this->url->link('account/register', '', 'SSL'));
		$data['text_logged'] = sprintf($this->language->get('text_logged'), $this->url->link('account/account', '', 'SSL'), $this->customer->getFirstName(), $this->url->link('account/logout', '', 'SSL'));

		$data['text_account'] = $this->language->get('text_account');
		$data['text_register'] = $this->language->get('text_register');
		$data['text_login'] = $this->language->get('text_login');
		$data['text_order'] = $this->language->get('text_order');
		$data['text_transaction'] = $this->language->get('text_transaction');
		$data['text_download'] = $this->language->get('text_download');
		$data['text_logout'] = $this->language->get('text_logout');
		$data['text_checkout'] = $this->language->get('text_checkout');
		$data['text_category'] = $this->language->get('text_category');
		$data['text_all'] = $this->language->get('text_all');

		$data['home'] = $this->url->link('common/home');
		$data['wishlist'] = $this->url->link('account/wishlist', '', 'SSL');
		$data['logged'] = $this->customer->isLogged();
		$data['account'] = $this->url->link('account/account', '', 'SSL');
		$data['register'] = $this->url->link('account/register', '', 'SSL');
		$data['login'] = $this->url->link('account/login', '', 'SSL');
		$data['order'] = $this->url->link('account/order', '', 'SSL');
		$data['transaction'] = $this->url->link('account/transaction', '', 'SSL');
		$data['download'] = $this->url->link('account/download', '', 'SSL');
		$data['logout'] = $this->url->link('account/logout', '', 'SSL');
		$data['shopping_cart'] = $this->url->link('checkout/cart');
		$data['checkout'] = $this->url->link('checkout/checkout', '', 'SSL');
		$data['contact'] = $this->url->link('information/contact');
		$data['telephone'] = $this->config->get('config_telephone');
		
		$data['nova_custom_link_menu_title_1'] = $this->config->get('nova_custom_link_menu_title_1' . $this->config->get('config_language_id'));
		$data['nova_custom_link_menu_url_1'] = $this->config->get('nova_custom_link_menu_url_1');
		
		$data['nova_custom_link_menu_title_2'] = $this->config->get('nova_custom_link_menu_title_2' . $this->config->get('config_language_id'));
		$data['nova_custom_link_menu_url_2'] = $this->config->get('nova_custom_link_menu_url_2');
		
		$data['nova_custom_link_menu_title_3'] = $this->config->get('nova_custom_link_menu_title_3' . $this->config->get('config_language_id'));
		$data['nova_custom_link_menu_url_3'] = $this->config->get('nova_custom_link_menu_url_3');

		$data['nova_custom_link_menu_title_4'] = $this->config->get('nova_custom_link_menu_title_4' . $this->config->get('config_language_id'));
		$data['nova_custom_link_menu_url_4'] = $this->config->get('nova_custom_link_menu_url_4');
		
		$data['nova_custom_link_menu_title_5'] = $this->config->get('nova_custom_link_menu_title_5' . $this->config->get('config_language_id'));
		$data['nova_custom_link_menu_url_5'] = $this->config->get('nova_custom_link_menu_url_5');
		
		$data['nova_custom_link_menu_title_6'] = $this->config->get('nova_custom_link_menu_title_6' . $this->config->get('config_language_id'));
		$data['nova_custom_link_menu_url_6'] = $this->config->get('nova_custom_link_menu_url_6');

		$data['nova_custom_link_menu_title_7'] = $this->config->get('nova_custom_link_menu_title_7' . $this->config->get('config_language_id'));
		$data['nova_custom_link_menu_url_7'] = $this->config->get('nova_custom_link_menu_url_7');

		$data['nova_custom_link_menu_title_8'] = $this->config->get('nova_custom_link_menu_title_8' . $this->config->get('config_language_id'));
		$data['nova_custom_link_menu_url_8'] = $this->config->get('nova_custom_link_menu_url_8');

		$data['nova_custom_link_menu_title_9'] = $this->config->get('nova_custom_link_menu_title_9' . $this->config->get('config_language_id'));
		$data['nova_custom_link_menu_url_9'] = $this->config->get('nova_custom_link_menu_url_9');
		
		$data['nova_custom_link_menu_title_10'] = $this->config->get('nova_custom_link_menu_title_10' . $this->config->get('config_language_id'));
		$data['nova_custom_link_menu_url_10'] = $this->config->get('nova_custom_link_menu_url_10');

		// * * //
		
		$data['nova_custom_menu1_menu_title_1'] = $this->config->get('nova_custom_menu1_menu_title_1' . $this->config->get('config_language_id'));
		
		$data['nova_custom_menu1_menu_link_1'] = $this->config->get('nova_custom_menu1_menu_link_1' . $this->config->get('config_language_id'));
		$data['nova_custom_menu1_menu_link_2'] = $this->config->get('nova_custom_menu1_menu_link_2' . $this->config->get('config_language_id'));
		$data['nova_custom_menu1_menu_link_3'] = $this->config->get('nova_custom_menu1_menu_link_3' . $this->config->get('config_language_id'));
		$data['nova_custom_menu1_menu_link_4'] = $this->config->get('nova_custom_menu1_menu_link_4' . $this->config->get('config_language_id'));
		$data['nova_custom_menu1_menu_link_5'] = $this->config->get('nova_custom_menu1_menu_link_5' . $this->config->get('config_language_id'));
		$data['nova_custom_menu1_menu_link_6'] = $this->config->get('nova_custom_menu1_menu_link_6' . $this->config->get('config_language_id'));
		$data['nova_custom_menu1_menu_link_7'] = $this->config->get('nova_custom_menu1_menu_link_7' . $this->config->get('config_language_id'));
		$data['nova_custom_menu1_menu_link_8'] = $this->config->get('nova_custom_menu1_menu_link_8' . $this->config->get('config_language_id'));
		$data['nova_custom_menu1_menu_link_9'] = $this->config->get('nova_custom_menu1_menu_link_9' . $this->config->get('config_language_id'));
		$data['nova_custom_menu1_menu_link_10'] = $this->config->get('nova_custom_menu1_menu_link_10' . $this->config->get('config_language_id'));
		
		//
		
		$data['nova_custom_menu2_menu_title_1'] = $this->config->get('nova_custom_menu2_menu_title_1' . $this->config->get('config_language_id'));
		
		$data['nova_custom_menu2_menu_link_1'] = $this->config->get('nova_custom_menu2_menu_link_1' . $this->config->get('config_language_id'));
		$data['nova_custom_menu2_menu_link_2'] = $this->config->get('nova_custom_menu2_menu_link_2' . $this->config->get('config_language_id'));
		$data['nova_custom_menu2_menu_link_3'] = $this->config->get('nova_custom_menu2_menu_link_3' . $this->config->get('config_language_id'));
		$data['nova_custom_menu2_menu_link_4'] = $this->config->get('nova_custom_menu2_menu_link_4' . $this->config->get('config_language_id'));
		$data['nova_custom_menu2_menu_link_5'] = $this->config->get('nova_custom_menu2_menu_link_5' . $this->config->get('config_language_id'));
		$data['nova_custom_menu2_menu_link_6'] = $this->config->get('nova_custom_menu2_menu_link_6' . $this->config->get('config_language_id'));
		$data['nova_custom_menu2_menu_link_7'] = $this->config->get('nova_custom_menu2_menu_link_7' . $this->config->get('config_language_id'));
		$data['nova_custom_menu2_menu_link_8'] = $this->config->get('nova_custom_menu2_menu_link_8' . $this->config->get('config_language_id'));
		$data['nova_custom_menu2_menu_link_9'] = $this->config->get('nova_custom_menu2_menu_link_9' . $this->config->get('config_language_id'));
		$data['nova_custom_menu2_menu_link_10'] = $this->config->get('nova_custom_menu2_menu_link_10' . $this->config->get('config_language_id'));

		//
		
		$data['nova_custom_menu3_menu_title_1'] = $this->config->get('nova_custom_menu3_menu_title_1' . $this->config->get('config_language_id'));
		
		$data['nova_custom_menu3_menu_link_1'] = $this->config->get('nova_custom_menu3_menu_link_1' . $this->config->get('config_language_id'));
		$data['nova_custom_menu3_menu_link_2'] = $this->config->get('nova_custom_menu3_menu_link_2' . $this->config->get('config_language_id'));
		$data['nova_custom_menu3_menu_link_3'] = $this->config->get('nova_custom_menu3_menu_link_3' . $this->config->get('config_language_id'));
		$data['nova_custom_menu3_menu_link_4'] = $this->config->get('nova_custom_menu3_menu_link_4' . $this->config->get('config_language_id'));
		$data['nova_custom_menu3_menu_link_5'] = $this->config->get('nova_custom_menu3_menu_link_5' . $this->config->get('config_language_id'));
		$data['nova_custom_menu3_menu_link_6'] = $this->config->get('nova_custom_menu3_menu_link_6' . $this->config->get('config_language_id'));
		$data['nova_custom_menu3_menu_link_7'] = $this->config->get('nova_custom_menu3_menu_link_7' . $this->config->get('config_language_id'));
		$data['nova_custom_menu3_menu_link_8'] = $this->config->get('nova_custom_menu3_menu_link_8' . $this->config->get('config_language_id'));
		$data['nova_custom_menu3_menu_link_9'] = $this->config->get('nova_custom_menu3_menu_link_9' . $this->config->get('config_language_id'));
		$data['nova_custom_menu3_menu_link_10'] = $this->config->get('nova_custom_menu3_menu_link_10' . $this->config->get('config_language_id'));
		
		//
		
		$data['nova_title_custom_block_menu_form_1'] = $this->config->get('nova_title_custom_block_menu_form_1' . $this->config->get('config_language_id'));
		$data['nova_text_custom_block_menu_form_1'] = $this->config->get('nova_text_custom_block_menu_form_1' . $this->config->get('config_language_id'));
		
		$data['nova_title_custom_block_menu_form_2'] = $this->config->get('nova_title_custom_block_menu_form_2' . $this->config->get('config_language_id'));
		$data['nova_text_custom_block_menu_form_2'] = $this->config->get('nova_text_custom_block_menu_form_2' . $this->config->get('config_language_id'));
		
		$data['nova_title_custom_block_menu_form_3'] = $this->config->get('nova_title_custom_block_menu_form_3' . $this->config->get('config_language_id'));
		$data['nova_text_custom_block_menu_form_3'] = $this->config->get('nova_text_custom_block_menu_form_3' . $this->config->get('config_language_id'));


		$status = true;

		if (isset($this->request->server['HTTP_USER_AGENT'])) {
			$robots = explode("\n", str_replace(array("\r\n", "\r"), "\n", trim($this->config->get('config_robots'))));

			foreach ($robots as $robot) {
				if ($robot && strpos($this->request->server['HTTP_USER_AGENT'], trim($robot)) !== false) {
					$status = false;

					break;
				}
			}
		}

		// Menu
		$this->load->model('catalog/category');
		$this->load->model('catalog/product');
		
		$this->load->model('catalog/manufacturer');
		$this->load->model('tool/image');
		$results = $this->model_catalog_manufacturer->getManufacturers();
		foreach ($results as $result) {	
			if ($result['image']) {
						$image = $result['image'];
					} else {
						$image = 'no_image.jpg';
					}			
			$data['manufacturers'][] = array(
				'name' => $result['name'],
				'image' => $this->model_tool_image->resize($image, 170, 72),
				'href' => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $result['manufacturer_id'])
			);
		}		

		$data['categories'] = array();
		$categories = $this->model_catalog_category->getCategories(0);

		foreach ($categories as $category) {
			if ($category['top']) {
				// Level 2
				$children_data = array();

				$children = $this->model_catalog_category->getCategories($category['category_id']);

				foreach ($children as $child) {
					$filter_data = array(
						'filter_category_id'  => $child['category_id'],
						'filter_sub_category' => true
					);
					
					
					// Level 2
					$children_level_2 = $this->model_catalog_category->getCategories($child['category_id']);
					$children_data_level_2 = array();
					foreach ($children_level_2 as $child_level_2) {
							$data_level_2 = array(
									'filter_category_id'  => $child_level_2['category_id'],
									'filter_sub_category' => true
							);
							
							$children_data_level_2[] = array(
									'name'  =>  $child_level_2['name'],
									'href'  => $this->url->link('product/category', 'path=' . $child['category_id'] . '_' . $child_level_2['category_id']),
									'id' => $category['category_id']. '_' . $child['category_id']. '_' . $child_level_2['category_id']
							);
					}
					

					$children_data[] = array(
						'name'  => $child['name'] . ($this->config->get('config_product_count') ? '' : ''),
						'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id']),
						'id' => $category['category_id']. '_' . $child['category_id'],
						'children_level_2' => $children_data_level_2,
					);
				}

				// Level 1
				$this->load->model('tool/image');
				$image = empty($category['image']) ? 'no_image.jpg' : $category['image'];
                $thumb = $this->model_tool_image->resize($image, 100, 100);
				$data['categories'][] = array(
					'name'     => $category['name'],
					'children' => $children_data,
					'thumb'    => $thumb,
					'column'   => $category['column'] ? $category['column'] : 1,
					'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
				
			}
		}

		$data['language'] = $this->load->controller('common/language');
		$data['currency'] = $this->load->controller('common/currency');
		$data['search'] = $this->load->controller('common/search');
		$data['cart'] = $this->load->controller('common/cart');

		// For page specific css
		if (isset($this->request->get['route'])) {
			if (isset($this->request->get['product_id'])) {
				$class = '-' . $this->request->get['product_id'];
			} elseif (isset($this->request->get['path'])) {
				$class = '-' . $this->request->get['path'];
			} elseif (isset($this->request->get['manufacturer_id'])) {
				$class = '-' . $this->request->get['manufacturer_id'];
			} else {
				$class = '';
			}

			$data['class'] = str_replace('/', '-', $this->request->get['route']) . $class;
		} else {
			$data['class'] = 'common-home';
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/header.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/common/header.tpl', $data);
		} else {
			return $this->load->view('default/template/common/header.tpl', $data);
		}
	}
}