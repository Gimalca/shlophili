<?php 
	$config = $this->registry->get('config');
	$id_slide_special = rand();
?>
<div class="latest-product-content nova-widget-style-">
<h3 class="spb_heading"><p><?php echo $heading_title; ?></p><div class="heading-icon"></div></h3>
<div class="row product-layout product-slider product-list-slider slide-special-id-<?php echo $id_slide_special ?> hidden-buttons">
<div class="slides">
  <?php foreach ($products as $product) { ?>
  <div class="product-inner">
    <div class="product-thumb transition">
      <div class="image item-product-image-box">
      <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
      <div class="product-hover-box">
      <a class="a-hover" href="<?php echo $product['href']; ?>"></a>
      <?php if($config->get('nova_link_label_product_style')== '1') { ?> 
      	<a class="act-imageview-button" href="<?php echo $product['href']; ?>"><i class="fa fa-chain"></i></a>
      	<?php } ?>
      	<?php if($config->get('nova_quickview_label_product_style')== '1') { ?> 
      	<a class="quickview-colorbox" href="<?php echo $product['href_qv'];?>"><i class="fa fa-search-plus"></i></a>
      	<?php } ?>
      </div>
      
      <?php if ($product['rating']) { ?>
        <div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>
        <?php } ?>
       
        <?php
			$startDate1 = strtotime(mb_substr($product['startdate'], 0, 10));
			$endDate2 = strtotime(date("Y-m-d"));
			$days = ceil(($endDate2 / 86400)) - ceil(($startDate1 / 86400));
		?>
		<?php if( $days < $config->get('nova_new_label_product')) { ?>
		<div class="new_label_product">
			<span class="product-label-new"><?php echo $text_new; ?></span>
		</div>
		<?php } ?>
		
		<?php if($config->get('nova_sale_product_style')) { ?>
			<?php if ($product['special']) { ?>
			<div class="sale_label_product">
			  <span class="product-label-sale"><?php echo $text_sale; ?></span>
		    </div>
		    <?php } ?>
	    <?php } ?>
      
      </div>
      <div class="caption">
        <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
        <?php if ($product['price']) { ?>
        <p class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $product['special']; ?></span><span class="price-sep">-</span><span class="price-old"><?php echo $product['price']; ?></span>
          
        <?php } ?>
        </p>
        <?php } ?>
      </div>       
      
      <div class="button-group">
      <div class="name pull-left">
        <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></button></div>
        <div class="cart-compare pull-right">
        <button type="button" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart-o"></i></button>
        <button type="button" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
        </div>
      </div>
    </div>
  </div>
  <?php } ?>
</div>
</div>
</div>
<script type="text/javascript">
$(window).load(function() {
$('.slide-special-id-<?php echo $id_slide_special ?> .slides').owlCarousel({
	autoPlay: 300000, //Set AutoPlay to 3 seconds
	items :4,
	itemsDesktop : [1000,3], //5 items between 1000px and 901px
	itemsDesktopSmall : [900,3], // 3 items betweem 900px and 601px
	itemsTablet: [600,2], //2 items between 600 and 0;
	itemsMobile : [320,1],
	slideSpeed :1000,
	navigation : true,
	paginationNumbers : true,
	pagination : false,
	stopOnHover : false,
	});
});
</script>