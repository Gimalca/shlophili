<?php
$config = $this->registry->get('config');
?>
<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->

<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-1.11.2.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/cloud-zoom.1.0.2.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/jquery.transit.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/jquery/jquery.imagesloaded.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/jquery.debouncedresize.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/flex/owl.carousel.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/jquery.bxslider/jquery.bxslider.js" type="text/javascript"></script>
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/functions.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/eda/stylesheet/stylesheet.css" rel="stylesheet">
<link href="catalog/view/theme/eda/stylesheet/nova.css" rel="stylesheet">
<link href="catalog/view/theme/eda/stylesheet/responsive.css" rel="stylesheet">
<link href="catalog/view/theme/eda/stylesheet/cloud-zoom.css" rel="stylesheet">
<link href="catalog/view/javascript/jquery/flex/owl.carousel.css" rel="stylesheet">
<script src="catalog/view/javascript/jquery/jquery.sticky.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/scrolltopcontrol.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/colorbox/jquery.colorbox-min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/jquery/colorbox/colorbox.css" rel="stylesheet">
<link href="catalog/view/javascript/jquery/jquery.bxslider/jquery.bxslider.css" rel="stylesheet">
<?php if($config->get('nova_layout_style')== '0') { ?> 
<link href="catalog/view/theme/eda/stylesheet/boxed.css" rel="stylesheet">
<?php } ?>
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<style type="text/css">

<?php if($config->get('nova_layout_style')== '0') { ?>
	/* Boxed */
	<?php if($config->get('nova_background_color_status')== '1') { ?>
		body{
			background:<?php echo $config->get('nova_background_color'); ?>;
		}
	<?php } ?>
	
	<?php if($config->get('nova_background_image_status')== '1') { ?>
		body { background-image:url(image/<?php echo $config->get( 'nova_body_background' ); ?>);background-position:<?php echo $config->get( 'nova_body_background_position' ); ?>;background-repeat:<?php echo $config->get( 'nova_body_background_repeat' ); ?> !important;background-attachment:<?php echo $config->get( 'nova_body_background_attachment' ); ?> !important;}	
	<?php } ?>	
<?php } ?>
	
	/* Product */
	<?php if($config->get('nova_hover_effect_label_product_style')== '0') { ?> 
	.item-product-image-box:hover img {
		-ms-transform: scale(1); /* IE 9 */
	    -webkit-transform: scale(1); /* Chrome, Safari, Opera */
	    transform: scale(1);
	}
	<?php } ?>
	
	<?php if($config->get('nova_hover_effect_label_product_style')== '0') { ?> 
		.product-hover-box{
			background:none;
			position: static;
		}
	<?php } ?>
	
	/* Footer */
	footer .powered{
		background:<?php echo $config->get('nova_footer_background_color'); ?>;
	}
	.powered a{
		color:<?php echo $config->get('nova_footer_link_color'); ?>;
	}
	.powered a:hover{
		color:<?php echo $config->get('nova_footer_link_color_hover'); ?>;
	}
	
	/* General */
	.product-list p.description, .description_list, .product-content .list-unstyled, .right-block p, .label-sort, .welcome-logged {
		color:<?php echo $config->get('nova_body_text_color'); ?>;
	}
	
	#top .btn-link, #top-links li, #top-links a, .list-group a, .product-list .product-thumb h4 a, .product-content .rating a, .product-list .product-thumb .cart-compare button, .category-pd .list-group label, .content-my-account li a, {
		color:<?php echo $config->get('nova_body_link_color'); ?>;
	}
	
	#top .btn-link:hover, #top-links li:hover, #top-links a:hover, .list-group a:hover, .product-list .product-thumb h4 a:hover, .product-content .rating a:hover, .product-list .product-thumb .cart-compare button:hover, .list-group a:hover, .product-thumb .button-group button:hover, .product-thumb h4 a:hover, #menu > div > div > ul > li:hover > a span, #menu .nova-menu a:hover, a:hover, #menu .custom-menu-menu > ul > li > div > ul > li > a:hover, .dropdown-top-links li:hover a, #cart .cart-content:hover i, #cart .cart-content:hover span, footer a:hover, .powered p a:hover, .wishlist-button:hover, .novaworks-social-share ul li a i:hover, .back-button a:hover, .content-my-account li a:hover, #search .btn-lg:hover, #cart .dropdown-shopping-cart .remove-item a i:hover, #cart .dropdown-shopping-cart a.name:hover, #menu .dropdown-inner li a:hover, .custom-block-menu .list-menu-custom span a:hover, .custom-block-menu .list-menu-custom a:hover{
		color:<?php echo $config->get('nova_body_link_color_hover'); ?>;
	}
	
	#menu > div > div > ul > li.active a, #top .btn-link strong, #cart span b, .product-thumb .price, .list-group a.active, .list-group a.active:hover, .tab-content-description li.active a, .zoom-b a i:hover, .list-unstyled-price li h2, .notification a, .alert-info a, #cart table tr:last-child, #menu .see-all{
		color:<?php echo $config->get('nova_body_active_color'); ?>;
	}
	.pagination > .active > a, .pagination > .active > span, .pagination > .active > a:hover, .pagination > .active > span:hover, .pagination > .active > a:focus, .pagination > .active > span:focus, .pagination > li > a:hover, .pagination > li > span:hover, .btn-group .selected, #list-view:hover, #grid-view:hover, .product-list .product-thumb .button-group .name button:hover, #button-cart{
		background:<?php echo $config->get('nova_body_active_color'); ?>;
	}
	.pagination > .active > a, .pagination > .active > span, .pagination > .active > a:hover, .pagination > .active > span:hover, .pagination > .active > a:focus, .pagination > .active > span:focus, .novaworks-social-share ul li a:hover{
		border-color:<?php echo $config->get('nova_body_active_color'); ?>;
	}
	#topcontrol{
		background-color:<?php echo $config->get('nova_body_active_color'); ?>;
	}
	
	h3.spb_heading p, footer h5, .product-content h1, .login-content h2, h1.register-account-title, .title-manufacturer h1, h1, h2, h3, h4, h5, h6, .product-thumb .button-group button, .product-thumb h4 a,
	.product-thumb .price-old, .product-thumb .price-sep{
		color:<?php echo $config->get('nova_body_heading_color'); ?>;
	}
	.sale_label_product{
		background:<?php echo $config->get('nova_background_color_sale_label'); ?>;
		color:<?php echo $config->get('nova_text_color_sale_label'); ?>;
}
	.new_label_product{
		background:<?php echo $config->get('nova_background_color_new_label'); ?>;
		color:<?php echo $config->get('nova_text_color_new_label'); ?>;
}

