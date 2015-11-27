<?php if (count($currencies) > 1) { ?>
<div class="pull-right mobile-currency">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="currency">
  <div class="top-currency">
    <div class="btn-link dropdown-toggle" data-toggle="dropdown">
    <span><?php echo $text_currency; ?>:</span>
    <?php foreach ($currencies as $currency) { ?>
    <?php if ($currency['symbol_left'] && $currency['code'] == $code) { ?>
    <strong><?php echo $currency['code']; ?></strong>
    <?php } elseif ($currency['symbol_right'] && $currency['code'] == $code) { ?>
    <strong><?php echo $currency['code']; ?></strong>
    <?php } ?>
    <?php } ?>
    </div>
    <ul class="dropdown-top-links arrow">    	
      <?php foreach ($currencies as $currency) { ?>
      <?php if ($currency['code'] == $code) { ?>
      <li class="active"><a class="currency-select btn btn-link btn-block" type="button" name="<?php echo $currency['code']; ?>"><?php echo $currency['title']; ?></a></li>
      <?php } else { ?>
      <li><a class="currency-select btn btn-link btn-block" type="button" name="<?php echo $currency['code']; ?>"><?php echo $currency['title']; ?></a></li>
      <?php } ?>
      <?php } ?>
    </ul>
  </div>
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
</div>
<?php } ?>
