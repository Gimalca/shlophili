<?php echo $header; ?>

<?php
	if(empty($nova_background_color)) $nova_background_color ="#444444";
	if(empty($nova_background_color_new_label)) $nova_background_color_new_label ="#00b06c";
	if(empty($nova_text_color_new_label)) $nova_text_color_new_label ="#ffffff";
	if(empty($nova_background_color_sale_label)) $nova_background_color_sale_label ="#fdaf08";
	if(empty($nova_text_color_sale_label)) $nova_text_color_sale_label ="#202020";
	if(empty($nova_background_color_quickview)) $nova_background_color_quickview ="#ffffff";
	if(empty($nova_background_color_quickview_hover)) $nova_background_color_quickview_hover ="#00b06c";
	if(empty($nova_text_color_quickview)) $nova_text_color_quickview ="#202020";
	if(empty($nova_background_color_detail)) $nova_background_color_detail ="#ffffff";
	if(empty($nova_background_color_detail_hover)) $nova_background_color_detail_hover ="#00b06c";
	if(empty($nova_text_color_detail)) $nova_text_color_detail ="#202020";
	if(empty($nova_body_heading_color)) $nova_body_heading_color ="#202020";
	if(empty($nova_body_link_color_hover)) $nova_body_link_color_hover ="#00b06c";
	if(empty($nova_body_text_color)) $nova_body_text_color ="#202020";
	if(empty($nova_body_link_color)) $nova_body_link_color ="#666";
	if(empty($nova_body_active_color)) $nova_body_active_color ="#00b06c";
	if(empty($nova_button_background_color)) $nova_button_background_color ="#202020";
	if(empty($nova_button_background_color_hover)) $nova_button_background_color_hover ="#00b06c";
	if(empty($nova_text_button_color)) $nova_text_button_color ="#ffffff";
	if(empty($nova_footer_background_color)) $nova_footer_background_color ="#202020";
	if(empty($nova_footer_link_color)) $nova_footer_link_color ="#ffffff";
	if(empty($nova_footer_link_color_hover)) $nova_footer_link_color_hover ="#00b06c";
	if(empty($nova_text_color_quickview_hover)) $nova_text_color_quickview_hover ="#ffffff";
	if(empty($nova_text_color_detail_hover)) $nova_text_color_detail_hover ="#ffffff";
	
	if(empty($nova_new_label_product)) $nova_new_label_product ="30";
?>

<script type="text/javascript" src="https://jqueryjs.googlecode.com/svn-history/r6125/trunk/plugins/cookie/jquery.cookie.js"></script>
<script type="text/javascript">
$.fn.tabs = function() {
	var selector = this;
	
	this.each(function() {
		var obj = $(this); 
		
		$(obj.attr('href')).hide();
		
		$(obj).click(function() {
			$(selector).removeClass('selected');
			
			$(selector).each(function(i, element) {
				$($(element).attr('href')).hide();
			});
			
			$(this).addClass('selected');
			
			$($(this).attr('href')).show();
			
			return false;
		});
	});

	$(this).show();
	
	$(this).first().click();
};
</script>

<nav id="column-left"><?php echo $profile; ?><?php echo $menu; ?><?php echo $stats; ?></nav>

