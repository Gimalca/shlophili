<div class="pull-right">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="language">
  <div class="top-language">
    <span><?php echo $text_language; ?></span>
    <ul class="pull-right">
      <?php foreach ($languages as $language) { ?>
      <?php if ($language['code'] == $code) { ?>
      <li class="active"><a href="<?php echo $language['code']; ?>"><img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" /></a></li>
      <?php } else { ?>
      <li><a href="<?php echo $language['code']; ?>"><img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" /></a></li>
      <?php } ?>
      <?php } ?>
    </ul>
  </div>
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
</div>
