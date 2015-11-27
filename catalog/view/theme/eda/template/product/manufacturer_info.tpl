<?php 
	$config = $this->registry->get('config');
?>
<?php echo $header; ?>
<div class="breadcrumb">
<div class="breadcrumb-content">
<h2><?php echo $heading_title; ?></h2>
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <a href="<?php echo $breadcrumb['href']; ?>"> <?php echo $breadcrumb['text']; ?><span>/</span> </a>
    <?php } ?>
</div>
</div>
 <div class="category-pd" style="padding-bottom: 40px;">
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <?php if ($products) { ?>
      <div class="row">
        <div class="pull-left" style="padding: 0px 15px;">
          <div class="btn-group">
          <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th-large"></i></button>
            <button style="margin-left: 6px;" type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
          </div>
        </div>
        
        <div class="pull-right text-right" style="padding: 0px 15px;">
          <select id="input-limit" class="form-control" onchange="location = this.value;">
            <?php foreach ($limits as $limits) { ?>
            <?php if ($limits['value'] == $limit) { ?>
            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
          <label class="control-label label-sort" for="input-limit"><?php echo $text_limit; ?></label>
        </div>
        
        <div class="pull-right text-right" style="padding: 0px 15px;">
          <select id="input-sort" class="form-control col-sm-3" onchange="location = this.value;">
            <?php foreach ($sorts as $sorts) { ?>
            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
          <label class="control-label label-sort" for="input-sort"><?php echo $text_sort; ?></label>
        </div>
        
      </div>
      <br />
      <div class="row">
        <?php foreach ($products as $product) { ?>
        <div class="product-layout product-list col-xs-12">
          <div class="product-thumb category-thumb">
      <div class="image image-list item-product-image-box">
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
      
      <div class="row image-grid">
      <div class="image col-md-4 col-sm-4">
      <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
       
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
     
      <div class="caption caption-list col-md-8 col-sm-8">
        <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
        
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
        
        <p class="description"><?php echo $product['description']; ?></p>
        
        <div class="button-group button-group-list">
        
        <?php if ($product['price']) { ?>
        <div class="price pull-left">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $product['special']; ?></span><span class="price-sep">-</span><span class="price-old"><?php echo $product['price']; ?></span>
          
        <?php } ?>
        </div>
        <?php } ?>
        
        <div class="pull-right">      
	        <div class="cart-compare pull-left">
	        <button type="button" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart-o"></i></button>
	        <button type="button" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
	        </div>
	        <div class="name pull-right">
	        <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></button></div>
        </div>
      </div>
      </div>
      
       </div>
            
      
      <div class="caption caption-grid">
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
      
      <div class="button-group button-group-grid">
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
      <div class="row">
        <div class="col-sm-12 text-right"><?php echo $pagination; ?></div>
      </div>
      <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
</div>
<?php echo $footer; ?> 