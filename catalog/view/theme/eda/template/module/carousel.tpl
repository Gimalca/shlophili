<h3 class="spb_heading">
	<p>SHOP BY BRANDS</p>
	<div class="heading-icon"></div>
</h3>
<div class="row">
<div id="carousel<?php echo $module; ?>" class="carousel product-slider brands-slider hidden-buttons" style="margin-bottom: 50px;">
  <ul class="slides">
    <?php foreach ($banners as $banner) { ?>
    <?php if ($banner['link']) { ?>
    <li><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a></li>
    <?php } else { ?>
    <li class="brand-img"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></li>
    <?php } ?>
    <?php } ?>
  </ul>
</div>
</div>
<script type="text/javascript">
$(window).load(function() {
$('#carousel<?php echo $module; ?> .slides').owlCarousel({
	autoPlay: 300000, //Set AutoPlay to 3 seconds
	items :6,
	itemsDesktop : [1000,5], //5 items between 1000px and 901px
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