.btn-primary, #cart .cart-item p a.check-out-cart{
	background:<?php echo $config->get('nova_button_background_color'); ?>;
}

#cart .cart-item p a:hover span, .btn-primary:hover, .btn-primary:active, .btn-primary.active, .btn-primary.disabled, .btn-primary[disabled]{
	background:<?php echo $config->get('nova_button_background_color_hover'); ?>;
	color:<?php echo $config->get('nova_text_button_color'); ?>;
}
#cart .cart-item p a.view-cart:hover span{
	color:<?php echo $config->get('nova_text_button_color'); ?>;
}
	
.quickview-colorbox{
	background:<?php echo $config->get('nova_background_color_quickview'); ?>;
	color:<?php echo $config->get('nova_text_color_quickview'); ?>;
}
.quickview-colorbox:hover{
	background:<?php echo $config->get('nova_background_color_quickview_hover'); ?>;
	color:<?php echo $config->get('nova_text_color_quickview_hover'); ?>;
}

.act-imageview-button{
	background:<?php echo $config->get('nova_background_color_detail'); ?>;
	color:<?php echo $config->get('nova_text_color_detail'); ?>;
}
.act-imageview-button:hover{
	background:<?php echo $config->get('nova_background_color_detail_hover'); ?>;
	color:<?php echo $config->get('nova_text_color_detail_hover'); ?>;
}
	
</style>
<body class="<?php echo $class; ?>">
<div class="page-container">
<nav id="top">
  <div class="container">
  	<?php if ($logged) { ?>
    	<?php echo $currency; ?>
    <?php }?>
    <?php echo $language; ?>
    <div id="top-links" class="nav pull-left">
      <ul class="list-inline">
        <li id="cuentatop" style="cursor: pointer;" class="dropdown"><a style="cursor: pointer;" href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><span><?php echo $text_account; ?></span></a>
          <ul id="flog" class="dropdown-top-links arrow" style="z-index: 9999999999 !important;">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <!-- <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li> -->
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <!-- <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li> -->
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
            <?php } ?>
          </ul>
        </li>
        <?php if ($logged) { ?>
	        <!-- <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><span><?php echo $text_wishlist; ?></span></a></li> -->
	        <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><span><?php echo $text_shopping_cart; ?></span></a></li>
	        <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><span><?php echo $text_checkout; ?></span></a></li>
      	<?php }?>
      </ul>
    </div>
  </div>
</nav>
<header>
  <div class="container">
    <div class="row">
      <!--
      <div class="col-sm-4">
      </div>
      <div class="col-sm-4">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
	<div class="col-sm-4">
		<div class="welcome-logged pull-left">
			<?php if (!$logged) { ?>
			<?php echo $text_welcome; ?>
			<?php } else { ?>
			<?php echo $text_logged; ?>
			<?php } ?> 
		</div> 
		<div class="welcome-logged pull-left">
			<?php if ($logged) { ?>
				<?php echo $text_logged; ?>
			<?php } ?> 
		</div>
		<?php if ($logged) { ?>
			<?php echo $cart; ?>
      	<?php }?>
	</div>
	-->
    </div>
  </div>
