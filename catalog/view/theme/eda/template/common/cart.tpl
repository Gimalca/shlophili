<div id="cart" class="btn-group pull-right">
  <div class="cart-content"><i class="fa fa-shopping-cart"></i><span class="heading-title"><?php echo $heading_title; ?></span><span id="cart-total"><?php echo $text_items; ?></span></div>
  <ul class="dropdown-shopping-cart arrow pull-right">
    <?php if ($products || $vouchers) { ?>
    <li>      
        <?php foreach ($products as $product) { ?>
        <div class="content-minicart" style="clear: both;">
          <div class="pull-left"><?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
            <?php } ?></div>
            <div style="margin-left: 90px;">
          <div class="text-left"><a class="name" href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
            <?php if ($product['option']) { ?>
            <?php foreach ($product['option'] as $option) { ?>
            <br />
            - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
            <?php } ?>
            <?php } ?>
            <?php if ($product['recurring']) { ?>
            <br />
            - <small><?php echo $text_recurring; ?> <?php echo $product['recurring']; ?></small>
            <?php } ?>
            <div class="pull-right remove-item"><a onclick="cart.remove('<?php echo $product['key']; ?>');" title="<?php echo $button_remove; ?>"><i class="fa fa-trash-o"></i></a></div>
            </div>
            <div style="padding: 7px 0px;"><div class="pull-left quantity">Qty: <?php echo $product['quantity']; ?></div><div class="price"><?php echo $product['total']; ?></div></div>         
          </div>
        </div>
        <?php } ?>
        
        <?php foreach ($vouchers as $voucher) { ?>
        <tr>
          <td class="text-center"></td>
          <td class="text-left"><?php echo $voucher['description']; ?></td>
          <td class="text-right">x&nbsp;1</td>
          <td class="text-right"><?php echo $voucher['amount']; ?></td>
          <td class="text-center text-danger"><button type="button" onclick="voucher.remove('<?php echo $voucher['key']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button></td>
        </tr>
        <?php } ?>
    </li>
    <li style="clear: both;">
      <div  style="padding-top:20px">
        <table class="table-cart">
          <?php foreach ($totals as $total) { ?>
          <tr>
            <td class="text-right" style="width: 270px; padding-left: 20px;"><strong><?php echo $total['title']; ?>:</strong></td>
            <td class="text-left" style="padding-right: 20px;"><?php echo $total['text']; ?></td>
          </tr>
          <?php } ?>
        </table>
        <div class="cart-item">
        <p class="text-center"><a class="view-cart" href="<?php echo $cart; ?>"><span><?php echo $text_cart; ?></span><span><?php echo $text_cart; ?></span></a><a class="check-out-cart" href="<?php echo $checkout; ?>"> <span><?php echo $text_checkout; ?></span><span><?php echo $text_checkout; ?></span></a></p>
        </div>
      </div>
    </li>
    <?php } else { ?>
    <li>
      <p class="text-center"><?php echo $text_empty; ?></p>
    </li>
    <li>
    <div class="cart-item">
      <p class="text-center"><a class="view-cart" href="<?php echo $cart; ?>"><span><?php echo $text_cart; ?></span><span><?php echo $text_cart; ?></span></a><a class="check-out-cart" href="<?php echo $checkout; ?>"> <span><?php echo $text_checkout; ?></span><span><?php echo $text_checkout; ?></span></a></p>
      </div>
    </li>
    <?php } ?>
  </ul>
</div>
