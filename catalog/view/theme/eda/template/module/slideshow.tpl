<div id="slideshow<?php echo $module; ?>" class="homeslider">
  <ul class="bxslider">
    <?php foreach ($banners as $banner) { ?>
    <?php if ($banner['link']) { ?>
    <li><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive slider-width" /></a></li>
    <?php } else { ?>
    <li><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive slider-width" /></li>
    <?php } ?>
    <?php } ?>
  </ul>
</div>

<script type="text/javascript">
$('.bxslider').bxSlider({
  mode: 'fade',
  captions: true
});
</script>