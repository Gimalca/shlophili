<?php
$config = $this->registry->get('config');
?>
<footer>
<!-- <div class="footer-top">
  <div class="container">
    <div class="row">
    
    <?php if(($config->get('nova_show_twitter_box') =='1') || ($config->get('nova_footer_block') =='1')) { ?>
    <div class="col-sm-7">
    <div class="row">
      <?php if ($informations) { ?>
      <div class="col-sm-3">
        <h5>
        <div class="heading-icon"></div>
        <span><?php echo $text_information; ?></span>
        </h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
      <div class="col-sm-3">
        <h5>
        <div class="heading-icon"></div>
        <span><?php echo $text_service; ?></span>
        </h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5>
        <div class="heading-icon"></div>
        <span><?php echo $text_extra; ?></span>
        </h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5>
        <div class="heading-icon"></div>
        <span><?php echo $text_account; ?></span>
        </h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
    	</div>
   </div>
    	
    <div class="col-sm-5">
    	<div class="row">
		    <?php if( $config->get('nova_show_twitter_box')== 1) { ?> 
    			<div class="col-sm-6">
      			<h5>
      			<div class="heading-icon"></div>
      			<span>Latest Twitter</span>
      			</h5>
      			<ul class="list-unstyled">
      			  
      				<div class="twitter_box">
      				  <?php if($config->get('nova_twitter_name_box_url') != '') { ?>
      					  <p><a class="twitter-timeline"  href="https://twitter.com/<?php echo $nova_twitter_name_box_url;?>" data-chrome="noheader nofooter noborders noscrollbar transparent" data-tweet-limit="<?php echo $nova_twitter_count_column;?>"  data-widget-id="<?php echo $nova_twitter_widget_id;?>" data-theme="light" data-related="twitterapi,twitter" data-aria-polite="assertive">Tweets by <?php echo $nova_twitter_name_box_url;?></a>
      					<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
      					  </p>
      				  <?php } ?>
      				</div>
      			</ul>
    			</div>
    			</di>
			<?php } ?>
			
			<?php if( $config->get('nova_footer_block')== 1) { ?> 
			<div class="col-sm-6">
  			<h5>
  			<div class="heading-icon"></div>
  			<span>SHOP LOCATION</span>
  			</h5>
  			<ul class="list-unstyled">
  				<div class="twitter_box">
  				  <?php echo htmlspecialchars_decode($nova_text_custom_block_footer); ?>
  				</div>
  			</ul>
			</div>
			<?php } ?>
    	</div>
    </div>
    <?php } else { ?>
    	<?php if ($informations) { ?>
      <div class="col-sm-3">
        <h5>
        <div class="heading-icon"></div>
        <span><?php echo $text_information; ?></span>
        </h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
      <div class="col-sm-3">
        <h5>
        <div class="heading-icon"></div>
        <span><?php echo $text_service; ?></span>
        </h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5>
        <div class="heading-icon"></div>
        <span><?php echo $text_extra; ?></span>
        </h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5>
        <div class="heading-icon"></div>
        <span><?php echo $text_account; ?></span>
        </h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
    <?php } ?>
    	
 	
    </div>
  </div>
</div> -->

<div class="powered">
<div class="container" style="background-color: transparent !important;">
  <?php if($config->get('nova_copyright_status')== '1') { ?>
  <div class="pull-left mobile-footer"><?php echo htmlspecialchars_decode($nova_text_custom_block_copyright); ?> </div>
  <?php } else { ?>
  <div class="pull-left mobile-footer">
  <p><?php echo $powered; ?></p>
  </div>
  <?php } ?>
  <?php if($config->get('nova_payment_status')== '1') { ?>
    <!-- <div class="pull-right mobile-footer">
      <ul class="payment">
      	<?php if($config->get('nova_payment_checkbox_01')== '1') { ?>
    	  <li><a href="<?php echo $config->get('nova_payment_url_01'); ?>" target="_blank">
    		  <img src="catalog/view/theme/eda/image/payment/payment_image_paypal.png" alt="paypal" title="paypal"></a>
    	  </li>
    	 <?php } ?>
    	 <?php if($config->get('nova_payment_checkbox_02')== '1') { ?>
    	  <li><a href="<?php echo $config->get('nova_payment_url_02'); ?>" target="_blank">
    		  <img src="catalog/view/theme/eda/image/payment/payment_image_visa.png" alt="visa" title="visa"></a>
    	  </li>
    	  <?php } ?>
    	  <?php if($config->get('nova_payment_checkbox_03')== '1') { ?>
    	  <li><a href="<?php echo $config->get('nova_payment_url_03'); ?>" target="_blank">
    		  <img src="catalog/view/theme/eda/image/payment/payment_image_mastercard.png" alt="mastercard" title="mastercard"></a>
    	  </li>
    	  <?php } ?>
    	  <?php if($config->get('nova_payment_checkbox_04')== '1') { ?>
    	  <li><a href="<?php echo $config->get('nova_payment_url_04'); ?>" target="_blank">
    		  <img src="catalog/view/theme/eda/image/payment/payment_image_maestro.png" alt="maestro" title="maestro"></a>
    	  </li>
    	  <?php } ?>
    	  <?php if($config->get('nova_payment_checkbox_05')== '1') { ?>
    	  <li><a href="<?php echo $config->get('nova_payment_url_05'); ?>" target="_blank">
    		  <img src="catalog/view/theme/eda/image/payment/payment_image_discover.png" alt="discover" title="discover"></a>
    	  </li>
    	  <?php } ?>
    	  <?php if($config->get('nova_payment_checkbox_06')== '1') { ?>
    	  <li><a href="<?php echo $config->get('nova_payment_url_06'); ?>" target="_blank">
    		  <img src="catalog/view/theme/eda/image/payment/payment_image_moneybookers.png" alt="moneybookers" title="moneybookers"></a>
    	  </li>
    	  <?php } ?>
    	  <?php if($config->get('nova_payment_checkbox_07')== '1') { ?>
    	  <li><a href="<?php echo $config->get('nova_payment_url_07'); ?>" target="_blank">
    		  <img src="catalog/view/theme/eda/image/payment/payment_image_american_express.png" alt="american_express" title="american_express"></a>
    	  </li>
    	  <?php } ?>
    	  <?php if($config->get('nova_payment_checkbox_08')== '1') { ?>
    	  <li><a href="<?php echo $config->get('nova_payment_url_08'); ?>" target="_blank">
    		  <img src="catalog/view/theme/eda/image/payment/payment_image_cirrus.png" alt="cirrus" title="cirrus"></a>
    	  </li>
    	  <?php } ?>
    	  <?php if($config->get('nova_payment_checkbox_09')== '1') { ?>
    	  <li><a href="<?php echo $config->get('nova_payment_url_09'); ?>" target="_blank">
    		  <img src="catalog/view/theme/eda/image/payment/payment_image_delta.png" alt="delta" title="delta"></a>
    	  </li>
    	  <?php } ?>
    	  <?php if($config->get('nova_payment_checkbox_10')== '1') { ?>
    	  <li><a href="<?php echo $config->get('nova_payment_url_10'); ?>" target="_blank">
    		  <img src="catalog/view/theme/eda/image/payment/payment_image_google.png" alt="google" title="google"></a>
    	  </li>
    	  <?php } ?>
    	  <?php if($config->get('nova_payment_checkbox_11')== '1') { ?>
    	  <li><a href="<?php echo $config->get('nova_payment_url_11'); ?>" target="_blank">
    		  <img src="catalog/view/theme/eda/image/payment/payment_image_2co.png" alt="2co" title="2co"></a>
    	  </li>
    	  <?php } ?>
    	  <?php if($config->get('nova_payment_checkbox_12')== '1') { ?>
    	  <li><a href="<?php echo $config->get('nova_payment_url_12'); ?>" target="_blank">
    		  <img src="catalog/view/theme/eda/image/payment/payment_image_sage.png" alt="sage" title="sage"></a>
    	  </li>
    	  <?php } ?>
    	  <?php if($config->get('nova_payment_checkbox_13')== '1') { ?>
    	  <li><a href="<?php echo $config->get('nova_payment_url_13'); ?>" target="_blank">
    		  <img src="catalog/view/theme/eda/image/payment/payment_image_solo.png" alt="solo" title="solo"></a>
    	  </li>
    	  <?php } ?>
    	  <?php if($config->get('nova_payment_checkbox_14')== '1') { ?>
    	  <li><a href="<?php echo $config->get('nova_payment_url_14'); ?>" target="_blank">
    		  <img src="catalog/view/theme/eda/image/payment/payment_image_switch.png" alt="switch" title="switch"></a>
    	  </li>
    	  <?php } ?>
    	  <?php if($config->get('nova_payment_checkbox_15')== '1') { ?>
    	  <li><a href="<?php echo $config->get('nova_payment_url_15'); ?>" target="_blank">
    		  <img src="catalog/view/theme/eda/image/payment/payment_image_western_union.png" alt="western_union" title="western_union"></a>
    	  </li>
    	  <?php } ?>
      </ul>
    </div> -->
  <?php } ?>
</div>
</div>
</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//--> 

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->
</div>
</body></html>