</header>
<?php if ($categories) { ?>
<div class="main-menu">
<div class="container">
<div class="row">
	<!-- <div class="col-sm-1" style="z-index: 99999999; border-bottom: 2px solid #ebebeb; height: 103px;"></div> -->
	<div class="col-sm-3" style="border-bottom: 2px solid #ebebeb; height: 103px;">
		<div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
	</div>
  <nav id="menu" class="col-sm-9" style="padding-top: 42px;">
    <div class="navbar-header">
      <a class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><span id="category" class="visible-xs"><?php echo $text_category; ?></span><span class="slicknav_icon"><i class="fa fa-bars"></i></span></a>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse nav-menu nav-menu-mobile">
    	
    	<?php if($config->get('nova_home_link_status')== '1') { ?>
	    <div class="home">
	    	<?php if($config->get('nova_home_link_style')== '1') { ?>
		    <ul class="nav">
			    <li>
			    	<a href="<?php echo $home; ?>"><span><?php echo $text_home; ?></span></a>
			    </li>
		    </ul>
		    <?php } ?>
		    <?php if($config->get('nova_home_link_style')== '2') { ?>
		    <ul class="nav">
			    <li>
			    	<a href="<?php echo $home; ?>"><span><i class="fa fa-icon-home fa-home"></span></i></a>
			    </li>
		    </ul>
		    <?php } ?>
	    </div>
	    <?php } ?>
	    
	    <?php if($config->get('nova_categories_status')== '1') { ?>
	    <?php if($config->get('nova_categories_style')== '1') { ?>
	    <div class="opencart-menu">
	      <ul class="nav navbar-nav">
	        <?php foreach ($categories as $category) { ?>
	        <?php if ($category['children']) { ?>
	        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><span><?php echo $category['name']; ?></span></a>
	          <div  class="dropdown-menu">
	            <div class="dropdown-inner">
	              <?php for ($i = 0; $i < count($category['children']);) { ?>
						<ul>
						  <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
						  <?php for (; $i < $j; $i++) { ?>
						  <?php if (isset($category['children'][$i])) { ?>
						  
						  <?php if ($category['children'][$i]['children_level_2']) { ?>
						  <?php if($config->get('nova_categories_level')== '3') { ?>
						  <li class="dropdown-level-2">
						  <a class="icon-after" href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a>
							<div class="dropdown-menu-level-2">
								<div class="dropdown-inner-level-2">
									<ul>
										<?php for ($si = 0; $si < count($category['children'][$i]['children_level_2']); $si++) { ?>
										   <li><a href="<?php echo $category['children'][$i]['children_level_2'][$si]['href']; ?>"  ><?php echo $category['children'][$i]['children_level_2'][$si]['name']; ?></a></li>
										<?php } ?>
									</ul>
								</div>
							</div>
						  </li>
						  <?php } else { ?>
						  <li>
						  	<a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a>
						  </li>
						  <?php } ?>
						  <?php } else { ?>
						  <li>
						  <a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a>
						  </li>
						  <?php } ?>
						  
						  <?php } ?>
						  <?php } ?>
						</ul>
					<?php } ?>
	            </div>
	            <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
	        </li>
	        <?php } else { ?>
	        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
	        <?php } ?>
	        <?php } ?>
	      </ul>
	      </div>
	      <?php } ?>
      
	      <?php if($config->get('nova_categories_style')== '2') { ?>
	      <div class="nova-menu">
			<ul>					
				<li id="prueba"><a><span>Productos<!--?php echo $text_categories_menu; ?--></span></a>  
					<div id="flag">
						<?php $count = 0; foreach ($categories as $category) { 
						if (($count + ($config->get('nova_categories_row'))) %($config->get('nova_categories_row')) == '0') $addclass="first"; 
						else $addclass=""; ?>
						<?php if($config->get('nova_categories_row')== '2') { ?>   
						<div class="col-lg-6 col-sm-6 two-column <?php echo $addclass; ?>">
						<?php } ?>
						<?php if($config->get('nova_categories_row')== '3') { ?>
						<div class="col-lg-4 col-sm-4 three-column <?php echo $addclass; ?>">
						<?php } ?> 
						<?php if($config->get('nova_categories_row')== '4') { ?>
						<div class="col-lg-3 col-sm-3 four-column <?php echo $addclass; ?>">
						<?php } ?> 
						<?php if($config->get('nova_categories_row')== '5') { ?>
						<div class="five-column pull-left <?php echo $addclass; ?>">
						<?php } ?> 
						<?php if($config->get('nova_categories_row')== '6') { ?>
						<div class="col-lg-2 col-sm-2 six-column <?php echo $addclass; ?>">
						<?php } ?>
						<?php if($config->get('nova_categories_icon_status')== '1') { ?>
							<div class="image">
								<a href="<?php echo $category['href']; ?>">
									<img src="<?php echo $category['thumb']; ?>" title="<?php echo $category['name']; ?>" alt="<?php echo $category['name']; ?>" />
								</a>
							</div>
						<?php } ?>
						  <span><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></span>
						  <?php if ($category['children']) { ?>
							<?php for ($i = 0; $i < count($category['children']);) { ?>
								<ul>
								  <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
								  <?php for (; $i < $j; $i++) { ?>
								  <?php if (isset($category['children'][$i])) { ?>
								  <li>
								  		<a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a>
								        <?php if($config->get('nova_categories_level')== '3') { ?>
											<?php if ($category['children'][$i]['children_level_2']) { ?>
												<div class="dropdown-menu-level-2">
												      <ul>
													    <?php for ($si = 0; $si < count($category['children'][$i]['children_level_2']); $si++) { ?>
														   <li><a href="<?php echo $category['children'][$i]['children_level_2'][$si]['href']; ?>"  ><?php echo $category['children'][$i]['children_level_2'][$si]['name']; ?></a></li>
													    <?php } ?>
													  </ul>
											    </div>
										    <?php } ?>	
								        <?php } ?>	  
								  </li>
								  <?php } ?>
								  <?php } ?>
								</ul>
							<?php } ?>
						  <?php } ?>
						</div>
						<?php $count++; } ?>
					</div> 
				</li>
			</ul>
		</div>
		<?php } ?>
      <?php } ?>
      
      <?php if($config->get('nova_brands_status')== '1') { ?>
			<div class="brands-menu">
				<ul>
				    <li><a><span><?php echo $text_brands_menu; ?></span></a> 
				      <div> 
				          <?php if ($manufacturers) { ?>           
				          <?php $count = 0; foreach ($manufacturers as $manufacturer) { 
							if (($count + ($config->get('nova_brands_row'))) %($config->get('nova_brands_row')) == '0') $addclass="first";
							else $addclass=""; ?>
							<?php if($config->get('nova_brands_row')== '2') { ?>   
							<div class="col-lg-6 col-sm-6 two-column <?php echo $addclass; ?>">
							<?php } ?>
							<?php if($config->get('nova_brands_row')== '3') { ?>
							<div class="col-lg-4 col-sm-4 three-column <?php echo $addclass; ?>">
							<?php } ?> 
							<?php if($config->get('nova_brands_row')== '4') { ?>
							<div class="col-lg-3 col-sm-3 four-column <?php echo $addclass; ?>">
							<?php } ?> 
							<?php if($config->get('nova_brands_row')== '5') { ?>
							<div class="five-column pull-left <?php echo $addclass; ?>">
							<?php } ?> 
							<?php if($config->get('nova_brands_row')== '6') { ?>
							<div class="col-lg-2 col-sm-2 six-column <?php echo $addclass; ?>">
							<?php } ?>
							
			              <?php if($config->get('nova_brands_style')== '1') { ?>
			              <div class="name">
				          	<a href="<?php echo $manufacturer['href']; ?>"><?php echo $manufacturer['name']; ?></a>
				          </div>
				          <?php } ?>
				          
				          <?php if($config->get('nova_brands_style')== '2') { ?>     
				          <div class="image">
					          <a href="<?php echo $manufacturer['href']; ?>">
					          	<img src="<?php echo $manufacturer['image']; ?>" title="<?php echo $manufacturer['name']; ?>" alt="<?php echo $manufacturer['name']; ?>" />
					          </a>
				          </div>
				          <div class="name">
				          	<a href="<?php echo $manufacturer['href']; ?>"><?php echo $manufacturer['name']; ?></a>
				          </div>
				          <?php } ?>
				          
				          <?php if($config->get('nova_brands_style')== '3') { ?>
				          <div class="image">
					          <a href="<?php echo $manufacturer['href']; ?>">
					          	<img src="<?php echo $manufacturer['image']; ?>" title="<?php echo $manufacturer['name']; ?>" alt="<?php echo $manufacturer['name']; ?>" />
					          </a>
				          </div>
				          <?php } ?>
				                           
				          </div>
				          <?php $count++; } ?>
				          <?php } ?>
				      </div>  
				    </li>
				  </ul>
			</div>
			<?php } ?>
			
			<?php if($config->get('nova_menu_custom_link_status')== '1') { ?>
			<?php if(($config->get('nova_custom_link_menu_check_status_1') =='1') && ($config->get('nova_custom_link_menu_title_1' . $config->get('config_language_id')) !='')) { ?>
			<div class="custom-link-menu">
				<ul>
					<li><a href="<?php echo $nova_custom_link_menu_url_1; ?>" target="<?php echo $config->get('nova_custom_link_menu_target_1'); ?>"><span><?php echo $nova_custom_link_menu_title_1; ?></span></a></li>
				</ul>
			</div>
			<?php } ?>
			
			<?php if(($config->get('nova_custom_link_menu_check_status_2') =='1') && ($config->get('nova_custom_link_menu_title_2' . $config->get('config_language_id')) !='')) { ?>
			<div class="custom-link-menu">
				<ul>
					<li><a href="<?php echo $nova_custom_link_menu_url_2; ?>" target="<?php echo $config->get('nova_custom_link_menu_target_2'); ?>"><span><?php echo $nova_custom_link_menu_title_2; ?></span></a></li>
				</ul>
			</div>
			<?php } ?>
			
			<?php if(($config->get('nova_custom_link_menu_check_status_3') =='1') && ($config->get('nova_custom_link_menu_title_3' . $config->get('config_language_id')) !='')) { ?>
			<div class="custom-link-menu">
				<ul>
					<li><a href="<?php echo $nova_custom_link_menu_url_3; ?>" target="<?php echo $config->get('nova_custom_link_menu_target_3'); ?>"><span><?php echo $nova_custom_link_menu_title_3; ?></span></a></li>
				</ul>
			</div>
			<?php } ?>
			
			<?php if(($config->get('nova_custom_link_menu_check_status_4') =='1') && ($config->get('nova_custom_link_menu_title_4' . $config->get('config_language_id')) !='')) { ?>
			<div class="custom-link-menu" style="display:none;">
				<ul>
					<li><a href="<?php echo $nova_custom_link_menu_url_4; ?>" target="<?php echo $config->get('nova_custom_link_menu_target_4'); ?>"><span><?php echo $nova_custom_link_menu_title_4; ?></span></a></li>
				</ul>
			</div>
			<?php } ?>
			
			<?php if(($config->get('nova_custom_link_menu_check_status_5') =='1') && ($config->get('nova_custom_link_menu_title_5' . $config->get('config_language_id')) !='')) { ?>
			<div class="custom-link-menu">
				<ul>
					<li><a href="<?php echo $nova_custom_link_menu_url_5; ?>" target="<?php echo $config->get('nova_custom_link_menu_target_5'); ?>"><span><i class="fa fa-search"></i></span><!--span><?php echo $nova_custom_link_menu_title_5; ?></span--></a></li>
				</ul>
			</div>
			<?php } ?>
			
			<?php if(($config->get('nova_custom_link_menu_check_status_6') =='1') && ($config->get('nova_custom_link_menu_title_6' . $config->get('config_language_id')) !='')) { ?>
			<div class="custom-link-menu">
				<ul>
					<li><a href="<?php echo $nova_custom_link_menu_url_6; ?>" target="<?php echo $config->get('nova_custom_link_menu_target_6'); ?>"><span><?php echo $nova_custom_link_menu_title_6; ?></span></a></li>
				</ul>
			</div>
			<?php } ?>
			
			<?php if(($config->get('nova_custom_link_menu_check_status_7') =='1') && ($config->get('nova_custom_link_menu_title_7' . $config->get('config_language_id')) !='')) { ?>
			<div class="custom-link-menu">
				<ul>
					<li><a href="<?php echo $nova_custom_link_menu_url_7; ?>" target="<?php echo $config->get('nova_custom_link_menu_target_7'); ?>"><span><?php echo $nova_custom_link_menu_title_7; ?></span></a></li>
				</ul>
			</div>
			<?php } ?>
			
			<?php if(($config->get('nova_custom_link_menu_check_status_8') =='1') && ($config->get('nova_custom_link_menu_title_8' . $config->get('config_language_id')) !='')) { ?>
			<div class="custom-link-menu">
				<ul>
					<li><a href="<?php echo $nova_custom_link_menu_url_8; ?>" target="<?php echo $config->get('nova_custom_link_menu_target_8'); ?>"><span><?php echo $nova_custom_link_menu_title_8; ?></span></a></li>
				</ul>
			</div>
			<?php } ?>
			
			<?php if(($config->get('nova_custom_link_menu_check_status_9') =='1') && ($config->get('nova_custom_link_menu_title_9' . $config->get('config_language_id')) !='')) { ?>
			<div class="custom-link-menu">
				<ul>
					<li><a href="<?php echo $nova_custom_link_menu_url_9; ?>" target="<?php echo $config->get('nova_custom_link_menu_target_9'); ?>"><span><?php echo $nova_custom_link_menu_title_9; ?></span></a></li>
				</ul>
			</div>
			<?php } ?>
			
			<?php if(($config->get('nova_custom_link_menu_check_status_10') =='1') && ($config->get('nova_custom_link_menu_title_10' . $config->get('config_language_id')) !='')) { ?>
			<div class="custom-link-menu">
				<ul>
					<li><a href="<?php echo $nova_custom_link_menu_url_10; ?>" target="<?php echo $config->get('nova_custom_link_menu_target_10'); ?>"><span><?php echo $nova_custom_link_menu_title_10; ?></span></a></li>
				</ul>
			</div>
			<?php } ?>
			<?php } ?>
			
			<?php if(($config->get('nova_menu_custom_menu1_status') =='1') && ($config->get('nova_custom_menu1_menu_title_1' . $config->get('config_language_id')) !='')) { ?>
			<div class="custom-menu-menu">
				<ul>
					<li><a><span><?php echo $nova_custom_menu1_menu_title_1; ?></span></a>
					<div>
						<ul>
							<?php if(($config->get('nova_custom_menu1_menu_check_status_1') =='1') && ($config->get('nova_custom_menu1_menu_link_1' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu1_menu_url_1'); ?>" target="<?php echo $config->get('nova_custom_menu1_menu_target_1'); ?>"><?php echo $nova_custom_menu1_menu_link_1; ?></a></li>
							<?php } ?>
							
							<?php if(($config->get('nova_custom_menu1_menu_check_status_2') =='1') && ($config->get('nova_custom_menu1_menu_link_2' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu1_menu_url_2'); ?>" target="<?php echo $config->get('nova_custom_menu1_menu_target_2'); ?>"><?php echo $nova_custom_menu1_menu_link_2; ?></a></li>
							<?php } ?>
							
							<?php if(($config->get('nova_custom_menu1_menu_check_status_3') =='1') && ($config->get('nova_custom_menu1_menu_link_3' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu1_menu_url_3'); ?>" target="<?php echo $config->get('nova_custom_menu1_menu_target_3'); ?>"><?php echo $nova_custom_menu1_menu_link_3; ?></a></li>
							<?php } ?>
							
							<?php if(($config->get('nova_custom_menu1_menu_check_status_4') =='1') && ($config->get('nova_custom_menu1_menu_link_4' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu1_menu_url_4'); ?>" target="<?php echo $config->get('nova_custom_menu1_menu_target_4'); ?>"><?php echo $nova_custom_menu1_menu_link_4; ?></a></li>
							<?php } ?>
							
							<?php if(($config->get('nova_custom_menu1_menu_check_status_5') =='1') && ($config->get('nova_custom_menu1_menu_link_5' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu1_menu_url_5'); ?>" target="<?php echo $config->get('nova_custom_menu1_menu_target_5'); ?>"><?php echo $nova_custom_menu1_menu_link_5; ?></a></li>
							<?php } ?>
							
							<?php if(($config->get('nova_custom_menu1_menu_check_status_6') =='1') && ($config->get('nova_custom_menu1_menu_link_6' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu1_menu_url_6'); ?>" target="<?php echo $config->get('nova_custom_menu1_menu_target_6'); ?>"><?php echo $nova_custom_menu1_menu_link_6; ?></a></li>
							<?php } ?>
							
							<?php if(($config->get('nova_custom_menu1_menu_check_status_7') =='1') && ($config->get('nova_custom_menu1_menu_link_7' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu1_menu_url_7'); ?>" target="<?php echo $config->get('nova_custom_menu1_menu_target_7'); ?>"><?php echo $nova_custom_menu1_menu_link_7; ?></a></li>
							<?php } ?>
							
							<?php if(($config->get('nova_custom_menu1_menu_check_status_8') =='1') && ($config->get('nova_custom_menu1_menu_link_8' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu1_menu_url_8'); ?>" target="<?php echo $config->get('nova_custom_menu1_menu_target_8'); ?>"><?php echo $nova_custom_menu1_menu_link_8; ?></a></li>
							<?php } ?>
							
							<?php if(($config->get('nova_custom_menu1_menu_check_status_9') =='1') && ($config->get('nova_custom_menu1_menu_link_9' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu1_menu_url_9'); ?>" target="<?php echo $config->get('nova_custom_menu1_menu_target_9'); ?>"><?php echo $nova_custom_menu1_menu_link_9; ?></a></li>
							<?php } ?>
							
							<?php if(($config->get('nova_custom_menu1_menu_check_status_10') =='1') && ($config->get('nova_custom_menu1_menu_link_10' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu1_menu_url_10'); ?>" target="<?php echo $config->get('nova_custom_menu1_menu_target_10'); ?>"><?php echo $nova_custom_menu1_menu_link_10; ?></a></li>
							<?php } ?>
						</ul>
					</div>
					</li>
				</ul>
			</div>
			<?php } ?>
			
			<?php if(($config->get('nova_menu_custom_menu1_status') =='1') && ($config->get('nova_custom_menu2_menu_title_1' . $config->get('config_language_id')) !='')) { ?>
			<div class="custom-menu-menu">
				<ul>
					<li><a><span><?php echo $nova_custom_menu2_menu_title_1; ?></span></a>
					<div>
						<ul>
							<?php if(($config->get('nova_custom_menu2_menu_check_status_1') =='1') && ($config->get('nova_custom_menu2_menu_link_1' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu2_menu_url_1'); ?>" target="<?php echo $config->get('nova_custom_menu2_menu_target_1'); ?>"><?php echo $nova_custom_menu2_menu_link_1; ?></a></li>
							<?php } ?>
							
							<?php if(($config->get('nova_custom_menu2_menu_check_status_2') =='1') && ($config->get('nova_custom_menu2_menu_link_2' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu2_menu_url_2'); ?>" target="<?php echo $config->get('nova_custom_menu2_menu_target_2'); ?>"><?php echo $nova_custom_menu2_menu_link_2; ?></a></li>
							<?php } ?>
							
							<?php if(($config->get('nova_custom_menu2_menu_check_status_3') =='1') && ($config->get('nova_custom_menu2_menu_link_3' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu2_menu_url_3'); ?>" target="<?php echo $config->get('nova_custom_menu2_menu_target_3'); ?>"><?php echo $nova_custom_menu2_menu_link_3; ?></a></li>
							<?php } ?>
							
							<?php if(($config->get('nova_custom_menu2_menu_check_status_4') =='1') && ($config->get('nova_custom_menu2_menu_link_4' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu2_menu_url_4'); ?>" target="<?php echo $config->get('nova_custom_menu2_menu_target_4'); ?>"><?php echo $nova_custom_menu2_menu_link_4; ?></a></li>
							<?php } ?>
							
							<?php if(($config->get('nova_custom_menu2_menu_check_status_5') =='1') && ($config->get('nova_custom_menu2_menu_link_5' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu2_menu_url_5'); ?>" target="<?php echo $config->get('nova_custom_menu2_menu_target_5'); ?>"><?php echo $nova_custom_menu2_menu_link_5; ?></a></li>
							<?php } ?>
							
							<?php if(($config->get('nova_custom_menu2_menu_check_status_6') =='1') && ($config->get('nova_custom_menu2_menu_link_6' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu2_menu_url_6'); ?>" target="<?php echo $config->get('nova_custom_menu2_menu_target_6'); ?>"><?php echo $nova_custom_menu2_menu_link_6; ?></a></li>
							<?php } ?>
							
							<?php if(($config->get('nova_custom_menu2_menu_check_status_7') =='1') && ($config->get('nova_custom_menu2_menu_link_7' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu2_menu_url_7'); ?>" target="<?php echo $config->get('nova_custom_menu2_menu_target_7'); ?>"><?php echo $nova_custom_menu2_menu_link_7; ?></a></li>
							<?php } ?>
							
							<?php if(($config->get('nova_custom_menu2_menu_check_status_8') =='1') && ($config->get('nova_custom_menu2_menu_link_8' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu2_menu_url_8'); ?>" target="<?php echo $config->get('nova_custom_menu2_menu_target_8'); ?>"><?php echo $nova_custom_menu2_menu_link_8; ?></a></li>
							<?php } ?>
							
							<?php if(($config->get('nova_custom_menu2_menu_check_status_9') =='1') && ($config->get('nova_custom_menu2_menu_link_9' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu2_menu_url_9'); ?>" target="<?php echo $config->get('nova_custom_menu2_menu_target_9'); ?>"><?php echo $nova_custom_menu2_menu_link_9; ?></a></li>
							<?php } ?>
							
							<?php if(($config->get('nova_custom_menu2_menu_check_status_10') =='1') && ($config->get('nova_custom_menu2_menu_link_10' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu2_menu_url_10'); ?>" target="<?php echo $config->get('nova_custom_menu2_menu_target_10'); ?>"><?php echo $nova_custom_menu2_menu_link_10; ?></a></li>
							<?php } ?>
						</ul>
					</div>
					</li>
				</ul>
			</div>
			<?php } ?>
			
			<?php if(($config->get('nova_menu_custom_menu1_status') =='1') && ($config->get('nova_custom_menu3_menu_title_1' . $config->get('config_language_id')) !='')) { ?>
			<div class="custom-menu-menu">
				<ul>
					<li><a><span><?php echo $nova_custom_menu3_menu_title_1; ?></span></a>
					<div>
						<ul>
							<?php if(($config->get('nova_custom_menu3_menu_check_status_1') =='1') && ($config->get('nova_custom_menu3_menu_link_1' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu3_menu_url_1'); ?>" target="<?php echo $config->get('nova_custom_menu3_menu_target_1'); ?>"><?php echo $nova_custom_menu3_menu_link_1; ?></a></li>
							<?php } ?>
							
							<?php if(($config->get('nova_custom_menu3_menu_check_status_2') =='1') && ($config->get('nova_custom_menu3_menu_link_2' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu3_menu_url_2'); ?>" target="<?php echo $config->get('nova_custom_menu3_menu_target_2'); ?>"><?php echo $nova_custom_menu3_menu_link_2; ?></a></li>
							<?php } ?>
							
							<?php if(($config->get('nova_custom_menu3_menu_check_status_3') =='1') && ($config->get('nova_custom_menu3_menu_link_3' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu3_menu_url_3'); ?>" target="<?php echo $config->get('nova_custom_menu3_menu_target_3'); ?>"><?php echo $nova_custom_menu3_menu_link_3; ?></a></li>
							<?php } ?>
							
							<?php if(($config->get('nova_custom_menu3_menu_check_status_4') =='1') && ($config->get('nova_custom_menu3_menu_link_4' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu3_menu_url_4'); ?>" target="<?php echo $config->get('nova_custom_menu3_menu_target_4'); ?>"><?php echo $nova_custom_menu3_menu_link_4; ?></a></li>
							<?php } ?>
							
							<?php if(($config->get('nova_custom_menu3_menu_check_status_5') =='1') && ($config->get('nova_custom_menu3_menu_link_5' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu3_menu_url_5'); ?>" target="<?php echo $config->get('nova_custom_menu3_menu_target_5'); ?>"><?php echo $nova_custom_menu3_menu_link_5; ?></a></li>
							<?php } ?>
							
							<?php if(($config->get('nova_custom_menu3_menu_check_status_6') =='1') && ($config->get('nova_custom_menu3_menu_link_6' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu3_menu_url_6'); ?>" target="<?php echo $config->get('nova_custom_menu3_menu_target_6'); ?>"><?php echo $nova_custom_menu3_menu_link_6; ?></a></li>
							<?php } ?>
							
							<?php if(($config->get('nova_custom_menu3_menu_check_status_7') =='1') && ($config->get('nova_custom_menu3_menu_link_7' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu3_menu_url_7'); ?>" target="<?php echo $config->get('nova_custom_menu3_menu_target_7'); ?>"><?php echo $nova_custom_menu3_menu_link_7; ?></a></li>
							<?php } ?>
							
							<?php if(($config->get('nova_custom_menu3_menu_check_status_8') =='1') && ($config->get('nova_custom_menu3_menu_link_8' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu3_menu_url_8'); ?>" target="<?php echo $config->get('nova_custom_menu3_menu_target_8'); ?>"><?php echo $nova_custom_menu3_menu_link_8; ?></a></li>
							<?php } ?>
							
							<?php if(($config->get('nova_custom_menu3_menu_check_status_9') =='1') && ($config->get('nova_custom_menu3_menu_link_9' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu3_menu_url_9'); ?>" target="<?php echo $config->get('nova_custom_menu3_menu_target_9'); ?>"><?php echo $nova_custom_menu3_menu_link_9; ?></a></li>
							<?php } ?>
							
							<?php if(($config->get('nova_custom_menu3_menu_check_status_10') =='1') && ($config->get('nova_custom_menu3_menu_link_10' . $config->get('config_language_id')) !='')) { ?>
							<li><a href="<?php echo $config->get('nova_custom_menu3_menu_url_10'); ?>" target="<?php echo $config->get('nova_custom_menu3_menu_target_10'); ?>"><?php echo $nova_custom_menu3_menu_link_10; ?></a></li>
							<?php } ?>
						</ul>
					</div>
					</li>
				</ul>
			</div>
			<?php } ?>
			
			<?php if(($config->get('nova_menu_custom_block_status') =='1') && ($config->get('nova_title_custom_block_menu_form_1' . $config->get('config_language_id')) !='')) { ?>
			<div class="custom-block-menu">
				<ul>
					<li><a><span><?php echo $nova_title_custom_block_menu_form_1; ?></span></a>
					<div>
						<?php echo htmlspecialchars_decode($nova_text_custom_block_menu_form_1); ?>  
					</div>
					</li>
				</ul>
			</div>
			<?php } ?>
			
			<?php if(($config->get('nova_menu_custom_block_status') =='1') && ($config->get('nova_title_custom_block_menu_form_2' . $config->get('config_language_id')) !='')) { ?>
			<div class="custom-block-menu">
				<ul>
					<li><a><span><?php echo $nova_title_custom_block_menu_form_2; ?></span></a>
					<div>
						<?php echo htmlspecialchars_decode($nova_text_custom_block_menu_form_2); ?>  
					</div>
					</li>
				</ul>
			</div>
			<?php } ?>

			<?php if(($config->get('nova_menu_custom_block_status') =='1') && ($config->get('nova_title_custom_block_menu_form_3' . $config->get('config_language_id')) !='')) { ?>
			<div class="custom-block-menu">
				<ul>
					<li><a><span><?php echo $nova_title_custom_block_menu_form_3; ?></span></a>
					<div>
						<?php echo htmlspecialchars_decode($nova_text_custom_block_menu_form_3); ?>  
					</div>
					</li>
				</ul>
			</div>
			<?php } ?>
      
    </div>
    <!-- 
    	<?php echo $search; ?>
     -->
  </nav>
  </div>
</div>
</div>
<?php } ?>