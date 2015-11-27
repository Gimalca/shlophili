<?php
class ControllerModulenova extends Controller {
	private $error = array();
	private $_name = 'nova';	
	
	public function index() {
		
		$language = $this->language->load('module/nova');
		
		$this->document->addStyle('view/stylesheet/nova.css');
        $this->document->setTitle($this->language->get('heading_title'));
		
        $this->load->model('setting/setting');
        $this->load->model('tool/image');
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validate())) {
			$this->model_setting_setting->editSetting('nova', $this->request->post);		
			
			$this->session->data['success'] = $this->language->get('text_success');		
		
			$this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}	
	
        $data['text_image_manager'] = 'Image manager';
        $data['token'] = $this->session->data['token']; 
			
		
		$data['heading_title'] = $this->language->get('heading_title');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');
		$data['entry_layout'] = $this->language->get('entry_layout');
		$data['entry_position'] = $this->language->get('entry_position');		
		$data['entry_status'] = $this->language->get('entry_status');	
		$data['text_no'] = $this->language->get('text_no');
		$data['text_yes'] = $this->language->get('text_yes');
		$data['text_module'] = $this->language->get('text_module');
		$data['text_success'] = $this->language->get('text_success');
		$data['text_module_settings'] = $this->language->get('text_module_settings');
		$data['text_select'] = $this->language->get('text_select');
		$data['text_clear'] = $this->language->get('text_clear');
		$data['text_left'] = $this->language->get('text_left');
		$data['text_right'] = $this->language->get('text_right');
		$data['text_title'] = $this->language->get('text_title');
		$data['text_subtitle'] = $this->language->get('text_subtitle');
		$data['text_show'] = $this->language->get('text_show');
		$data['text_size'] = $this->language->get('text_size');
		$data['text_style'] = $this->language->get('text_style');
		$data['text_color'] = $this->language->get('text_color');
		$data['text_content'] = $this->language->get('text_content');
		$data['text_carousel'] = $this->language->get('text_carousel');
		$data['text_slider'] = $this->language->get('text_slider');
		$data['text_nova'] = $this->language->get('text_nova');
		$data['text_opencart'] = $this->language->get('text_opencart');
		$data['text_vertical'] = $this->language->get('text_vertical');
		$data['text_horizontal'] = $this->language->get('text_horizontal');
		$data['text_accordion'] = $this->language->get('text_accordion');
		$data['text_lightbox'] = $this->language->get('text_lightbox');
		$data['text_cloud_zoom'] = $this->language->get('text_cloud_zoom');
		$data['text_brand_name'] = $this->language->get('text_brand_name');
		$data['text_brand_logo'] = $this->language->get('text_brand_logo');
		$data['text_brand_logo_name'] = $this->language->get('text_brand_logo_name');
		$data['text_boxed'] = $this->language->get('text_boxed');
		$data['text_full_width'] = $this->language->get('text_full_width');
		$data['text_solid'] = $this->language->get('text_solid');
		$data['text_dotted'] = $this->language->get('text_dotted');
		$data['text_dashed'] = $this->language->get('text_dashed');
		$data['text_normal'] = $this->language->get('text_normal');
		$data['text_bold'] = $this->language->get('text_bold');
		$data['text_weight'] = $this->language->get('text_weight');
		$data['text_uppercase'] = $this->language->get('text_uppercase');
		$data['text_text'] = $this->language->get('text_text');
		$data['text_icon'] = $this->language->get('text_icon');
		$data['text_icon_c'] = $this->language->get('text_icon_c');
		$data['text_grid'] = $this->language->get('text_grid');
		$data['text_list'] = $this->language->get('text_list');
		$data['text_position'] = $this->language->get('text_position');
		$data['text_repeat'] = $this->language->get('text_repeat');
		$data['text_attachment'] = $this->language->get('text_attachment');
		$data['text_position_t'] = $this->language->get('text_position_t');
		$data['text_position_tc'] = $this->language->get('text_position_tc');
		$data['text_position_tl'] = $this->language->get('text_position_tl');
		$data['text_position_tr'] = $this->language->get('text_position_tr');
		$data['text_position_c'] = $this->language->get('text_position_c');
		$data['text_position_l'] = $this->language->get('text_position_l');
		$data['text_position_r'] = $this->language->get('text_position_r');
		$data['text_position_b'] = $this->language->get('text_position_b');
		$data['text_position_bc'] = $this->language->get('text_position_bc');
		$data['text_position_bl'] = $this->language->get('text_position_bl');
		$data['text_position_br'] = $this->language->get('text_position_br');
		$data['text_repeat_nr'] = $this->language->get('text_repeat_nr');
		$data['text_repeat_r'] = $this->language->get('text_repeat_r');
		$data['text_repeat_rx'] = $this->language->get('text_repeat_rx');
		$data['text_repeat_ry'] = $this->language->get('text_repeat_ry');
		$data['text_attachment_s'] = $this->language->get('text_attachment_s');
		$data['text_attachment_f'] = $this->language->get('text_attachment_f');
		$data['text_px'] = $this->language->get('text_px');
		$data['text_tself'] = $this->language->get('text_tself');
		$data['text_tblank'] = $this->language->get('text_tblank');
		$data['text_show_bg_color'] = $this->language->get('text_show_bg_color');
		$data['text_bg_color'] = $this->language->get('text_bg_color');
		$data['text_bg_color_hover'] = $this->language->get('text_bg_color_hover');
		$data['text_radius'] = $this->language->get('text_radius');
		$data['text_shadow'] = $this->language->get('text_shadow');
		$data['text_separator'] = $this->language->get('text_separator');
		$data['text_separator_status'] = $this->language->get('text_separator_status');
		$data['text_separator_color'] = $this->language->get('text_separator_color');
		$data['text_separator_style'] = $this->language->get('text_separator_style');
		$data['text_separator_size'] = $this->language->get('text_separator_size');
		$data['text_border'] = $this->language->get('text_border');
		$data['text_show_border'] = $this->language->get('text_show_border');
		$data['text_show_border_bottom'] = $this->language->get('text_show_border_bottom');
		$data['text_border_color'] = $this->language->get('text_border_color');
		$data['text_border_color_hover'] = $this->language->get('text_border_color_hover');
		$data['text_border_size'] = $this->language->get('text_border_size');
		$data['text_border_style'] = $this->language->get('text_border_style');
		$data['text_border_top'] = $this->language->get('text_border_top');
		$data['text_show_border_top'] = $this->language->get('text_show_border_top');
		$data['text_border_top_style'] = $this->language->get('text_border_top_style');
		$data['text_border_top_size'] = $this->language->get('text_border_top_size');
		$data['text_border_top_color'] = $this->language->get('text_border_top_color');
		$data['text_border_top_color_hover'] = $this->language->get('text_border_top_color_hover');
		$data['text_border_bottom'] = $this->language->get('text_border_bottom');
		$data['text_border_bottom_style'] = $this->language->get('text_border_bottom_style');
		$data['text_border_bottom_size'] = $this->language->get('text_border_bottom_size');
		$data['text_border_bottom_color'] = $this->language->get('text_border_bottom_color');
		$data['text_border_bottom_color_hover'] = $this->language->get('text_border_bottom_color_hover');
		$data['text_titles_border_bottom'] = $this->language->get('text_titles_border_bottom');
		$data['text_titles_color'] = $this->language->get('text_titles_color');
		$data['text_text_color'] = $this->language->get('text_text_color');
		$data['text_text_color_hover'] = $this->language->get('text_text_color_hover');
		$data['text_link_color'] = $this->language->get('text_link_color');
		$data['text_link_color_hover'] = $this->language->get('text_link_color_hover');
		$data['text_facebook_find_id'] = $this->language->get('text_facebook_find_id');
		$data['text_google_font_collection'] = $this->language->get('text_google_font_collection');
		$data['text_twitter_find_widget_id'] = $this->language->get('text_twitter_find_widget_id');
		$data['entry_skin'] = $this->language->get('entry_skin');
		$data['entry_layout_s'] = $this->language->get('entry_layout_s');
		$data['error_permission'] = $this->language->get('error_permission');
		

        $config_data = array(
	
		'nova_layout_style',
		//
		
		'nova_home_link_status',
		'nova_home_link_style',
		
		//
		
		'nova_categories_status',
		'nova_categories_style',
		'nova_categories_icon_status',
		'nova_categories_row',
		'nova_categories_level',
		
		//
		
		'nova_brands_status',
		'nova_brands_style',
		'nova_brands_row',
		
		//
		
		'nova_menu_custom_link_status',
		'nova_custom_link_menu_check_status_1',
		'nova_custom_link_menu_title_1',
		'nova_custom_link_menu_url_1',
		'nova_custom_link_menu_target_1',
		
		'nova_custom_link_menu_check_status_2',
		'nova_custom_link_menu_title_2',
		'nova_custom_link_menu_url_2',
		'nova_custom_link_menu_target_2',
		
		'nova_custom_link_menu_check_status_3',
		'nova_custom_link_menu_title_3',
		'nova_custom_link_menu_url_3',
		'nova_custom_link_menu_target_3',
		
		'nova_custom_link_menu_check_status_4',
		'nova_custom_link_menu_title_4',
		'nova_custom_link_menu_url_4',
		'nova_custom_link_menu_target_4',
		
		'nova_custom_link_menu_check_status_5',
		'nova_custom_link_menu_title_5',
		'nova_custom_link_menu_url_5',
		'nova_custom_link_menu_target_5',
		
		'nova_custom_link_menu_check_status_6',
		'nova_custom_link_menu_title_6',
		'nova_custom_link_menu_url_6',
		'nova_custom_link_menu_target_6',
		
		'nova_custom_link_menu_check_status_7',
		'nova_custom_link_menu_title_7',
		'nova_custom_link_menu_url_7',
		'nova_custom_link_menu_target_7',
		
		'nova_custom_link_menu_check_status_8',
		'nova_custom_link_menu_title_8',
		'nova_custom_link_menu_url_8',
		'nova_custom_link_menu_target_8',
		
		'nova_custom_link_menu_check_status_9',
		'nova_custom_link_menu_title_9',
		'nova_custom_link_menu_url_9',
		'nova_custom_link_menu_target_9',
		
		'nova_custom_link_menu_check_status_10',
		'nova_custom_link_menu_title_10',
		'nova_custom_link_menu_url_10',
		'nova_custom_link_menu_target_10',
		
		//
		
		'nova_menu_custom_menu1_status',
		'nova_custom_menu1_menu_title_1',
		
		'nova_custom_menu1_menu_check_status_1',
		'nova_custom_menu1_menu_link_1',
		'nova_custom_menu1_menu_url_1',
		'nova_custom_menu1_menu_target_1',
		
		'nova_custom_menu1_menu_check_status_2',
		'nova_custom_menu1_menu_link_2',
		'nova_custom_menu1_menu_url_2',
		'nova_custom_menu1_menu_target_2',
		
		'nova_custom_menu1_menu_check_status_3',
		'nova_custom_menu1_menu_link_3',
		'nova_custom_menu1_menu_url_3',
		'nova_custom_menu1_menu_target_3',
		
		'nova_custom_menu1_menu_check_status_4',
		'nova_custom_menu1_menu_link_4',
		'nova_custom_menu1_menu_url_4',
		'nova_custom_menu1_menu_target_4',
		
		'nova_custom_menu1_menu_check_status_5',
		'nova_custom_menu1_menu_link_5',
		'nova_custom_menu1_menu_url_5',
		'nova_custom_menu1_menu_target_5',
		
		'nova_custom_menu1_menu_check_status_6',
		'nova_custom_menu1_menu_link_6',
		'nova_custom_menu1_menu_url_6',
		'nova_custom_menu1_menu_target_6',
		
		'nova_custom_menu1_menu_check_status_7',
		'nova_custom_menu1_menu_link_7',
		'nova_custom_menu1_menu_url_7',
		'nova_custom_menu1_menu_target_7',
		
		'nova_custom_menu1_menu_check_status_8',
		'nova_custom_menu1_menu_link_8',
		'nova_custom_menu1_menu_url_8',
		'nova_custom_menu1_menu_target_8',
		
		'nova_custom_menu1_menu_check_status_9',
		'nova_custom_menu1_menu_link_9',
		'nova_custom_menu1_menu_url_9',
		'nova_custom_menu1_menu_target_9',
		
		'nova_custom_menu1_menu_check_status_10',
		'nova_custom_menu1_menu_link_10',
		'nova_custom_menu1_menu_url_10',
		'nova_custom_menu1_menu_target_10',
		
		//
		
		'nova_menu_custom_menu2_status',
		
		'nova_custom_menu2_menu_check_status_1',
		'nova_custom_menu2_menu_link_1',
		'nova_custom_menu2_menu_url_1',
		'nova_custom_menu2_menu_target_1',
		
		'nova_custom_menu2_menu_check_status_2',
		'nova_custom_menu2_menu_link_2',
		'nova_custom_menu2_menu_url_2',
		'nova_custom_menu2_menu_target_2',
		
		'nova_custom_menu2_menu_check_status_3',
		'nova_custom_menu2_menu_link_3',
		'nova_custom_menu2_menu_url_3',
		'nova_custom_menu2_menu_target_3',
		
		'nova_custom_menu2_menu_check_status_4',
		'nova_custom_menu2_menu_link_4',
		'nova_custom_menu2_menu_url_4',
		'nova_custom_menu2_menu_target_4',
		
		'nova_custom_menu2_menu_check_status_5',
		'nova_custom_menu2_menu_link_5',
		'nova_custom_menu2_menu_url_5',
		'nova_custom_menu2_menu_target_5',
		
		'nova_custom_menu2_menu_check_status_6',
		'nova_custom_menu2_menu_link_6',
		'nova_custom_menu2_menu_url_6',
		'nova_custom_menu2_menu_target_6',
		
		'nova_custom_menu2_menu_check_status_7',
		'nova_custom_menu2_menu_link_7',
		'nova_custom_menu2_menu_url_7',
		'nova_custom_menu2_menu_target_7',
		
		'nova_custom_menu2_menu_check_status_8',
		'nova_custom_menu2_menu_link_8',
		'nova_custom_menu2_menu_url_8',
		'nova_custom_menu2_menu_target_8',
		
		'nova_custom_menu2_menu_check_status_9',
		'nova_custom_menu2_menu_link_9',
		'nova_custom_menu2_menu_url_9',
		'nova_custom_menu2_menu_target_9',
		
		'nova_custom_menu2_menu_check_status_10',
		'nova_custom_menu2_menu_link_10',
		'nova_custom_menu2_menu_url_10',
		'nova_custom_menu2_menu_target_10',
		
		//
		
		'nova_menu_custom_menu3_status',
		
		'nova_custom_menu3_menu_check_status_1',
		'nova_custom_menu3_menu_link_1',
		'nova_custom_menu3_menu_url_1',
		'nova_custom_menu3_menu_target_1',
		
		'nova_custom_menu3_menu_check_status_2',
		'nova_custom_menu3_menu_link_2',
		'nova_custom_menu3_menu_url_2',
		'nova_custom_menu3_menu_target_2',
		
		'nova_custom_menu3_menu_check_status_3',
		'nova_custom_menu3_menu_link_3',
		'nova_custom_menu3_menu_url_3',
		'nova_custom_menu3_menu_target_3',
		
		'nova_custom_menu3_menu_check_status_4',
		'nova_custom_menu3_menu_link_4',
		'nova_custom_menu3_menu_url_4',
		'nova_custom_menu3_menu_target_4',
		
		'nova_custom_menu3_menu_check_status_5',
		'nova_custom_menu3_menu_link_5',
		'nova_custom_menu3_menu_url_5',
		'nova_custom_menu3_menu_target_5',
		
		'nova_custom_menu3_menu_check_status_6',
		'nova_custom_menu3_menu_link_6',
		'nova_custom_menu3_menu_url_6',
		'nova_custom_menu3_menu_target_6',
		
		'nova_custom_menu3_menu_check_status_7',
		'nova_custom_menu3_menu_link_7',
		'nova_custom_menu3_menu_url_7',
		'nova_custom_menu3_menu_target_7',
		
		'nova_custom_menu3_menu_check_status_8',
		'nova_custom_menu3_menu_link_8',
		'nova_custom_menu3_menu_url_8',
		'nova_custom_menu3_menu_target_8',
		
		'nova_custom_menu3_menu_check_status_9',
		'nova_custom_menu3_menu_link_9',
		'nova_custom_menu3_menu_url_9',
		'nova_custom_menu3_menu_target_9',
		
		'nova_custom_menu3_menu_check_status_10',
		'nova_custom_menu3_menu_link_10',
		'nova_custom_menu3_menu_url_10',
		'nova_custom_menu3_menu_target_10',
		
		//
		
		'nova_menu_custom_block_status',
		'nova_title_custom_block_menu_form_1',
		'nova_text_custom_block_menu_form_1',
		
		'nova_title_custom_block_menu_form_2',
		'nova_text_custom_block_menu_form_2',
		
		'nova_title_custom_block_menu_form_3',
		'nova_text_custom_block_menu_form_3',
		
		'nova_new_label_product',
		'nova_sale_product_style',
		
		'nova_text_custom_block_menu_form_1',
		'nova_copyright_status',
		'nova_payment_status',
		'nova_payment_checkbox_01',
		'nova_payment_url_01',
		
		'nova_payment_checkbox_02',
		'nova_payment_url_02',
		
		'nova_payment_checkbox_03',
		'nova_payment_url_03',
		
		'nova_payment_checkbox_04',
		'nova_payment_url_04',
		
		'nova_payment_checkbox_05',
		'nova_payment_url_05',
		
		'nova_payment_checkbox_06',
		'nova_payment_url_06',
		
		'nova_payment_checkbox_07',
		'nova_payment_url_07',
		
		'nova_payment_checkbox_08',
		'nova_payment_url_08',
		
		'nova_payment_checkbox_09',
		'nova_payment_url_09',
		
		'nova_payment_checkbox_10',
		'nova_payment_url_10',
		
		'nova_payment_checkbox_11',
		'nova_payment_url_11',
		
		'nova_payment_checkbox_12',
		'nova_payment_url_12',
		
		'nova_payment_checkbox_13',
		'nova_payment_url_13',
		
		'nova_payment_checkbox_14',
		'nova_payment_url_14',
		
		'nova_payment_checkbox_15',
		'nova_payment_url_15',
		
		'nova_product_block_banner_status',
		'nova_text_product_block_banner',
		
		'nova_product_block_tab_status',
		'nova_text_custom_product_tab',
		'nova_title_custom_product_tab',
		
		'nova_social_share_status',
		'nova_text_product_social_share',
		
		'nova_link_label_product_style',
		'nova_quickview_label_product_style',
		'nova_hover_effect_label_product_style',
		
		'nova_background_color_status',		
		'nova_background_color',
		
		'nova_background_color_new_label',
		'nova_text_color_new_label',
		'nova_background_color_sale_label',
		'nova_text_color_sale_label',
		'nova_background_color_quickview',
		'nova_background_color_quickview_hover',
		'nova_text_color_quickview',
		'nova_background_color_detail',
		'nova_background_color_detail_hover',
		'nova_text_color_detail',
		'nova_body_link_color',
		'nova_body_text_color',
		'nova_body_link_color_hover',
		'nova_body_heading_color',
		'nova_body_active_color',
		'nova_button_background_color',
		'nova_button_background_color_hover',
		'nova_text_button_color',
		'nova_footer_background_color',
		'nova_footer_link_color',
		'nova_footer_link_color_hover',
		'nova_text_color_quickview_hover',
		'nova_text_color_detail_hover',
		
		'nova_body_background',
		'nova_background_image_status',
		'nova_body_background_position',
		'nova_body_background_attachment',
		'nova_body_background_repeat',
		
		'nova_show_twitter_box',
		'nova_twitter_name_box_url',
		'nova_twitter_widget_id',
		'nova_twitter_count_column',
		
		'nova_footer_block',
		
        );
        
        foreach ($config_data as $conf) {
            if (isset($this->request->post[$conf])) {
                $data[$conf] = $this->request->post[$conf];
            } else {
                $data[$conf] = $this->config->get($conf);
            }
        }
		
 		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}
		
  		$data['breadcrumbs'] = array();

   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/nova', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$data['tweet_count'] = array(1,2,3,4,5);
		
		// Save Theme Control Panel
		$data['action'] = $this->url->link('module/nova', 'token=' . $this->session->data['token'], 'SSL');
		$data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');	
		
		$this->load->model('localisation/language');
		
		$data['languages'] = $this->model_localisation_language->getLanguages();
		$languages = $this->model_localisation_language->getLanguages();	
		
		foreach ($languages as $language) {
			if (isset($this->request->post['nova_custom_link_menu_title_1' . $language['language_id']])) {
				$data['nova_custom_link_menu_title_1' . $language['language_id']] = $this->request->post['nova_custom_link_menu_title_1' . $language['language_id']];
			} else {
				$data['nova_custom_link_menu_title_1' . $language['language_id']] = $this->config->get('nova_custom_link_menu_title_1' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_link_menu_title_2' . $language['language_id']])) {
				$data['nova_custom_link_menu_title_2' . $language['language_id']] = $this->request->post['nova_custom_link_menu_title_2' . $language['language_id']];
			} else {
				$data['nova_custom_link_menu_title_2' . $language['language_id']] = $this->config->get('nova_custom_link_menu_title_2' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_link_menu_title_3' . $language['language_id']])) {
				$data['nova_custom_link_menu_title_3' . $language['language_id']] = $this->request->post['nova_custom_link_menu_title_3' . $language['language_id']];
			} else {
				$data['nova_custom_link_menu_title_3' . $language['language_id']] = $this->config->get('nova_custom_link_menu_title_3' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_link_menu_title_4' . $language['language_id']])) {
				$data['nova_custom_link_menu_title_4' . $language['language_id']] = $this->request->post['nova_custom_link_menu_title_4' . $language['language_id']];
			} else {
				$data['nova_custom_link_menu_title_4' . $language['language_id']] = $this->config->get('nova_custom_link_menu_title_4' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_link_menu_title_5' . $language['language_id']])) {
				$data['nova_custom_link_menu_title_5' . $language['language_id']] = $this->request->post['nova_custom_link_menu_title_5' . $language['language_id']];
			} else {
				$data['nova_custom_link_menu_title_5' . $language['language_id']] = $this->config->get('nova_custom_link_menu_title_5' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_link_menu_title_6' . $language['language_id']])) {
				$data['nova_custom_link_menu_title_6' . $language['language_id']] = $this->request->post['nova_custom_link_menu_title_6' . $language['language_id']];
			} else {
				$data['nova_custom_link_menu_title_6' . $language['language_id']] = $this->config->get('nova_custom_link_menu_title_6' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_link_menu_title_7' . $language['language_id']])) {
				$data['nova_custom_link_menu_title_7' . $language['language_id']] = $this->request->post['nova_custom_link_menu_title_7' . $language['language_id']];
			} else {
				$data['nova_custom_link_menu_title_7' . $language['language_id']] = $this->config->get('nova_custom_link_menu_title_7' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_link_menu_title_8' . $language['language_id']])) {
				$data['nova_custom_link_menu_title_8' . $language['language_id']] = $this->request->post['nova_custom_link_menu_title_8' . $language['language_id']];
			} else {
				$data['nova_custom_link_menu_title_8' . $language['language_id']] = $this->config->get('nova_custom_link_menu_title_8' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_link_menu_title_9' . $language['language_id']])) {
				$data['nova_custom_link_menu_title_9' . $language['language_id']] = $this->request->post['nova_custom_link_menu_title_9' . $language['language_id']];
			} else {
				$data['nova_custom_link_menu_title_9' . $language['language_id']] = $this->config->get('nova_custom_link_menu_title_9' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_link_menu_title_10' . $language['language_id']])) {
				$data['nova_custom_link_menu_title_10' . $language['language_id']] = $this->request->post['nova_custom_link_menu_title_10' . $language['language_id']];
			} else {
				$data['nova_custom_link_menu_title_10' . $language['language_id']] = $this->config->get('nova_custom_link_menu_title_10' . $language['language_id']);
			}
			
			// * * //
			
			if (isset($this->request->post['nova_custom_menu1_menu_title_1' . $language['language_id']])) {
				$data['nova_custom_menu1_menu_title_1' . $language['language_id']] = $this->request->post['nova_custom_menu1_menu_title_1' . $language['language_id']];
			} else {
				$data['nova_custom_menu1_menu_title_1' . $language['language_id']] = $this->config->get('nova_custom_menu1_menu_title_1' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu1_menu_link_1' . $language['language_id']])) {
				$data['nova_custom_menu1_menu_link_1' . $language['language_id']] = $this->request->post['nova_custom_menu1_menu_link_1' . $language['language_id']];
			} else {
				$data['nova_custom_menu1_menu_link_1' . $language['language_id']] = $this->config->get('nova_custom_menu1_menu_link_1' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu1_menu_link_2' . $language['language_id']])) {
				$data['nova_custom_menu1_menu_link_2' . $language['language_id']] = $this->request->post['nova_custom_menu1_menu_link_2' . $language['language_id']];
			} else {
				$data['nova_custom_menu1_menu_link_2' . $language['language_id']] = $this->config->get('nova_custom_menu1_menu_link_2' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu1_menu_link_3' . $language['language_id']])) {
				$data['nova_custom_menu1_menu_link_3' . $language['language_id']] = $this->request->post['nova_custom_menu1_menu_link_3' . $language['language_id']];
			} else {
				$data['nova_custom_menu1_menu_link_3' . $language['language_id']] = $this->config->get('nova_custom_menu1_menu_link_3' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu1_menu_link_4' . $language['language_id']])) {
				$data['nova_custom_menu1_menu_link_4' . $language['language_id']] = $this->request->post['nova_custom_menu1_menu_link_4' . $language['language_id']];
			} else {
				$data['nova_custom_menu1_menu_link_4' . $language['language_id']] = $this->config->get('nova_custom_menu1_menu_link_4' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu1_menu_link_5' . $language['language_id']])) {
				$data['nova_custom_menu1_menu_link_5' . $language['language_id']] = $this->request->post['nova_custom_menu1_menu_link_5' . $language['language_id']];
			} else {
				$data['nova_custom_menu1_menu_link_5' . $language['language_id']] = $this->config->get('nova_custom_menu1_menu_link_5' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu1_menu_link_6' . $language['language_id']])) {
				$data['nova_custom_menu1_menu_link_6' . $language['language_id']] = $this->request->post['nova_custom_menu1_menu_link_6' . $language['language_id']];
			} else {
				$data['nova_custom_menu1_menu_link_6' . $language['language_id']] = $this->config->get('nova_custom_menu1_menu_link_6' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu1_menu_link_7' . $language['language_id']])) {
				$data['nova_custom_menu1_menu_link_7' . $language['language_id']] = $this->request->post['nova_custom_menu1_menu_link_7' . $language['language_id']];
			} else {
				$data['nova_custom_menu1_menu_link_7' . $language['language_id']] = $this->config->get('nova_custom_menu1_menu_link_7' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu1_menu_link_8' . $language['language_id']])) {
				$data['nova_custom_menu1_menu_link_8' . $language['language_id']] = $this->request->post['nova_custom_menu1_menu_link_8' . $language['language_id']];
			} else {
				$data['nova_custom_menu1_menu_link_8' . $language['language_id']] = $this->config->get('nova_custom_menu1_menu_link_8' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu1_menu_link_9' . $language['language_id']])) {
				$data['nova_custom_menu1_menu_link_9' . $language['language_id']] = $this->request->post['nova_custom_menu1_menu_link_9' . $language['language_id']];
			} else {
				$data['nova_custom_menu1_menu_link_9' . $language['language_id']] = $this->config->get('nova_custom_menu1_menu_link_9' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu1_menu_link_10' . $language['language_id']])) {
				$data['nova_custom_menu1_menu_link_10' . $language['language_id']] = $this->request->post['nova_custom_menu1_menu_link_10' . $language['language_id']];
			} else {
				$data['nova_custom_menu1_menu_link_10' . $language['language_id']] = $this->config->get('nova_custom_menu1_menu_link_10' . $language['language_id']);
			}	
			
			//
			
			if (isset($this->request->post['nova_custom_menu2_menu_title_1' . $language['language_id']])) {
				$data['nova_custom_menu2_menu_title_1' . $language['language_id']] = $this->request->post['nova_custom_menu2_menu_title_1' . $language['language_id']];
			} else {
				$data['nova_custom_menu2_menu_title_1' . $language['language_id']] = $this->config->get('nova_custom_menu2_menu_title_1' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu2_menu_link_1' . $language['language_id']])) {
				$data['nova_custom_menu2_menu_link_1' . $language['language_id']] = $this->request->post['nova_custom_menu2_menu_link_1' . $language['language_id']];
			} else {
				$data['nova_custom_menu2_menu_link_1' . $language['language_id']] = $this->config->get('nova_custom_menu2_menu_link_1' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu2_menu_link_2' . $language['language_id']])) {
				$data['nova_custom_menu2_menu_link_2' . $language['language_id']] = $this->request->post['nova_custom_menu2_menu_link_2' . $language['language_id']];
			} else {
				$data['nova_custom_menu2_menu_link_2' . $language['language_id']] = $this->config->get('nova_custom_menu2_menu_link_2' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu2_menu_link_3' . $language['language_id']])) {
				$data['nova_custom_menu2_menu_link_3' . $language['language_id']] = $this->request->post['nova_custom_menu2_menu_link_3' . $language['language_id']];
			} else {
				$data['nova_custom_menu2_menu_link_3' . $language['language_id']] = $this->config->get('nova_custom_menu2_menu_link_3' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu2_menu_link_4' . $language['language_id']])) {
				$data['nova_custom_menu2_menu_link_4' . $language['language_id']] = $this->request->post['nova_custom_menu2_menu_link_4' . $language['language_id']];
			} else {
				$data['nova_custom_menu2_menu_link_4' . $language['language_id']] = $this->config->get('nova_custom_menu2_menu_link_4' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu2_menu_link_5' . $language['language_id']])) {
				$data['nova_custom_menu2_menu_link_5' . $language['language_id']] = $this->request->post['nova_custom_menu2_menu_link_5' . $language['language_id']];
			} else {
				$data['nova_custom_menu2_menu_link_5' . $language['language_id']] = $this->config->get('nova_custom_menu2_menu_link_5' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu2_menu_link_6' . $language['language_id']])) {
				$data['nova_custom_menu2_menu_link_6' . $language['language_id']] = $this->request->post['nova_custom_menu2_menu_link_6' . $language['language_id']];
			} else {
				$data['nova_custom_menu2_menu_link_6' . $language['language_id']] = $this->config->get('nova_custom_menu2_menu_link_6' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu2_menu_link_7' . $language['language_id']])) {
				$data['nova_custom_menu2_menu_link_7' . $language['language_id']] = $this->request->post['nova_custom_menu2_menu_link_7' . $language['language_id']];
			} else {
				$data['nova_custom_menu2_menu_link_7' . $language['language_id']] = $this->config->get('nova_custom_menu2_menu_link_7' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu2_menu_link_8' . $language['language_id']])) {
				$data['nova_custom_menu2_menu_link_8' . $language['language_id']] = $this->request->post['nova_custom_menu2_menu_link_8' . $language['language_id']];
			} else {
				$data['nova_custom_menu2_menu_link_8' . $language['language_id']] = $this->config->get('nova_custom_menu2_menu_link_8' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu2_menu_link_9' . $language['language_id']])) {
				$data['nova_custom_menu2_menu_link_9' . $language['language_id']] = $this->request->post['nova_custom_menu2_menu_link_9' . $language['language_id']];
			} else {
				$data['nova_custom_menu2_menu_link_9' . $language['language_id']] = $this->config->get('nova_custom_menu2_menu_link_9' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu2_menu_link_10' . $language['language_id']])) {
				$data['nova_custom_menu2_menu_link_10' . $language['language_id']] = $this->request->post['nova_custom_menu2_menu_link_10' . $language['language_id']];
			} else {
				$data['nova_custom_menu2_menu_link_10' . $language['language_id']] = $this->config->get('nova_custom_menu2_menu_link_10' . $language['language_id']);
			}
			
			//
			
			if (isset($this->request->post['nova_custom_menu3_menu_title_1' . $language['language_id']])) {
				$data['nova_custom_menu3_menu_title_1' . $language['language_id']] = $this->request->post['nova_custom_menu3_menu_title_1' . $language['language_id']];
			} else {
				$data['nova_custom_menu3_menu_title_1' . $language['language_id']] = $this->config->get('nova_custom_menu3_menu_title_1' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu3_menu_link_1' . $language['language_id']])) {
				$data['nova_custom_menu3_menu_link_1' . $language['language_id']] = $this->request->post['nova_custom_menu3_menu_link_1' . $language['language_id']];
			} else {
				$data['nova_custom_menu3_menu_link_1' . $language['language_id']] = $this->config->get('nova_custom_menu3_menu_link_1' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu3_menu_link_2' . $language['language_id']])) {
				$data['nova_custom_menu3_menu_link_2' . $language['language_id']] = $this->request->post['nova_custom_menu3_menu_link_2' . $language['language_id']];
			} else {
				$data['nova_custom_menu3_menu_link_2' . $language['language_id']] = $this->config->get('nova_custom_menu3_menu_link_2' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu3_menu_link_3' . $language['language_id']])) {
				$data['nova_custom_menu3_menu_link_3' . $language['language_id']] = $this->request->post['nova_custom_menu3_menu_link_3' . $language['language_id']];
			} else {
				$data['nova_custom_menu3_menu_link_3' . $language['language_id']] = $this->config->get('nova_custom_menu3_menu_link_3' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu3_menu_link_4' . $language['language_id']])) {
				$data['nova_custom_menu3_menu_link_4' . $language['language_id']] = $this->request->post['nova_custom_menu3_menu_link_4' . $language['language_id']];
			} else {
				$data['nova_custom_menu3_menu_link_4' . $language['language_id']] = $this->config->get('nova_custom_menu3_menu_link_4' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu3_menu_link_5' . $language['language_id']])) {
				$data['nova_custom_menu3_menu_link_5' . $language['language_id']] = $this->request->post['nova_custom_menu3_menu_link_5' . $language['language_id']];
			} else {
				$data['nova_custom_menu3_menu_link_5' . $language['language_id']] = $this->config->get('nova_custom_menu3_menu_link_5' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu3_menu_link_6' . $language['language_id']])) {
				$data['nova_custom_menu3_menu_link_6' . $language['language_id']] = $this->request->post['nova_custom_menu3_menu_link_6' . $language['language_id']];
			} else {
				$data['nova_custom_menu3_menu_link_6' . $language['language_id']] = $this->config->get('nova_custom_menu3_menu_link_6' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu3_menu_link_7' . $language['language_id']])) {
				$data['nova_custom_menu3_menu_link_7' . $language['language_id']] = $this->request->post['nova_custom_menu3_menu_link_7' . $language['language_id']];
			} else {
				$data['nova_custom_menu3_menu_link_7' . $language['language_id']] = $this->config->get('nova_custom_menu3_menu_link_7' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu3_menu_link_8' . $language['language_id']])) {
				$data['nova_custom_menu3_menu_link_8' . $language['language_id']] = $this->request->post['nova_custom_menu3_menu_link_8' . $language['language_id']];
			} else {
				$data['nova_custom_menu3_menu_link_8' . $language['language_id']] = $this->config->get('nova_custom_menu3_menu_link_8' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu3_menu_link_9' . $language['language_id']])) {
				$data['nova_custom_menu3_menu_link_9' . $language['language_id']] = $this->request->post['nova_custom_menu3_menu_link_9' . $language['language_id']];
			} else {
				$data['nova_custom_menu3_menu_link_9' . $language['language_id']] = $this->config->get('nova_custom_menu3_menu_link_9' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_custom_menu3_menu_link_10' . $language['language_id']])) {
				$data['nova_custom_menu3_menu_link_10' . $language['language_id']] = $this->request->post['nova_custom_menu3_menu_link_10' . $language['language_id']];
			} else {
				$data['nova_custom_menu3_menu_link_10' . $language['language_id']] = $this->config->get('nova_custom_menu3_menu_link_10' . $language['language_id']);
			}	
			
			//
			
			if (isset($this->request->post['nova_title_custom_block_menu_form_1' . $language['language_id']])) {
				$data['nova_title_custom_block_menu_form_1' . $language['language_id']] = $this->request->post['nova_title_custom_block_menu_form_1' . $language['language_id']];
			} else {
				$data['nova_title_custom_block_menu_form_1' . $language['language_id']] = $this->config->get('nova_title_custom_block_menu_form_1' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_text_custom_block_menu_form_1' . $language['language_id']])) {
				$data['nova_text_custom_block_menu_form_1' . $language['language_id']] = $this->request->post['nova_text_custom_block_menu_form_1' . $language['language_id']];
			} else {
				$data['nova_text_custom_block_menu_form_1' . $language['language_id']] = $this->config->get('nova_text_custom_block_menu_form_1' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_title_custom_block_menu_form_2' . $language['language_id']])) {
				$data['nova_title_custom_block_menu_form_2' . $language['language_id']] = $this->request->post['nova_title_custom_block_menu_form_2' . $language['language_id']];
			} else {
				$data['nova_title_custom_block_menu_form_2' . $language['language_id']] = $this->config->get('nova_title_custom_block_menu_form_2' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_text_custom_block_menu_form_2' . $language['language_id']])) {
				$data['nova_text_custom_block_menu_form_2' . $language['language_id']] = $this->request->post['nova_text_custom_block_menu_form_2' . $language['language_id']];
			} else {
				$data['nova_text_custom_block_menu_form_2' . $language['language_id']] = $this->config->get('nova_text_custom_block_menu_form_2' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_title_custom_block_menu_form_3' . $language['language_id']])) {
				$data['nova_title_custom_block_menu_form_3' . $language['language_id']] = $this->request->post['nova_title_custom_block_menu_form_3' . $language['language_id']];
			} else {
				$data['nova_title_custom_block_menu_form_3' . $language['language_id']] = $this->config->get('nova_title_custom_block_menu_form_3' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_text_custom_block_menu_form_3' . $language['language_id']])) {
				$data['nova_text_custom_block_menu_form_3' . $language['language_id']] = $this->request->post['nova_text_custom_block_menu_form_3' . $language['language_id']];
			} else {
				$data['nova_text_custom_block_menu_form_3' . $language['language_id']] = $this->config->get('nova_text_custom_block_menu_form_3' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_text_custom_block_copyright' . $language['language_id']])) {
				$data['nova_text_custom_block_copyright' . $language['language_id']] = $this->request->post['nova_text_custom_block_copyright' . $language['language_id']];
			} else {
				$data['nova_text_custom_block_copyright' . $language['language_id']] = $this->config->get('nova_text_custom_block_copyright' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_text_product_block_banner' . $language['language_id']])) {
				$data['nova_text_product_block_banner' . $language['language_id']] = $this->request->post['nova_text_product_block_banner' . $language['language_id']];
			} else {
				$data['nova_text_product_block_banner' . $language['language_id']] = $this->config->get('nova_text_product_block_banner' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_title_custom_product_tab' . $language['language_id']])) {
				$data['nova_title_custom_product_tab' . $language['language_id']] = $this->request->post['nova_title_custom_product_tab' . $language['language_id']];
			} else {
				$data['nova_title_custom_product_tab' . $language['language_id']] = $this->config->get('nova_title_custom_product_tab' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_text_custom_product_tab' . $language['language_id']])) {
				$data['nova_text_custom_product_tab' . $language['language_id']] = $this->request->post['nova_text_custom_product_tab' . $language['language_id']];
			} else {
				$data['nova_text_custom_product_tab' . $language['language_id']] = $this->config->get('nova_text_custom_product_tab' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_text_product_social_share' . $language['language_id']])) {
				$data['nova_text_product_social_share' . $language['language_id']] = $this->request->post['nova_text_product_social_share' . $language['language_id']];
			} else {
				$data['nova_text_product_social_share' . $language['language_id']] = $this->config->get('nova_text_product_social_share' . $language['language_id']);
			}
			
			if (isset($this->request->post['nova_text_custom_block_footer' . $language['language_id']])) {
				$data['nova_text_custom_block_footer' . $language['language_id']] = $this->request->post['nova_text_custom_block_footer' . $language['language_id']];
			} else {
				$data['nova_text_custom_block_footer' . $language['language_id']] = $this->config->get('nova_text_custom_block_footer' . $language['language_id']);
			}
					
		}	

		$this->template = 'module/nova.tpl';
		$this->children = array(
			'common/header',
			'common/footer',
		);
				
		$color_schema  = $this->config->get('color_schema');

		if(isset($color_schema)&&(!empty( $color_schema))) :
 
		$data['color_schema'] = json_decode($color_schema, true);
		
		else:
		
		
		$options_jsonn = json_encode($color_schema);
		
		$this->model_setting_setting->editSetting('color_schema',array('color_schema'=>$options_jsonn ));		

		$color_schema  = $this->config->get('color_schema');
		
		$data['color_schema'] = json_decode($color_schema, true);
		

		endif;
		
		// No image
		$this->load->model('tool/image');
		$data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);

		
		$data['header'] = $this->load->controller('common/header');
		$data['menu'] = $this->load->controller('common/menu');
		$data['footer'] = $this->load->controller('common/footer');
		$data['profile'] = $this->load->controller('common/profile');
		$data['stats'] = $this->load->controller('common/stats');
				
		$this->response->setOutput($this->load->view('module/nova.tpl', $data));
	}
		
	private function validate() {
		if (!$this->user->hasPermission('modify', 'module/nova')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->error) {
			return TRUE;
		} else {
			return FALSE;
		}	
	}
}
?>