<div id="content">
	<div class="theme-panel">
		<div class="breadcrumb">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
			<?php } ?>
		</div>
		<?php if ($error_warning) { ?>
			<div class="warning"><?php echo $error_warning; ?></div>
		<?php } ?>
	    
		<div class="box">
			<div class="heading">
				<h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
				<div class="buttons">
			        <a onclick="$('#form').submit();" class="button" style="padding: 6px 12px 6px 15px; margin-right: 5px;"><?php echo $button_save; ?></a>
			        <a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a>
		        </div>
			</div>
		
			<div class="content">    
				<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
					
			        <div id="nova_setting" class="htabs">
						<a href="#nova-tab-theme-option">Theme Options</a>
						<a href="#nova-tab-theme-color">Theme Color</a>                                     
					</div>
						
						<!-- Tab theme option -->
						<div id="nova-tab-theme-option">   
        
					        <div id="nova-tab-theme-option-page" class="vtabs">
					        	 <a href="#nova-tab-theme-option-page-general">General</a>
					             <a href="#nova-tab-theme-option-page-main-menu">Main Menu</a>
					             <a href="#nova-tab-theme-option-page-product-page">Product Page</a>
					             <a href="#nova-tab-theme-option-page-footer">Footer</a>
					             <a href="#nova-tab-theme-option-page-widgets">Widgets</a>
					        </div>
					        
					        	<!-- theme option page general -->
								 <div id="nova-tab-theme-option-page-general" class="vtabs-content">
								 
								 	<table class="form">
										<tr>
											<td colspan="2" style="font-size: 14px; text-transform: uppercase; background:#f7f7f7;">
												<div style="display: inline-block; min-width: 163px;">
													<b>Product Inner</b>
												</div>
											</td>											
										</tr>
										<tr>
											<td style="text-align: right;">Layout:</td>
											<td>                        
					                        <select name="nova_layout_style">
					                        	<option value="1"<?php if($nova_layout_style == '1') echo ' selected="selected"';?>><?php echo $text_full_width; ?></option>
					                           <option value="0"<?php if($nova_layout_style == '0') echo ' selected="selected"';?>><?php echo $text_boxed; ?></option>					                                                    
					                        </select>
					                        </td>
										</tr>                                                                                                                                                           
									</table>  
								 
								 	<table class="form">
										<tr>
											<td colspan="2" style="font-size: 14px; text-transform: uppercase; background:#f7f7f7;">
												<div style="display: inline-block; min-width: 163px;">
													<b>Product Inner</b>
												</div>
											</td>
										</tr> 
										<tr>
											<td style="text-align: right;">Show "New" Label:</td>
											<td>                        
					                           <input style="width: 50px;" name="nova_new_label_product" value="<?php echo $nova_new_label_product ;?>">
					                        </td>
										</tr>
										<tr>
											<td style="text-align: right;">Show "Sale" Label:</td>
											<td>                        
					                          <select name="nova_sale_product_style">
					                          		<option value="1"<?php if($nova_sale_product_style == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>						        <option value="0"<?php if($nova_sale_product_style == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>						                                                    
					                          </select>
					                        </td>
										</tr>  
										<tr>
											<td style="text-align: right;">Show "Detail View" Label:</td>
											<td>   
											<select name="nova_link_label_product_style">
					                          		<option value="1"<?php if($nova_link_label_product_style == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>						        <option value="0"<?php if($nova_link_label_product_style == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>						                                                    
					                          </select>                     
					                        </td>
										</tr> 
										<tr>
											<td style="text-align: right;">Show "Quick View" Label:</td>
											<td> 
											<select name="nova_quickview_label_product_style">
					                          		<option value="1"<?php if($nova_quickview_label_product_style == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>						        <option value="0"<?php if($nova_quickview_label_product_style == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>						                                                    
					                          </select>                      
					                        </td>
										</tr>
										<tr>
											<td style="text-align: right;">Show "Hover Product" effect:</td>
											<td>  
											<select name="nova_hover_effect_label_product_style">
					                          		<option value="1"<?php if($nova_hover_effect_label_product_style == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>						        <option value="0"<?php if($nova_hover_effect_label_product_style == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>						                                                    
					                          </select>                       
					                        </td>
										</tr>                                                                                                                                                       
									</table>        
								</div>
								<!-- End theme option page general -->
								
								<!-- theme option page main menu -->
								<div id="nova-tab-theme-option-page-main-menu" class="vtabs-content">
									<table class="form">
										<tr>
											<td colspan="2" style="font-size: 14px; text-transform: uppercase; background:#f7f7f7;">
												<div style="display: inline-block; min-width: 163px;">
													<b>Home Page Link</b>
												</div>
												<div style="display: inline-block; font-size: 12px; text-transform: none;">Show:</div>
												<div style="display: inline-block; margin-left: 17px; font-size: 12px; text-transform: none;"> 
												<select name="nova_home_link_status">
						                           <option value="1"<?php if($nova_home_link_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
						                           <option value="0"<?php if($nova_home_link_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
					                           </select>
												</div>
											</td>
										</tr>
										<tr>
											<td style="text-align: right;">Home page link style:</td>
											<td>                        
					                        <select name="nova_home_link_style">
					                           <option value="1"<?php if($nova_home_link_style == '1') echo ' selected="selected"';?>>Text</option>
					                           <option value="2"<?php if($nova_home_link_style == '2') echo ' selected="selected"';?>>Icon</option>
					                        </select>
					                        </td>
										</tr>
									</table>
									<table class="form">
										<tr>
											<td colspan="2" style="font-size: 14px; text-transform: uppercase; background:#f7f7f7;">
												<div style="display: inline-block; min-width: 163px;">
													<b>Category</b>
												</div>
												<div style="display: inline-block; font-size: 12px; text-transform: none;">Show:</div>
												<div style="display: inline-block; margin-left: 17px; font-size: 12px; text-transform: none;"> 
												<select name="nova_categories_status">
						                           <option value="1"<?php if($nova_categories_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
						                           <option value="0"<?php if($nova_categories_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
					                           </select>
												</div>
											</td>
										</tr>
										<tr>
											<td style="text-align: right;">Categories style:</td>
											<td>                        
					                        <select name="nova_categories_style">
					                        	<option value="2"<?php if($nova_categories_style == '2') echo ' selected="selected"';?>>Nova</option>
					                           <option value="1"<?php if($nova_categories_style == '1') echo ' selected="selected"';?>>Opencart</option>					                           
					                        </select>
					                        </td>
										</tr>
										<tr>
											<td style="text-align: right;">Show category icons:<br>
												<span style="color: rgb(153, 153, 153);">(only nova menu style)</span>
											</td>
											<td>                        
					                        <select name="nova_categories_icon_status">
					                           <option value="0"<?php if($nova_categories_icon_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
					                           <option value="1"<?php if($nova_categories_icon_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>                         
					                        </select>
					                        </td>
										</tr>
										<tr>
											<td style="text-align: right;">Categories per row:<br>
												<span style="color: rgb(153, 153, 153);">(only nova menu style)</span>
											</td>
											<td>                        
					                        <select name="nova_categories_row">
					                           <option value="6"<?php if($nova_categories_row == '6') echo ' selected="selected"';?>>6</option>
					                           <option value="2"<?php if($nova_categories_row == '2') echo ' selected="selected"';?>>2</option>
					                           <option value="3"<?php if($nova_categories_row == '3') echo ' selected="selected"';?>>3</option>
					                           <option value="4"<?php if($nova_categories_row == '4') echo ' selected="selected"';?>>4</option>
					                           <option value="5"<?php if($nova_categories_row == '5') echo ' selected="selected"';?>>5</option>
					                        </select>
					                        </td>
										</tr>
										<tr>
											<td style="text-align: right;">Categories level:</td>
											<td>                        
					                        <select name="nova_categories_level">
					                           <option value="2"<?php if($nova_categories_level == '2') echo ' selected="selected"';?>>2</option>
					                           <option value="3"<?php if($nova_categories_level == '3') echo ' selected="selected"';?>>3</option>
					                        </select>
					                        </td>
										</tr>
									</table>
									<table class="form">
										<tr>
											<td colspan="2" style="font-size: 14px; text-transform: uppercase; background:#f7f7f7;">
												<div style="display: inline-block; min-width: 163px;">
													<b>Brands</b>
												</div>
												<div style="display: inline-block; font-size: 12px; text-transform: none;">Show:</div>
												<div style="display: inline-block; margin-left: 17px; font-size: 12px; text-transform: none;"> 
												<select name="nova_brands_status">
						                           <option value="1"<?php if($nova_brands_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
						                           <option value="0"<?php if($nova_brands_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
					                           </select>
												</div>
											</td>
										</tr>
										<tr>
											<td style="text-align: right;">Brands style:</td>
											<td>                        
					                        <select name="nova_brands_style">
					                           <option value="1"<?php if($nova_brands_style == '1') echo ' selected="selected"';?>>Name</option>
					                           <option value="2"<?php if($nova_brands_style == '2') echo ' selected="selected"';?>>Name + Logo</option>
					                           <option value="3"<?php if($nova_brands_style == '3') echo ' selected="selected"';?>>Logo</option>
					                        </select>
					                        </td>
										</tr>
										<tr>
											<td style="text-align: right;">Brands per row:<br></td>
											<td>                        
					                        <select name="nova_brands_row">
					                           <option value="6"<?php if($nova_brands_row == '6') echo ' selected="selected"';?>>6</option>
					                           <option value="2"<?php if($nova_brands_row == '2') echo ' selected="selected"';?>>2</option>
					                           <option value="3"<?php if($nova_brands_row == '3') echo ' selected="selected"';?>>3</option>
					                           <option value="4"<?php if($nova_brands_row == '4') echo ' selected="selected"';?>>4</option>
					                           <option value="5"<?php if($nova_brands_row == '5') echo ' selected="selected"';?>>5</option>
					                        </select>
					                        </td>
										</tr>
									</table>
									<table class="form">
										<tr>
											<td colspan="2" style="font-size: 14px; text-transform: uppercase; background:#f7f7f7;">
												<div style="display: inline-block; min-width: 163px;">
													<b>Custom Links</b>
												</div>
												<div style="display: inline-block; font-size: 12px; text-transform: none;">Show:</div>
												<div style="display: inline-block; margin-left: 17px; font-size: 12px; text-transform: none;"> 
												<select name="nova_menu_custom_link_status">
													<option value="1"<?php if($nova_menu_custom_link_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>					            <option value="0"<?php if($nova_menu_custom_link_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
					                           </select>
												</div>
											</td>
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 1:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_link_menu_check_status_1"<?php if($nova_custom_link_menu_check_status_1 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_link_menu_title_1<?php echo $language['language_id']; ?>" id="nova_custom_link_menu_title_1<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_link_menu_title_1' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_link_menu_url_1" value="<?php echo $nova_custom_link_menu_url_1 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_link_menu_target_1">
														<option value="_self"<?php if($nova_custom_link_menu_target_1 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_link_menu_target_1 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr> 
										
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 2:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_link_menu_check_status_2"<?php if($nova_custom_link_menu_check_status_2 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_link_menu_title_2<?php echo $language['language_id']; ?>" id="nova_custom_link_menu_title_2<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_link_menu_title_2' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_link_menu_url_2" value="<?php echo $nova_custom_link_menu_url_2 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_link_menu_target_2">
														<option value="_self"<?php if($nova_custom_link_menu_target_2 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_link_menu_target_2 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr> 
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 3:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_link_menu_check_status_3"<?php if($nova_custom_link_menu_check_status_3 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_link_menu_title_3<?php echo $language['language_id']; ?>" id="nova_custom_link_menu_title_3<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_link_menu_title_3' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_link_menu_url_3" value="<?php echo $nova_custom_link_menu_url_3 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_link_menu_target_3">
														<option value="_self"<?php if($nova_custom_link_menu_target_3 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_link_menu_target_3 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr> 
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 4:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_link_menu_check_status_4"<?php if($nova_custom_link_menu_check_status_4 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_link_menu_title_4<?php echo $language['language_id']; ?>" id="nova_custom_link_menu_title_4<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_link_menu_title_4' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_link_menu_url_4" value="<?php echo $nova_custom_link_menu_url_4 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_link_menu_target_4">
														<option value="_self"<?php if($nova_custom_link_menu_target_4 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_link_menu_target_4 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr> 
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 5:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_link_menu_check_status_5"<?php if($nova_custom_link_menu_check_status_5 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_link_menu_title_5<?php echo $language['language_id']; ?>" id="nova_custom_link_menu_title_5<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_link_menu_title_5' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_link_menu_url_5" value="<?php echo $nova_custom_link_menu_url_5 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_link_menu_target_5">
														<option value="_self"<?php if($nova_custom_link_menu_target_5 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_link_menu_target_5 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr> 
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 6:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_link_menu_check_status_6"<?php if($nova_custom_link_menu_check_status_6 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_link_menu_title_6<?php echo $language['language_id']; ?>" id="nova_custom_link_menu_title_6<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_link_menu_title_6' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_link_menu_url_6" value="<?php echo $nova_custom_link_menu_url_6 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_link_menu_target_6">
														<option value="_self"<?php if($nova_custom_link_menu_target_6 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_link_menu_target_6 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr> 
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 7:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_link_menu_check_status_7"<?php if($nova_custom_link_menu_check_status_7 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_link_menu_title_7<?php echo $language['language_id']; ?>" id="nova_custom_link_menu_title_7<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_link_menu_title_7' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_link_menu_url_7" value="<?php echo $nova_custom_link_menu_url_7 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_link_menu_target_7">
														<option value="_self"<?php if($nova_custom_link_menu_target_7 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_link_menu_target_7 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr> 
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 8:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_link_menu_check_status_8"<?php if($nova_custom_link_menu_check_status_8 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_link_menu_title_8<?php echo $language['language_id']; ?>" id="nova_custom_link_menu_title_8<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_link_menu_title_8' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_link_menu_url_8" value="<?php echo $nova_custom_link_menu_url_8 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_link_menu_target_8">
														<option value="_self"<?php if($nova_custom_link_menu_target_8 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_link_menu_target_8 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr> 
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 9:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_link_menu_check_status_9"<?php if($nova_custom_link_menu_check_status_9 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_link_menu_title_9<?php echo $language['language_id']; ?>" id="nova_custom_link_menu_title_9<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_link_menu_title_9' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_link_menu_url_9" value="<?php echo $nova_custom_link_menu_url_9 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_link_menu_target_9">
														<option value="_self"<?php if($nova_custom_link_menu_target_9 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_link_menu_target_9 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr> 
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 10:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_link_menu_check_status_10"<?php if($nova_custom_link_menu_check_status_10 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_link_menu_title_10<?php echo $language['language_id']; ?>" id="nova_custom_link_menu_title_10<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_link_menu_title_10' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_link_menu_url_10" value="<?php echo $nova_custom_link_menu_url_10 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_link_menu_target_10">
														<option value="_self"<?php if($nova_custom_link_menu_target_10 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_link_menu_target_10 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr> 
									</table>
									<table class="form">
										<tr>
											<td colspan="2" style="font-size: 14px; text-transform: uppercase; background:#f7f7f7;">
												<div style="display: inline-block; min-width: 163px;">
													<b>Custom Menu</b>
												</div>
												<div style="display: inline-block; font-size: 12px; text-transform: none;">Show:</div>
												<div style="display: inline-block; margin-left: 17px; font-size: 12px; text-transform: none;"> 
												<select name="nova_menu_custom_menu1_status">
													<option value="1"<?php if($nova_menu_custom_menu1_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>					            <option value="0"<?php if($nova_menu_custom_menu1_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
					                           </select>
												</div>
											</td>
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 15px; font-size: 13px; text-transform: uppercase;"><b>Custom Menu 1</b></td>
											<td>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu1_menu_title_1<?php echo $language['language_id']; ?>" id="nova_custom_menu1_menu_title_1<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu1_menu_title_1' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 1:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu1_menu_check_status_1"<?php if($nova_custom_menu1_menu_check_status_1 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu1_menu_link_1<?php echo $language['language_id']; ?>" id="nova_custom_menu1_menu_link_1<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu1_menu_link_1' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu1_menu_url_1" value="<?php echo $nova_custom_menu1_menu_url_1 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu1_menu_target_1">
														<option value="_self"<?php if($nova_custom_menu1_menu_target_1 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu1_menu_target_1 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 2:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu1_menu_check_status_2"<?php if($nova_custom_menu1_menu_check_status_2 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu1_menu_link_2<?php echo $language['language_id']; ?>" id="nova_custom_menu1_menu_link_2<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu1_menu_link_2' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu1_menu_url_2" value="<?php echo $nova_custom_menu1_menu_url_2 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu1_menu_target_2">
														<option value="_self"<?php if($nova_custom_menu1_menu_target_2 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu1_menu_target_2 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 3:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu1_menu_check_status_3"<?php if($nova_custom_menu1_menu_check_status_3 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu1_menu_link_3<?php echo $language['language_id']; ?>" id="nova_custom_menu1_menu_link_3<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu1_menu_link_3' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu1_menu_url_3" value="<?php echo $nova_custom_menu1_menu_url_3 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu1_menu_target_3">
														<option value="_self"<?php if($nova_custom_menu1_menu_target_3 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu1_menu_target_3 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 4:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu1_menu_check_status_4"<?php if($nova_custom_menu1_menu_check_status_4 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu1_menu_link_4<?php echo $language['language_id']; ?>" id="nova_custom_menu1_menu_link_4<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu1_menu_link_4' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu1_menu_url_4" value="<?php echo $nova_custom_menu1_menu_url_4 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu1_menu_target_4">
														<option value="_self"<?php if($nova_custom_menu1_menu_target_4 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu1_menu_target_4 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 5:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu1_menu_check_status_5"<?php if($nova_custom_menu1_menu_check_status_5 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu1_menu_link_5<?php echo $language['language_id']; ?>" id="nova_custom_menu1_menu_link_5<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu1_menu_link_5' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu1_menu_url_5" value="<?php echo $nova_custom_menu1_menu_url_5 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu1_menu_target_5">
														<option value="_self"<?php if($nova_custom_menu1_menu_target_5 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu1_menu_target_5 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 6:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu1_menu_check_status_6"<?php if($nova_custom_menu1_menu_check_status_6 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu1_menu_link_6<?php echo $language['language_id']; ?>" id="nova_custom_menu1_menu_link_6<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu1_menu_link_6' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu1_menu_url_6" value="<?php echo $nova_custom_menu1_menu_url_6 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu1_menu_target_6">
														<option value="_self"<?php if($nova_custom_menu1_menu_target_6 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu1_menu_target_6 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 7:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu1_menu_check_status_7"<?php if($nova_custom_menu1_menu_check_status_7 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu1_menu_link_7<?php echo $language['language_id']; ?>" id="nova_custom_menu1_menu_link_7<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu1_menu_link_7' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu1_menu_url_7" value="<?php echo $nova_custom_menu1_menu_url_7 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu1_menu_target_7">
														<option value="_self"<?php if($nova_custom_menu1_menu_target_7 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu1_menu_target_7 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 8:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu1_menu_check_status_8"<?php if($nova_custom_menu1_menu_check_status_8 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu1_menu_link_8<?php echo $language['language_id']; ?>" id="nova_custom_menu1_menu_link_8<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu1_menu_link_8' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu1_menu_url_8" value="<?php echo $nova_custom_menu1_menu_url_8 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu1_menu_target_8">
														<option value="_self"<?php if($nova_custom_menu1_menu_target_8 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu1_menu_target_8 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 9:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu1_menu_check_status_9"<?php if($nova_custom_menu1_menu_check_status_9 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu1_menu_link_9<?php echo $language['language_id']; ?>" id="nova_custom_menu1_menu_link_9<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu1_menu_link_9' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu1_menu_url_9" value="<?php echo $nova_custom_menu1_menu_url_9 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu1_menu_target_9">
														<option value="_self"<?php if($nova_custom_menu1_menu_target_9 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu1_menu_target_9 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 10:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu1_menu_check_status_10"<?php if($nova_custom_menu1_menu_check_status_10 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu1_menu_link_10<?php echo $language['language_id']; ?>" id="nova_custom_menu1_menu_link_10<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu1_menu_link_10' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu1_menu_url_10" value="<?php echo $nova_custom_menu1_menu_url_10 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu1_menu_target_10">
														<option value="_self"<?php if($nova_custom_menu1_menu_target_10 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu1_menu_target_10 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 15px; font-size: 13px; text-transform: uppercase;"><b>Custom Menu 2</b></td>
											<td>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu2_menu_title_1<?php echo $language['language_id']; ?>" id="nova_custom_menu2_menu_title_1<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu2_menu_title_1' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 1:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu2_menu_check_status_1"<?php if($nova_custom_menu2_menu_check_status_1 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu2_menu_link_1<?php echo $language['language_id']; ?>" id="nova_custom_menu2_menu_link_1<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu2_menu_link_1' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu2_menu_url_1" value="<?php echo $nova_custom_menu2_menu_url_1 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu2_menu_target_1">
														<option value="_self"<?php if($nova_custom_menu2_menu_target_1 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu2_menu_target_1 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 2:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu2_menu_check_status_2"<?php if($nova_custom_menu2_menu_check_status_2 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu2_menu_link_2<?php echo $language['language_id']; ?>" id="nova_custom_menu2_menu_link_2<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu2_menu_link_2' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu2_menu_url_2" value="<?php echo $nova_custom_menu2_menu_url_2 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu2_menu_target_2">
														<option value="_self"<?php if($nova_custom_menu2_menu_target_2 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu2_menu_target_2 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 3:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu2_menu_check_status_3"<?php if($nova_custom_menu2_menu_check_status_3 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu2_menu_link_3<?php echo $language['language_id']; ?>" id="nova_custom_menu2_menu_link_3<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu2_menu_link_3' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu2_menu_url_3" value="<?php echo $nova_custom_menu2_menu_url_3 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu2_menu_target_3">
														<option value="_self"<?php if($nova_custom_menu2_menu_target_3 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu2_menu_target_3 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 4:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu2_menu_check_status_4"<?php if($nova_custom_menu2_menu_check_status_4 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu2_menu_link_4<?php echo $language['language_id']; ?>" id="nova_custom_menu2_menu_link_4<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu2_menu_link_4' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu2_menu_url_4" value="<?php echo $nova_custom_menu2_menu_url_4 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu2_menu_target_4">
														<option value="_self"<?php if($nova_custom_menu2_menu_target_4 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu2_menu_target_4 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 5:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu2_menu_check_status_5"<?php if($nova_custom_menu2_menu_check_status_5 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu2_menu_link_5<?php echo $language['language_id']; ?>" id="nova_custom_menu2_menu_link_5<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu2_menu_link_5' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu2_menu_url_5" value="<?php echo $nova_custom_menu2_menu_url_5 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu2_menu_target_5">
														<option value="_self"<?php if($nova_custom_menu2_menu_target_5 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu2_menu_target_5 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 6:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu2_menu_check_status_6"<?php if($nova_custom_menu2_menu_check_status_6 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu2_menu_link_6<?php echo $language['language_id']; ?>" id="nova_custom_menu2_menu_link_6<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu2_menu_link_6' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu2_menu_url_6" value="<?php echo $nova_custom_menu2_menu_url_6 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu2_menu_target_6">
														<option value="_self"<?php if($nova_custom_menu2_menu_target_6 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu2_menu_target_6 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 7:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu2_menu_check_status_7"<?php if($nova_custom_menu2_menu_check_status_7 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu2_menu_link_7<?php echo $language['language_id']; ?>" id="nova_custom_menu2_menu_link_7<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu2_menu_link_7' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu2_menu_url_7" value="<?php echo $nova_custom_menu2_menu_url_7 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu2_menu_target_7">
														<option value="_self"<?php if($nova_custom_menu2_menu_target_7 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu2_menu_target_7 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 8:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu2_menu_check_status_8"<?php if($nova_custom_menu2_menu_check_status_8 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu2_menu_link_8<?php echo $language['language_id']; ?>" id="nova_custom_menu2_menu_link_8<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu2_menu_link_8' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu2_menu_url_8" value="<?php echo $nova_custom_menu2_menu_url_8 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu2_menu_target_8">
														<option value="_self"<?php if($nova_custom_menu2_menu_target_8 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu2_menu_target_8 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 9:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu2_menu_check_status_9"<?php if($nova_custom_menu2_menu_check_status_9 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu2_menu_link_9<?php echo $language['language_id']; ?>" id="nova_custom_menu2_menu_link_9<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu2_menu_link_9' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu2_menu_url_9" value="<?php echo $nova_custom_menu2_menu_url_9 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu2_menu_target_9">
														<option value="_self"<?php if($nova_custom_menu2_menu_target_9 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu2_menu_target_9 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 10:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu2_menu_check_status_10"<?php if($nova_custom_menu2_menu_check_status_10 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu2_menu_link_10<?php echo $language['language_id']; ?>" id="nova_custom_menu2_menu_link_10<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu2_menu_link_10' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu2_menu_url_10" value="<?php echo $nova_custom_menu2_menu_url_10 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu2_menu_target_10">
														<option value="_self"<?php if($nova_custom_menu2_menu_target_10 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu2_menu_target_10 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 15px; font-size: 13px; text-transform: uppercase;"><b>Custom Menu 3</b></td>
											<td>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu3_menu_title_1<?php echo $language['language_id']; ?>" id="nova_custom_menu3_menu_title_1<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu3_menu_title_1' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 1:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu3_menu_check_status_1"<?php if($nova_custom_menu3_menu_check_status_1 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu3_menu_link_1<?php echo $language['language_id']; ?>" id="nova_custom_menu3_menu_link_1<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu3_menu_link_1' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu3_menu_url_1" value="<?php echo $nova_custom_menu3_menu_url_1 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu3_menu_target_1">
														<option value="_self"<?php if($nova_custom_menu3_menu_target_1 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu3_menu_target_1 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 2:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu3_menu_check_status_2"<?php if($nova_custom_menu3_menu_check_status_2 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu3_menu_link_2<?php echo $language['language_id']; ?>" id="nova_custom_menu3_menu_link_2<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu3_menu_link_2' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu3_menu_url_2" value="<?php echo $nova_custom_menu3_menu_url_2 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu3_menu_target_2">
														<option value="_self"<?php if($nova_custom_menu3_menu_target_2 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu3_menu_target_2 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 3:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu3_menu_check_status_3"<?php if($nova_custom_menu3_menu_check_status_3 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu3_menu_link_3<?php echo $language['language_id']; ?>" id="nova_custom_menu3_menu_link_3<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu3_menu_link_3' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu3_menu_url_3" value="<?php echo $nova_custom_menu3_menu_url_3 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu3_menu_target_3">
														<option value="_self"<?php if($nova_custom_menu3_menu_target_3 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu3_menu_target_3 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 4:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu3_menu_check_status_4"<?php if($nova_custom_menu3_menu_check_status_4 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu3_menu_link_4<?php echo $language['language_id']; ?>" id="nova_custom_menu3_menu_link_4<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu3_menu_link_4' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu3_menu_url_4" value="<?php echo $nova_custom_menu3_menu_url_4 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu3_menu_target_4">
														<option value="_self"<?php if($nova_custom_menu3_menu_target_4 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu3_menu_target_4 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 5:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu3_menu_check_status_5"<?php if($nova_custom_menu3_menu_check_status_5 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu3_menu_link_5<?php echo $language['language_id']; ?>" id="nova_custom_menu3_menu_link_5<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu3_menu_link_5' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu3_menu_url_5" value="<?php echo $nova_custom_menu3_menu_url_5 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu3_menu_target_5">
														<option value="_self"<?php if($nova_custom_menu3_menu_target_5 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu3_menu_target_5 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 6:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu3_menu_check_status_6"<?php if($nova_custom_menu3_menu_check_status_6 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu3_menu_link_6<?php echo $language['language_id']; ?>" id="nova_custom_menu3_menu_link_6<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu3_menu_link_6' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu3_menu_url_6" value="<?php echo $nova_custom_menu3_menu_url_6 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu3_menu_target_6">
														<option value="_self"<?php if($nova_custom_menu3_menu_target_6 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu3_menu_target_6 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 7:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu3_menu_check_status_7"<?php if($nova_custom_menu3_menu_check_status_7 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu3_menu_link_7<?php echo $language['language_id']; ?>" id="nova_custom_menu3_menu_link_7<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu3_menu_link_7' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu3_menu_url_7" value="<?php echo $nova_custom_menu3_menu_url_7 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu3_menu_target_7">
														<option value="_self"<?php if($nova_custom_menu3_menu_target_7 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu3_menu_target_7 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 8:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu3_menu_check_status_8"<?php if($nova_custom_menu3_menu_check_status_8 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu3_menu_link_8<?php echo $language['language_id']; ?>" id="nova_custom_menu3_menu_link_8<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu3_menu_link_8' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu3_menu_url_8" value="<?php echo $nova_custom_menu3_menu_url_8 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu3_menu_target_8">
														<option value="_self"<?php if($nova_custom_menu3_menu_target_8 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu3_menu_target_8 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 9:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu3_menu_check_status_9"<?php if($nova_custom_menu3_menu_check_status_9 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu3_menu_link_9<?php echo $language['language_id']; ?>" id="nova_custom_menu3_menu_link_9<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu3_menu_link_9' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu3_menu_url_9" value="<?php echo $nova_custom_menu3_menu_url_9 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu3_menu_target_9">
														<option value="_self"<?php if($nova_custom_menu3_menu_target_9 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu3_menu_target_9 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Link 10:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_custom_menu3_menu_check_status_10"<?php if($nova_custom_menu3_menu_check_status_10 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin-right: 8px; line-height: 25px;">Title:</div>
												<div style="float: left; margin-right: 30px;">
													<?php foreach ($languages as $language) { ?>
									                    <input style="margin-bottom: 3px;" type="text" name="nova_custom_menu3_menu_link_10<?php echo $language['language_id']; ?>" id="nova_custom_menu3_menu_link_10<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_custom_menu3_menu_link_10' . $language['language_id']}; ?>" />
									                    <img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /><br />
							                        <?php } ?>
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_custom_menu3_menu_url_10" value="<?php echo $nova_custom_menu3_menu_url_10 ;?>">
												</div> 
											   <div style="float: left; margin-right: 30px; margin-top: 2px;">Target: 
													 <select name="nova_custom_menu3_menu_target_10">
														<option value="_self"<?php if($nova_custom_menu3_menu_target_10 == '_self') echo ' selected="selected"';?>>_Self</option>
														<option value="_blank"<?php if($nova_custom_menu3_menu_target_10 == '_blank') echo ' selected="selected"';?>>_Blank</option>                        
													</select>                        
												</div>  
					                        </td>                      
										</tr>
									</table>
									<table class="form">
										<tr>
											<td colspan="2" style="font-size: 14px; text-transform: uppercase; background:#f7f7f7;">
												<div style="display: inline-block; min-width: 163px;">
													<b>Custom Block</b>
												</div>
												<div style="display: inline-block; font-size: 12px; text-transform: none;">Show:</div>
												<div style="display: inline-block; margin-left: 17px; font-size: 12px; text-transform: none;"> 
												<select name="nova_menu_custom_block_status">
													<option value="1"<?php if($nova_menu_custom_block_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>					            <option value="0"<?php if($nova_menu_custom_block_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
					                           </select>
												</div>
											</td>
										</tr>										
									</table>	
									<div style="font-size: 13px; text-transform: uppercase; padding: 0px 10px 10px; color: rgb(32, 32, 32);"><b>Block 1</b></div>										<div id="custom-block-menu-form-1" class="htabs" style="margin-bottom: 5px; background: none repeat scroll 0% 0% transparent;">
										<?php foreach ($languages as $language) { ?>
											<a href="#tab-custom-block-menu-form-1-<?php echo $language['language_id']; ?>">
												<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?>
											</a>
										<?php } ?>
									</div>
									<?php foreach ($languages as $language) {   ?>
										<div id="tab-custom-block-menu-form-1-<?php echo $language['language_id']; ?>">
											<table class="form">
											<tr>
												<td style="text-align: right;">Title: </td>
												<td>
													<input style="width: 300px;" type="text" name="nova_title_custom_block_menu_form_1<?php echo $language['language_id']; ?>" id="nova_title_custom_block_menu_form_1<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_title_custom_block_menu_form_1' . $language['language_id']}; ?>" />	
												</td>
											</tr>
											<tr>
												<td style="text-align: right;">
													<img style="margin-top: -2px; margin-right: 2px;" src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" />
													Content: 
												</td>
												<td>
												
													<textarea rows="10" cols="90" name="nova_text_custom_block_menu_form_1<?php echo $language['language_id']; ?>" ><?php echo isset(${'nova_text_custom_block_menu_form_1' . $language['language_id']}) ? ${'nova_text_custom_block_menu_form_1' . $language['language_id']} : ''; ?></textarea>
												</td>
											</tr>
											</table>
										</div>
									<?php } ?>
									
									<div style="font-size: 13px; text-transform: uppercase; padding: 0px 10px 10px; color: rgb(32, 32, 32);"><b>Block 2</b></div>															<div id="custom-block-menu-form-2" class="htabs" style="margin-bottom: 5px; background: none repeat scroll 0% 0% transparent;"">
										<?php foreach ($languages as $language) { ?>
											<a href="#tab-custom-block-menu-form-2-<?php echo $language['language_id']; ?>">
												<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?>
											</a>
										<?php } ?>
									</div>
									<?php foreach ($languages as $language) {   ?>
										<div id="tab-custom-block-menu-form-2-<?php echo $language['language_id']; ?>">
											<table class="form">
											<tr>
												<td style="text-align: right;">Title: </td>
												<td>
													<input style="width: 300px;" type="text" name="nova_title_custom_block_menu_form_2<?php echo $language['language_id']; ?>" id="nova_title_custom_block_menu_form_2<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_title_custom_block_menu_form_2' . $language['language_id']}; ?>" />	
												</td>
											</tr>
											<tr>
												<td style="text-align: right;">
													<img style="margin-top: -2px; margin-right: 2px;" src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" />
													Content: 
												</td>
												<td>
												
													<textarea rows="10" cols="90" name="nova_text_custom_block_menu_form_2<?php echo $language['language_id']; ?>" ><?php echo isset(${'nova_text_custom_block_menu_form_2' . $language['language_id']}) ? ${'nova_text_custom_block_menu_form_2' . $language['language_id']} : ''; ?></textarea>
												</td>
											</tr>
											</table>
										</div>
									<?php } ?>
									
									<div style="font-size: 13px; text-transform: uppercase; padding: 0px 10px 10px; color: rgb(32, 32, 32);"><b>Block 3</b></div>															<div id="custom-block-menu-form-3" class="htabs" style="margin-bottom: 5px; background: none repeat scroll 0% 0% transparent;">
										<?php foreach ($languages as $language) { ?>
											<a href="#tab-custom-block-menu-form-3-<?php echo $language['language_id']; ?>">
												<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?>
											</a>
										<?php } ?>
									</div>
									<?php foreach ($languages as $language) {   ?>
										<div id="tab-custom-block-menu-form-3-<?php echo $language['language_id']; ?>">
											<table class="form">
											<tr>
												<td style="text-align: right;">Title: </td>
												<td>
													<input style="width: 300px;" type="text" name="nova_title_custom_block_menu_form_3<?php echo $language['language_id']; ?>" id="nova_title_custom_block_menu_form_3<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_title_custom_block_menu_form_3' . $language['language_id']}; ?>" />	
												</td>
											</tr>
											<tr>
												<td style="text-align: right;">
													<img style="margin-top: -2px; margin-right: 2px;" src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" />
													Content: 
												</td>
												<td>
												
													<textarea rows="10" cols="90" name="nova_text_custom_block_menu_form_3<?php echo $language['language_id']; ?>" ><?php echo isset(${'nova_text_custom_block_menu_form_3' . $language['language_id']}) ? ${'nova_text_custom_block_menu_form_3' . $language['language_id']} : ''; ?></textarea>
												</td>
											</tr>
											</table>
										</div>
									<?php } ?>
									
								</div>
								<!-- End theme option page main menu -->
								
								<!-- theme option page footer -->
								 <div id="nova-tab-theme-option-page-footer" class="vtabs-content">
								 	
								 	<table class="form">
										<tr>
											<td colspan="2" style="font-size: 14px; text-transform: uppercase; background:#f7f7f7;">
												<div style="display: inline-block; min-width: 163px;">
													<b>Footer Block</b>
												</div>
												<div style="display: inline-block; font-size: 12px; text-transform: none;">Show:</div>
												<div style="display: inline-block; margin-left: 17px; font-size: 12px; text-transform: none;"> 
												<select name="nova_footer_block">
													<option value="1"<?php if($nova_footer_block == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
													<option value="0"<?php if($nova_footer_block == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
					                           </select>
												</div>
											</td>
										</tr> 
									</table> 
									<div id="custom-block-footer" class="htabs" style="margin-bottom: 5px; background: none repeat scroll 0% 0% transparent;">
									<?php foreach ($languages as $language) { ?>
										<a href="#tab-custom-block-footer-<?php echo $language['language_id']; ?>">
											<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?>
										</a>
									<?php } ?>
									</div>
									<?php foreach ($languages as $language) {   ?>
										<div id="tab-custom-block-footer-<?php echo $language['language_id']; ?>">
											<table class="form">
											<tr>
												<td style="text-align: right;">
													<img style="margin-top: -2px; margin-right: 2px;" src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" />
													Content: 
												</td>
												<td>
												
													<textarea rows="10" cols="90" name="nova_text_custom_block_footer<?php echo $language['language_id']; ?>" ><?php echo isset(${'nova_text_custom_block_footer' . $language['language_id']}) ? ${'nova_text_custom_block_footer' . $language['language_id']} : ''; ?></textarea>
												</td>
											</tr>
											</table>
										</div>
									<?php } ?>
									
									
								 	
								 	<table class="form">
										<tr>
											<td colspan="2" style="font-size: 14px; text-transform: uppercase; background:#f7f7f7;">
												<div style="display: inline-block; min-width: 163px;">
													<b>Copyright</b>
												</div>
												<div style="display: inline-block; font-size: 12px; text-transform: none;">Show:</div>
												<div style="display: inline-block; margin-left: 17px; font-size: 12px; text-transform: none;"> 
												<select name="nova_copyright_status">
													<option value="0"<?php if($nova_copyright_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
													<option value="1"<?php if($nova_copyright_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
					                           </select>
												</div>
											</td>
										</tr> 
									</table> 
									<div id="custom-block-copyright" class="htabs" style="margin-bottom: 5px; background: none repeat scroll 0% 0% transparent;">
									<?php foreach ($languages as $language) { ?>
										<a href="#tab-custom-block-copyright-<?php echo $language['language_id']; ?>">
											<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?>
										</a>
									<?php } ?>
									</div>
									<?php foreach ($languages as $language) {   ?>
										<div id="tab-custom-block-copyright-<?php echo $language['language_id']; ?>">
											<table class="form">
											<tr>
												<td style="text-align: right;">
													<img style="margin-top: -2px; margin-right: 2px;" src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" />
													Content: 
												</td>
												<td>
												
													<textarea rows="10" cols="90" name="nova_text_custom_block_copyright<?php echo $language['language_id']; ?>" ><?php echo isset(${'nova_text_custom_block_copyright' . $language['language_id']}) ? ${'nova_text_custom_block_copyright' . $language['language_id']} : ''; ?></textarea>
												</td>
											</tr>
											</table>
										</div>
									<?php } ?>  
									
									<table class="form">
										<tr>
											<td colspan="2" style="font-size: 14px; text-transform: uppercase; background:#f7f7f7;">
												<div style="display: inline-block; min-width: 163px;">
													<b>Payment</b>
												</div>
												<div style="display: inline-block; font-size: 12px; text-transform: none;">Show:</div>
												<div style="display: inline-block; margin-left: 17px; font-size: 12px; text-transform: none;"> 
												<select name="nova_payment_status">
													<option value="1"<?php if($nova_payment_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>					            <option value="0"<?php if($nova_payment_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
					                           </select>
												</div>
											</td>
										</tr> 
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Show Paypan</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_payment_checkbox_01"<?php if($nova_payment_checkbox_01 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin: -3px 30px 0px 0px;"">
												<img src="../image/payment/payment_image_paypal.png">	
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_payment_url_01" value="<?php echo $nova_payment_url_01 ;?>">
												</div> 							
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Show Visa</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_payment_checkbox_02"<?php if($nova_payment_checkbox_02 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin: -3px 30px 0px 0px;"">
												<img src="../image/payment/payment_image_visa.png">	
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_payment_url_02" value="<?php echo $nova_payment_url_02 ;?>">
												</div> 							
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Show MasterCard</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_payment_checkbox_03"<?php if($nova_payment_checkbox_03 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin: -3px 30px 0px 0px;"">
												<img src="../image/payment/payment_image_mastercard.png">	
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_payment_url_03" value="<?php echo $nova_payment_url_03 ;?>">
												</div> 							
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Show Maestro</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_payment_checkbox_04"<?php if($nova_payment_checkbox_04 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin: -3px 30px 0px 0px;"">
												<img src="../image/payment/payment_image_maestro.png">	
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_payment_url_04" value="<?php echo $nova_payment_url_04 ;?>">
												</div> 							
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Show Discover</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_payment_checkbox_05"<?php if($nova_payment_checkbox_05 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin: -3px 30px 0px 0px;"">
												<img src="../image/payment/payment_image_discover.png">	
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_payment_url_05" value="<?php echo $nova_payment_url_05 ;?>">
												</div> 							
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Show Moneybookers:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_payment_checkbox_06"<?php if($nova_payment_checkbox_06 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin: -3px 30px 0px 0px;"">
												<img src="../image/payment/payment_image_moneybookers.png">	
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_payment_url_06" value="<?php echo $nova_payment_url_06 ;?>">
												</div> 							
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Show American Express:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_payment_checkbox_07"<?php if($nova_payment_checkbox_07 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin: -3px 30px 0px 0px;"">
												<img src="../image/payment/payment_image_american_express.png">	
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_payment_url_07" value="<?php echo $nova_payment_url_07 ;?>">
												</div> 							
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Show Cirrus:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_payment_checkbox_08"<?php if($nova_payment_checkbox_08 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin: -3px 30px 0px 0px;"">
												<img src="../image/payment/payment_image_cirrus.png">	
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_payment_url_08" value="<?php echo $nova_payment_url_08 ;?>">
												</div> 							
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Show Delta:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_payment_checkbox_09"<?php if($nova_payment_checkbox_09 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin: -3px 30px 0px 0px;"">
												<img src="../image/payment/payment_image_delta.png">	
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_payment_url_09" value="<?php echo $nova_payment_url_09 ;?>">
												</div> 							
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Show Google Checkout:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_payment_checkbox_10"<?php if($nova_payment_checkbox_10 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin: -3px 30px 0px 0px;"">
												<img src="../image/payment/payment_image_google.png">	
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_payment_url_10" value="<?php echo $nova_payment_url_10 ;?>">
												</div> 							
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Show 2CheckOut:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_payment_checkbox_11"<?php if($nova_payment_checkbox_11 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin: -3px 30px 0px 0px;"">
												<img src="../image/payment/payment_image_2co.png">	
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_payment_url_11" value="<?php echo $nova_payment_url_11 ;?>">
												</div> 							
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Show Sage:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_payment_checkbox_12"<?php if($nova_payment_checkbox_12 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin: -3px 30px 0px 0px;"">
												<img src="../image/payment/payment_image_sage.png">	
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_payment_url_12" value="<?php echo $nova_payment_url_12 ;?>">
												</div> 							
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Show Solo:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_payment_checkbox_13"<?php if($nova_payment_checkbox_13 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin: -3px 30px 0px 0px;"">
												<img src="../image/payment/payment_image_solo.png">	
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_payment_url_13" value="<?php echo $nova_payment_url_13 ;?>">
												</div> 							
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Show Switch:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_payment_checkbox_14"<?php if($nova_payment_checkbox_14 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin: -3px 30px 0px 0px;"">
												<img src="../image/payment/payment_image_switch.png">	
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_payment_url_14" value="<?php echo $nova_payment_url_14 ;?>">
												</div> 							
					                        </td>                      
										</tr>
										<tr>
											<td style="text-align: right; vertical-align: top; padding-top: 12px;">Show Western Union:</td>
											<td>
												<div style="float:left; margin-right: 30px; margin-top: 2px;">
												<input style="margin-right: 10px;" type="checkbox" value="1" name="nova_payment_checkbox_15"<?php if($nova_payment_checkbox_15 == '1') echo ' checked="checked"';?> />Show
												</div>
												<div style="float: left; margin: -3px 30px 0px 0px;"">
												<img src="../image/payment/payment_image_western_union.png">	
												</div>
												<div style="float: left; margin-right: 30px;">
													<div style="float: left; margin-right: 8px; line-height: 25px;">url:</div>
													<input name="nova_payment_url_15" value="<?php echo $nova_payment_url_15 ;?>">
												</div> 							
					                        </td>                      
										</tr>
									</table> 
								</div>
								<!-- End theme option page footer -->
								
								
								<!-- theme option page footer -->
								 <div id="nova-tab-theme-option-page-widgets" class="vtabs-content">
								 	<table class="form">
										<tr>
											<td colspan="2" style="font-size: 14px; text-transform: uppercase; background:#f7f7f7;">
												<div style="display: inline-block; min-width: 163px;">
													<b>Twitter Box</b>
												</div>
												<div style="display: inline-block; font-size: 12px; text-transform: none;">Show:</div>
												<div style="display: inline-block; margin-left: 17px; font-size: 12px; text-transform: none;"> 
												<select name="nova_show_twitter_box">
													<option value="1"<?php if($nova_show_twitter_box == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
													<option value="0"<?php if($nova_show_twitter_box == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
					                           </select>
												</div>
											</td>
										</tr>
									</table>
									
								 	<table class="form">
								 	<tr>
								 		<td style="text-align: right; vertical-align: top; padding-top: 12px;">Twitter Username:</td>
								 		<td>
									 		<input name="nova_twitter_name_box_url" value="<?php echo $nova_twitter_name_box_url ;?>">
								 		</td>
								 	</tr>
								 	<tr>
								 		<td style="text-align: right; vertical-align: top; padding-top: 12px;">Twitter Widget ID:</td>
								 		<td>
									 		<input name="nova_twitter_widget_id" value="<?php echo $nova_twitter_widget_id ;?>">
								 		</td>
								 	</tr>
								 	<tr>
								 		<td style="text-align: right; vertical-align: top; padding-top: 12px;">Twitter Count:</td>
								 		<td><select name="nova_twitter_count_column">
											<?php foreach ( $tweet_count as $key_tweet => $value_tweet ): ?>
												<?php  $selected_count = $value_tweet == $nova_twitter_count_column?'selected="selected"':'';	?>	
												<option value="<?php echo $value_tweet;?>" <?php echo $selected_count; ?>><?php echo  $value_tweet; ?></option>
											<?php endforeach; ?>
											</select></td>
								 	</tr>
									</table> 
								</div>
								<!-- End theme option page footer -->
								
								
								<!-- theme option page product page -->
								
								
								 <div id="nova-tab-theme-option-page-product-page" class="vtabs-content">
								 
								 	<table class="form">
										<tr>
											<td colspan="2" style="font-size: 14px; text-transform: uppercase; background:#f7f7f7;">
												<div style="display: inline-block; min-width: 163px;">
													<b>Custom Tab</b>
												</div>
												<div style="display: inline-block; font-size: 12px; text-transform: none;">Show:</div>
												<div style="display: inline-block; margin-left: 17px; font-size: 12px; text-transform: none;"> 
												<select name="nova_product_block_tab_status">
													<option value="1"<?php if($nova_product_block_tab_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>					            <option value="0"<?php if($nova_product_block_tab_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
					                           </select>
												</div>
											</td>
										</tr> 
									</table> 
									
									<div id="custom-product-tab" class="htabs" style="margin-bottom: 5px; background: none repeat scroll 0% 0% transparent;">
										<?php foreach ($languages as $language) { ?>
											<a href="#tab-custom-product-tab<?php echo $language['language_id']; ?>">
												<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?>
											</a>
										<?php } ?>
									</div>
									<?php foreach ($languages as $language) {   ?>
										<div id="tab-custom-product-tab<?php echo $language['language_id']; ?>">
											<table class="form">
											<tr>
												<td style="text-align: right;">Title: </td>
												<td>
													<input style="width: 300px;" type="text" name="nova_title_custom_product_tab<?php echo $language['language_id']; ?>" id="nova_title_custom_product_tab<?php echo $language['language_id']; ?>" value="<?php echo ${'nova_title_custom_product_tab' . $language['language_id']}; ?>" />	
												</td>
											</tr>
											<tr>
												<td style="text-align: right;">
													<img style="margin-top: -2px; margin-right: 2px;" src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" />
													Content: 
												</td>
												<td>
												
													<textarea rows="10" cols="90" name="nova_text_custom_product_tab<?php echo $language['language_id']; ?>" ><?php echo isset(${'nova_text_custom_product_tab' . $language['language_id']}) ? ${'nova_text_custom_product_tab' . $language['language_id']} : ''; ?></textarea>
												</td>
											</tr>
											</table>
										</div>
									<?php } ?>
									
									
									<table class="form">
										<tr>
											<td colspan="2" style="font-size: 14px; text-transform: uppercase; background:#f7f7f7;">
												<div style="display: inline-block; min-width: 163px;">
													<b>Social Share</b>
												</div>
												<div style="display: inline-block; font-size: 12px; text-transform: none;">Show:</div>
												<div style="display: inline-block; margin-left: 17px; font-size: 12px; text-transform: none;"> 
												<select name="nova_social_share_status">
													<option value="1"<?php if($nova_social_share_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>					            <option value="0"<?php if($nova_social_share_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
					                           </select>
												</div>
											</td>
										</tr> 
									</table> 
									<div id="product-social-share" class="htabs" style="margin-bottom: 5px; background: none repeat scroll 0% 0% transparent;">
										<?php foreach ($languages as $language) { ?>
											<a href="#tab-product-social-share<?php echo $language['language_id']; ?>">
												<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?>
											</a>
										<?php } ?>
									</div>
									
<?php foreach ($languages as $language) {   ?>
										<div id="tab-product-social-share<?php echo $language['language_id']; ?>">
											<table class="form">
											<tr>
												<td style="text-align: right;">
													<img style="margin-top: -2px; margin-right: 2px;" src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" />
													Content: 
												</td>
												<td>
												
													<textarea rows="10" cols="90" name="nova_text_product_social_share<?php echo $language['language_id']; ?>" ><?php echo isset(${'nova_text_product_social_share' . $language['language_id']}) ? ${'nova_text_product_social_share' . $language['language_id']} : ''; ?></textarea>
												</td>
											</tr>
											</table>
										</div>
									<?php } ?>
									
									
								 
								 	<table class="form">
										<tr>
											<td colspan="2" style="font-size: 14px; text-transform: uppercase; background:#f7f7f7;">
												<div style="display: inline-block; min-width: 163px;">
													<b>Banner Block</b>
												</div>
												<div style="display: inline-block; font-size: 12px; text-transform: none;">Show:</div>
												<div style="display: inline-block; margin-left: 17px; font-size: 12px; text-transform: none;"> 
												<select name="nova_product_block_banner_status">
													<option value="1"<?php if($nova_product_block_banner_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>					            <option value="0"<?php if($nova_product_block_banner_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
					                           </select>
												</div>
											</td>
										</tr> 
									</table> 
									
									<div id="product-block-banner" class="htabs" style="margin-bottom: 5px; background: none repeat scroll 0% 0% transparent;">
										<?php foreach ($languages as $language) { ?>
											<a href="#tab-product-block-banner-<?php echo $language['language_id']; ?>">
												<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?>
											</a>
										<?php } ?>
									</div>
									
<?php foreach ($languages as $language) {   ?>
										<div id="tab-product-block-banner-<?php echo $language['language_id']; ?>">
											<table class="form">
											<tr>
												<td style="text-align: right;">
													<img style="margin-top: -2px; margin-right: 2px;" src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" />
													Content: 
												</td>
												<td>
												
													<textarea rows="10" cols="90" name="nova_text_product_block_banner<?php echo $language['language_id']; ?>" ><?php echo isset(${'nova_text_product_block_banner' . $language['language_id']}) ? ${'nova_text_product_block_banner' . $language['language_id']} : ''; ?></textarea>
												</td>
											</tr>
											</table>
										</div>
									<?php } ?>
									
									
									
								</div>
								<!-- End theme option page product page -->
								
						</div>
						<!-- End tab theme option -->
						
						<!-- Tab theme color -->
						<div id="nova-tab-theme-color">
							
							<div id="nova-tab-theme-color-page" class="vtabs">
					             <a href="#nova-tab-theme-color-page-general">General</a>
					             <a href="#nova-tab-theme-color-page-footer">Footer</a>
					        </div>
					        
					        <!-- theme color page general -->
					        	<div id="nova-tab-theme-color-page-general" class="vtabs-content">  							 	
								 	<table class="form">
										<tr>
											<td colspan="2" style="font-size: 14px; text-transform: uppercase; background:#f7f7f7;">
												<div style="display: inline-block; min-width: 163px;">
													<b>Body</b>
												</div>
											</td>
										</tr>
										<tr>
											<td style="border-bottom: medium none; padding-bottom: 0px;">Show Background color:</td>
											<td style="border-bottom: medium none; padding-bottom: 0px;">
											<select name="nova_background_color_status">
					                           <option value="1"<?php if($nova_background_color_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
					                           <option value="0"<?php if($nova_background_color_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
				                           </select>
											</td>
										</tr>
									</table>
									<table class="form">
										<tr>
											<td style="padding-top: 0px;">Background color:</td>
											<td style="padding-top: 0px;">                        
					                           <input type="text" name="nova_background_color" value="<?php echo $nova_background_color; ?>" class="color {required:false,hash:true}" size="10" />
					                        </td>
										</tr>
									</table>
									<table class="form">
										<tr>
											<td style="border-bottom: medium none;">Show Background image:</td>
											<td style="border-bottom: medium none;">
											<select name="nova_background_image_status">
					                           <option value="0"<?php if($nova_background_image_status == '0') echo ' selected="selected"';?>><?php echo $text_no; ?></option>
					                           <option value="1"<?php if($nova_background_image_status == '1') echo ' selected="selected"';?>><?php echo $text_yes; ?></option>
				                           </select>
											</td>
										</tr>
										
										<tr>
											<td style="border-bottom: medium none;">Background image:</td>
											<td style="border-bottom: medium none;">
												<div class="input">
													<div class="own_image">
														<input type="hidden" name="nova_body_background" value="<?php echo $nova_body_background; ?>" id="input-body-background" />
														
														<?php if($nova_body_background == '') { ?>
															<a href="" id="thumb-body-background" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
														<?php } else { ?>
															<a href="" id="thumb-body-background" class="img-thumbnail img-edit" data-toggle="image"><img src="../image/<?php echo $nova_body_background; ?>" data-placeholder="<?php echo $placeholder; ?>" alt="" /></a>
														<?php } ?>
													</div>
													
													<div class="clear"></div>	
												</div>
											</td>
										</tr>
										<tr>
											<td style="border-bottom: medium none;">Position:</td>
											<td style="border-bottom: medium none;">
												<select name="nova_body_background_position">
													<option value="top left"<?php if($nova_body_background_position == 'top left') { echo ' selected="selected"'; } ?>>Top left</option>
													<option value="top center"<?php if($nova_body_background_position == 'top center') { echo ' selected="selected"'; } ?>>Top center</option>
													<option value="top right"<?php if($nova_body_background_position == 'top right') { echo ' selected="selected"'; } ?>>Top right</option>
													<option value="center center"<?php if($nova_body_background_position == 'center center') { echo ' selected="selected"'; } ?>>Center center</option>
													<option value="bottom left"<?php if($nova_body_background_position == 'bottom left') { echo ' selected="selected"'; } ?>>Bottom left</option>
													<option value="bottom center"<?php if($nova_body_background_position == 'bottom center') { echo ' selected="selected"'; } ?>>Bottom center</option>
													<option value="bottom right"<?php if($nova_body_background_position == 'bottom right') { echo ' selected="selected"'; } ?>>Bottom right</option>
												</select>
											</td>
										</tr>
										<tr>
											<td style="border-bottom: medium none;">Repeat:</td>
											<td style="border-bottom: medium none;">
												<select name="nova_body_background_repeat">
													<option value="no-repeat"<?php if($nova_body_background_repeat == 'no-repeat') { echo ' selected="selected"'; } ?>>no-repeat</option>
													<option value="repeat-x"<?php if($nova_body_background_repeat == 'repeat-x') { echo ' selected="selected"'; } ?>>repeat-x</option>
													<option value="repeat-y"<?php if($nova_body_background_repeat == 'repeat-y') { echo ' selected="selected"'; } ?>>repeat-y</option>
													<option value="repeat"<?php if($nova_body_background_repeat == 'repeat') { echo ' selected="selected"'; } ?>>repeat</option>
												</select>
											</td>
										</tr>
										<tr>
											<td style="border-bottom: medium none;">Attachment:</td>
											<td style="border-bottom: medium none;">
												<select name="nova_body_background_attachment">
													<option value="scroll"<?php if($nova_body_background_attachment == 'scroll') { echo ' selected="selected"'; } ?>>scroll</option>
													<option value="fixed"<?php if($nova_body_background_attachment == 'fixed') { echo ' selected="selected"'; } ?>>fixed</option>
												</select>
											</td>
										</tr>
									</table>
										
									<table class="form">										
										<tr>
											<td colspan="2" style="font-size: 14px; text-transform: uppercase; background:#f7f7f7;">
												<div style="display: inline-block; min-width: 163px;">
													<b>General</b>
												</div>
												
											</td>
										</tr>
										<tr>
											<td>Text color:</td>
											<td>                        
					                           <input type="text" name="nova_body_text_color" value="<?php echo $nova_body_text_color; ?>" class="color {required:false,hash:true}" size="10" />
					                        </td>
										</tr>
										<tr>
											<td>Link color:</td>
											<td>                        
					                           <input type="text" name="nova_body_link_color" value="<?php echo $nova_body_link_color; ?>" class="color {required:false,hash:true}" size="10" />
					                        </td>
										</tr>
										<tr>
											<td>Link color hover:</td>
											<td>                        
					                           <input type="text" name="nova_body_link_color_hover" value="<?php echo $nova_body_link_color_hover; ?>" class="color {required:false,hash:true}" size="10" />
					                        </td>
										</tr>
										<tr>
											<td>Active color:</td>
											<td>                        
					                           <input type="text" name="nova_body_active_color" value="<?php echo $nova_body_active_color; ?>" class="color {required:false,hash:true}" size="10" />
					                        </td>
										</tr>
										<tr>
											<td>Heading color:</td>
											<td>                        
					                           <input type="text" name="nova_body_heading_color" value="<?php echo $nova_body_heading_color; ?>" class="color {required:false,hash:true}" size="10" />
					                        </td>
										</tr>
										<tr>
											<td>Button background color:</td>
											<td>                        
					                           <input type="text" name="nova_button_background_color" value="<?php echo $nova_button_background_color; ?>" class="color {required:false,hash:true}" size="10" />
					                        </td>
										</tr>
										<tr>
											<td>Button background color hover:</td>
											<td>                        
					                           <input type="text" name="nova_button_background_color_hover" value="<?php echo $nova_button_background_color_hover; ?>" class="color {required:false,hash:true}" size="10" />
					                        </td>
										</tr>
										<tr>
											<td>Button Text color:</td>
											<td>                        
					                           <input type="text" name="nova_text_button_color" value="<?php echo $nova_text_button_color; ?>" class="color {required:false,hash:true}" size="10" />
					                        </td>
										</tr>
										<tr>
											<td>"New" background color:</td>
											<td>                        
					                           <input type="text" name="nova_background_color_new_label" value="<?php echo $nova_background_color_new_label; ?>" class="color {required:false,hash:true}" size="10" />
					                        </td>
										</tr>
										<tr>
											<td>"New" Text color:</td>
											<td>                        
					                           <input type="text" name="nova_text_color_new_label" value="<?php echo $nova_text_color_new_label; ?>" class="color {required:false,hash:true}" size="10" />
					                        </td>
										</tr>
										
										<tr>
											<td>"Sale" background color:</td>
											<td>                        
					                           <input type="text" name="nova_background_color_sale_label" value="<?php echo $nova_background_color_sale_label; ?>" class="color {required:false,hash:true}" size="10" />
					                        </td>
										</tr>
										<tr>
											<td>"Sale" Text color:</td>
											<td>                        
					                           <input type="text" name="nova_text_color_sale_label" value="<?php echo $nova_text_color_sale_label; ?>" class="color {required:false,hash:true}" size="10" />
					                        </td>
										</tr>
										
										<tr>
											<td>"QuickView" background color:</td>
											<td>                        
					                           <input type="text" name="nova_background_color_quickview" value="<?php echo $nova_background_color_quickview; ?>" class="color {required:false,hash:true}" size="10" />
					                        </td>
										</tr>
										<tr>
											<td>"QuickView" background color hover:</td>
											<td>                        
					                           <input type="text" name="nova_background_color_quickview_hover" value="<?php echo $nova_background_color_quickview_hover; ?>" class="color {required:false,hash:true}" size="10" />
					                        </td>
										</tr>
										<tr>
											<td>"QuickView" Text color:</td>
											<td>                        
					                           <input type="text" name="nova_text_color_quickview" value="<?php echo $nova_text_color_quickview; ?>" class="color {required:false,hash:true}" size="10" />
					                        </td>
										</tr>
										<tr>
											<td>"QuickView" Text color hover:</td>
											<td>                        
					                           <input type="text" name="nova_text_color_quickview_hover" value="<?php echo $nova_text_color_quickview_hover; ?>" class="color {required:false,hash:true}" size="10" />
					                        </td>
										</tr>
										
										<tr>
											<td>"Detail" background color:</td>
											<td>                        
					                           <input type="text" name="nova_background_color_detail" value="<?php echo $nova_background_color_detail; ?>" class="color {required:false,hash:true}" size="10" />
					                        </td>
										</tr>
										<tr>
											<td>"Detail" background color hover:</td>
											<td>                        
					                           <input type="text" name="nova_background_color_detail_hover" value="<?php echo $nova_background_color_detail_hover; ?>" class="color {required:false,hash:true}" size="10" />
					                        </td>
										</tr>
										<tr>
											<td>"Detail" Text color:</td>
											<td>                        
					                           <input type="text" name="nova_text_color_detail" value="<?php echo $nova_text_color_detail; ?>" class="color {required:false,hash:true}" size="10" />
					                        </td>
										</tr>
										<tr>
											<td>"Detail" Text color hover:</td>
											<td>                        
					                           <input type="text" name="nova_text_color_detail_hover" value="<?php echo $nova_text_color_detail_hover; ?>" class="color {required:false,hash:true}" size="10" />
					                        </td>
										</tr>
																				
									</table>
								</div>
					        <!-- End theme color page header -->
					        
					        <!-- theme color page general -->
					        	<div id="nova-tab-theme-color-page-footer" class="vtabs-content">  							 	
								 	<table class="form">
								 		<tr>
											<td colspan="2" style="font-size: 14px; text-transform: uppercase; background:#f7f7f7;">
												<div style="display: inline-block; min-width: 163px;">
													<b>Powered</b>
												</div>
											</td>
										</tr>
										<tr>
											<td>Background color:</td>
											<td>                        
					                           <input type="text" name="nova_footer_background_color" value="<?php echo $nova_footer_background_color; ?>" class="color {required:false,hash:true}" size="10" />
					                        </td>
										</tr>
										<tr>
											<td>Link color:</td>
											<td>                        
					                           <input type="text" name="nova_footer_link_color" value="<?php echo $nova_footer_link_color; ?>" class="color {required:false,hash:true}" size="10" />
					                        </td>
										</tr>
										<tr>
											<td>Link color hover:</td>
											<td>                        
					                           <input type="text" name="nova_footer_link_color_hover" value="<?php echo $nova_footer_link_color_hover; ?>" class="color {required:false,hash:true}" size="10" />
					                        </td>
										</tr>
								 	</table>
								</div>
					        
					        <!-- End theme color page footer -->
					        
						</div>
						<!-- End tab theme color -->
							        
			    </form>
			</div>	
		</div>	
	</div>        
</div>
<?php echo $footer; ?>

<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script> 
<script type="text/javascript"><!--

$("#product-social-share a").tabs();
<?php foreach( $languages as $language )  { ?>
CKEDITOR.replace('nova_text_product_social_share<?php echo $language['language_id']; ?>', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
<?php } ?>

$("#custom-product-tab a").tabs();
<?php foreach( $languages as $language )  { ?>
CKEDITOR.replace('nova_text_custom_product_tab<?php echo $language['language_id']; ?>', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
<?php } ?>

$("#product-block-banner a").tabs();
<?php foreach( $languages as $language )  { ?>
CKEDITOR.replace('nova_text_product_block_banner<?php echo $language['language_id']; ?>', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
<?php } ?>

$("#custom-block-copyright a").tabs();
<?php foreach( $languages as $language )  { ?>
CKEDITOR.replace('nova_text_custom_block_copyright<?php echo $language['language_id']; ?>', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
<?php } ?>

$("#custom-block-footer a").tabs();
<?php foreach( $languages as $language )  { ?>
CKEDITOR.replace('nova_text_custom_block_footer<?php echo $language['language_id']; ?>', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
<?php } ?>

$("#custom-block-menu-form-1 a").tabs();
<?php foreach( $languages as $language )  { ?>
CKEDITOR.replace('nova_text_custom_block_menu_form_1<?php echo $language['language_id']; ?>', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
<?php } ?>

$("#custom-block-menu-form-2 a").tabs();
<?php foreach( $languages as $language )  { ?>
CKEDITOR.replace('nova_text_custom_block_menu_form_2<?php echo $language['language_id']; ?>', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
<?php } ?>

$("#custom-block-menu-form-3 a").tabs();
<?php foreach( $languages as $language )  { ?>
CKEDITOR.replace('nova_text_custom_block_menu_form_3<?php echo $language['language_id']; ?>', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
<?php } ?>

//--></script>

<script type="text/javascript">
	$('#nova_setting a').tabs();
	$('#nova-tab-theme-option-page a').tabs();
	$('#nova-tab-theme-color-page a').tabs();
</script>
<script type="text/javascript" src="view/javascript/jscolor/jscolor.js"></script>
<script type="text/javascript" src="view/javascript/poshytip/jquery.poshytip.js"></script>
<link rel="stylesheet" type="text/css" href="view/javascript/poshytip/tip-twitter/tip-twitter.css" />
<script type="text/javascript">
		//<![CDATA[
		$(function(){

			$('#nova-help-25').poshytip({
				content: 'Before you turn on this option, add at least one manufacturer.',
			});	
			$('#nova-help-33').poshytip({
				content: 'If you need help, please contact us. <br>We provide support only through our nova Support System.',
			});
			$('#nova-help-34').poshytip({
				content: 'Before you turn on this option, add at least one manufacturer.',
			});				

		});
		
		$(function(){
		$("#save_skin").click(function(e){
			
			var selected_skin = $("#nova_skin").val();
			var ajaxurl = 'index.php?route=catalog/product/saveSkin&token=<?php echo $token; ?>';	
			
        e.preventDefault();
        var answer = confirm("Click OK to Save new color schema.")

        if (answer) {

            var clickedObject = $(this);
            var clickedID = $(this).attr("id");

            var nonce = $("#security").val();

            var data = {
                action: "of_ajax_post_action",
                type: "of_color_schema",
                schema: schema_set
            };

            $.post(ajaxurl, data, function(response) {

                if (response == -1) {

                    var fail_popup = $("#of-popup-fail");
                    fail_popup.fadeIn();
                    window.setTimeout(function() {
                        fail_popup.fadeOut();
                    }, 2000);
                }

                else {
					
					var value = $("select#nova_skin > option").length > 0 ? parseInt($("select#nova_skin > option:last-child").attr('value'))+1 : 0 ;
					
					var opt = $("select#nova_skin").append('<option value="'+value+'">'+schema_set.skin_name+'</option>');
					
					$("#skin_name").val('');
					
					$("select#nova_skin option").attr("selected",false);
					
					$("select#nova_skin option:last-child").attr('selected',true);

                    var success_popup = $("#of-popup-save");
                    success_popup.fadeIn();
                    /*window.setTimeout(function() {
                        location.reload();                    
					}, 1000);*/
                }

            });
        }

        return false;

    });
	
		$("#load_skin").click(function(e){
		
		var selected_skin = $("#nova_skin").val();
		var ajaxurl = 'index.php?route=catalog/product/LoadSkin&token=<?php echo $token; ?>';
				
        e.preventDefault();
         var answer = confirm("Click OK to load this skin.")

        if (answer) {

        var element = $(this);

     	var selected_skin = $("#nova_skin").val();

        var clickedObject = $(this);

        var nonce = $("#security").val();
        var elementData;
        var data = {
            action: "of_ajax_post_action",
            type: "of_color_schema_apply",
            schema_id: selected_skin,
            security: nonce
        };

        $.post(ajaxurl, data, function(response) {
  
            $("#of-popup-loading").fadeOut();
            
            $("#loading-bg-transparent").remove();

            if (response == -1) {

                var fail_popup = $("#of-popup-fail");
                fail_popup.fadeIn();
                window.setTimeout(function() {
                    fail_popup.fadeOut();
                }, 2000);
            }

            else {

                elementData = response;
                
                 var data = JSON.parse(elementData);
                
                $.each(data, function(i, val) {
               
                 var elm = $("#" + i);
                 
                 var elm_name = $( '[name="'+i+ '"]');
 
                 if (typeof val == "string" || typeof val == "number" || typeof val == "boolean")

                    {

                         if (elm.length)
                        {
         
                            if (elm.is("input[type=text]") || elm.is("input[type=hidden]") || elm.is("select"))
                            {
 
									if(elm.attr('class')=="checkbox aq-input") {
						
									var ipnone_checkbox =  elm.siblings(".iPhoneCheckContainer").children(".iphone_checkboxes");

											  if(val==1) 
												 ipnone_checkbox.attr('checked', true);
											   
												 else
												 ipnone_checkbox.attr('checked', false);

									}

									else
									
                                elm.val(val).trigger("change");

                            }
                        }else if(elm_name.length){
                        
                         $.each(elm_name, function(j, elm_val) {
                               
                                var patt = elm_name.attr('id');
                                
                                var name = "";

                                if(patt.match(/of-radio-tile/)){
                                    
                                    name = $("#of-radio-tile-"+i + j);

                                }
                                else if(patt.match(/of-radio-img/)){
                                
                                    name = $("#of-radio-img-"+i + j);
                                
                                }
								
								 else if(patt.match(/iphone_checkboxes/)){
                                
                                    name = $("#of-radio-img-"+i + j);
                                
                                }
                                
                                if($.type(name) == "object" && name.length ){
                                 
                                    if(name.val()==val){

                                            name.attr('checked', true);

                                            if(patt.match(/of-radio-tile/)){

                                                    name.parents(".controls").find('.of-radio-tile-img').removeClass('of-radio-tile-selected');

                                                    name.next().addClass('of-radio-tile-selected');

                                            }
                                            else if(patt.match(/of-radio-img/)){

                                                    name.parents(".controls").find(".of-radio-img-img").removeClass("of-radio-img-selected");

                                                    name.parent().find("img.of-radio-img-img").addClass("of-radio-img-selected");

                                            }

                                    }

                                }
                           });
                               
                            }
                    } 
                });

                var success_popup = $("#of-popup-color-apply");
                success_popup.fadeIn();
                window.setTimeout(function() {
                }, 1000);
            }

        });

        }
     
        return false;
    });
				
$("#delete_skin").click(function(e){
			
			var selected_skin = $("#nova_skin").val();
			var ajaxurl = 'index.php?route=catalog/product/deleteSkin&token=<?php echo $token; ?>';
				 
        e.preventDefault();
         var answer = confirm("Are you want to delete this schema?")

        if (answer) {
  
        var clickedObject = $(this);

        var nonce = $("#security").val();
        var elementData;
        var data = {
            action: "of_ajax_post_action",
            type: "of_color_schema_delete",
            schema_id: selected_skin,
            security: nonce
        };

        $.post(ajaxurl, data, function(response) {

            if (response == -1) {

                var fail_popup = $("#of-popup-fail");
                fail_popup.fadeIn();
                window.setTimeout(function() {
                    fail_popup.fadeOut();
                }, 2000);
            }

            else {

                  var success_popup = $("#of-popup-color-delete");
                success_popup.fadeIn();
                window.setTimeout(function() {
                  location.reload();
                }, 500); 
            }
         });
        }
       return false;
			
			});	
		});

		//]]>
</script>