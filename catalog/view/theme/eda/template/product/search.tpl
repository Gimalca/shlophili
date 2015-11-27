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
 <div class="category-pd fondo-azul" style="padding-bottom: 40px;">
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?> title-manufacturer"><?php echo $content_top; ?>
    <div class="col-sm-11 imgnotice">
        <h1 style="color: #fff; position: absolute; top:0; left:0; padding-right:20px; font-size:70px;">BUSCAR PRODUCTOS</h1>
      </div>
      <!-- <h1><?php echo $heading_title; ?></h1> -->
      <label class="control-label" for="input-search"><?php echo $entry_search; ?></label>
      <div class="row">
        <div class="col-sm-4">
          <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_keyword; ?>" id="input-search" class="form-control" />
        </div>
        <div class="col-sm-3">
          <select name="category_id" class="form-control">
            <option value="0"><?php echo $text_category; ?></option>
            <?php foreach ($categories as $category_1) { ?>
            <?php if ($category_1['category_id'] == $category_id) { ?>
            <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
            <?php } ?>
            <?php foreach ($category_1['children'] as $category_2) { ?>
            <?php if ($category_2['category_id'] == $category_id) { ?>
            <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
            <?php } ?>
            <?php foreach ($category_2['children'] as $category_3) { ?>
            <?php if ($category_3['category_id'] == $category_id) { ?>
            <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
        <div class="col-sm-3">
          <label class="checkbox-inline">
            <?php if ($sub_category) { ?>
            <input type="checkbox" name="sub_category" value="1" checked="checked" />
            <?php } else { ?>
            <input type="checkbox" name="sub_category" value="1" />
            <?php } ?>
            <?php echo $text_sub_category; ?></label>
        </div>
      </div>
      <p>
        <label class="checkbox-inline">
          <?php if ($description) { ?>
          <input type="checkbox" name="description" value="1" id="description" checked="checked" />
          <?php } else { ?>
          <input type="checkbox" name="description" value="1" id="description" />
          <?php } ?>
          <?php echo $entry_description; ?></label>
      </p>
      <input type="button" value="<?php echo $button_search; ?>" id="button-search" class="btn btn-primary" />
      <h2 class="title-search"><?php echo $text_search; ?></h2>
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
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
</div>
<?php echo $footer; ?> 
<script type="text/javascript"><!--
$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';
	
	var search = $('#content input[name=\'search\']').prop('value');
	
	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').prop('value');
	
	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}
	
	var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');
	
	if (sub_category) {
		url += '&sub_category=true';
	}
		
	var filter_description = $('#content input[name=\'description\']:checked').prop('value');
	
	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

$('#content input[name=\'search\']').bind('keydown', function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').on('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').prop('disabled', true);
	} else {
		$('input[name=\'sub_category\']').prop('disabled', false);
	}
});

$('select[name=\'category_id\']').trigger('change');
--></script>