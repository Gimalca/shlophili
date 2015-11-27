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
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/jquery/flex/owl.carousel.js" type="text/javascript"></script>
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/eda/stylesheet/stylesheet.css" rel="stylesheet">
<link href="catalog/view/theme/eda/stylesheet/nova.css" rel="stylesheet">
<link href="catalog/view/theme/eda/stylesheet/cloud-zoom.css" rel="stylesheet">
<link href="catalog/view/javascript/jquery/flex/owl.carousel.css" rel="stylesheet">
<script src="catalog/view/javascript/jquery/jquery.sticky.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/scrolltopcontrol.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/colorbox/jquery.colorbox-min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/jquery/colorbox/colorbox.css" rel="stylesheet">
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

	/* Header */
	#top{
		background-color:<?php echo $config->get('nova_header_background_color'); ?>;
	}
	
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
	
	#top .btn-link, #top-links li, #top-links a, .list-group a, .product-list .product-thumb h4 a, .product-content .rating a, .product-list .product-thumb .cart-compare button, .category-pd .list-group label, .content-my-account li a{
		color:<?php echo $config->get('nova_body_link_color'); ?>;
	}
	
	#top .btn-link:hover, #top-links li:hover, #top-links a:hover, .list-group a:hover, .product-list .product-thumb h4 a:hover, .product-content .rating a:hover, .product-list .product-thumb .cart-compare button:hover, .list-group a:hover, .product-thumb .button-group button:hover, .product-thumb h4 a:hover{
		color:<?php echo $config->get('nova_body_link_color_hover'); ?>;
	}
	
	#menu > div > div > ul > li.active a, #top .btn-link strong, #cart span b, .product-thumb .price, .list-group a.active, .list-group a.active:hover, .tab-content-description li.active a{
		color:<?php echo $config->get('nova_body_active_color'); ?>;
	}
	.pagination > .active > a, .pagination > .active > span, .pagination > .active > a:hover, .pagination > .active > span:hover, .pagination > .active > a:focus, .pagination > .active > span:focus{
		background:<?php echo $config->get('nova_body_active_color'); ?>;
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