<?php
/*
  Project: Restricted Product Access
  Author : karapuz <support@ka-station.com>

  Version: 3 ($Revision: 10 $)

*/?>
<?php echo $header; ?><?php echo $column_left; ?>

<div id="content">

<style type="text/css">
.cron_notice {
  
}

table.list td.msg_not_found {
  background-color: yellow;
  color: black;
}

table.list td.msg_installed {
  background-color: #7FFF00;
  color: black;
}

table.list td.msg_wrong {
  background-color: red;
  color: black;
}

</style>

  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-input" data-toggle="tooltip" title="<?php echo $this->t('button_save'); ?>" class="btn btn-primary"><i class="fa fa-check-circle"></i> <?php echo $this->t('button_save'); ?></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $this->t('button_cancel'); ?>" class="btn btn-default"><i class="fa fa-reply"></i>  <?php echo $this->t('button_cancel'); ?></a>
      </div>
      <h1><i class="fa fa-puzzle-piece"></i> <?php echo $heading_title; ?></h1>
      <?php echo $ka_breadcrumbs; ?>
    </div>
  </div>

	<div class="container-fluid">
		<?php echo $ka_top; ?>

		<div class="panel panel-default">
		<div class="panel-body">
		  
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-input">
      <input type="hidden" name="mode" value="" id="mode" />
      
			<div id="service_line">
				<table>
					<tr>
						<td><b>Author</b>: karapuz&nbsp;&nbsp;&nbsp;</td>
						<td><b>Contact Us</b>: <a href="mailto:support@ka-station.com">via email</a>&nbsp;&nbsp;&nbsp;</td>
						<td><a href="https://www.ka-station.com/index.php?route=information/contact" target="_blank">via secure form at www.ka-station.com</a>&nbsp;&nbsp;&nbsp;</td>
					</tr>
				</table>
				<br />
			</div>
      
      <table class="table table-striped table-bordered table-hover">
        <thead> 
          <tr>
            <td style="width: 360px" class="text-left">Setting</td>
            <td class="text-left">Value</td>
          </tr>
        </thead>
        <tbody>

          <tr>
            <td class="left" width="70%">Version          
            </td>
            <td class="left" width="30%">
              <?php echo $extension_version; ?>
            </td>
          </tr>
          
          <tr>
            <td class="left">Display the login page instead of 'Access denied' for non-logged in users</span></td>
            <td class="left">
              <input type="checkbox" name="ka_pa_show_login_page" value="Y" <?php if ($ka_pa_show_login_page == 'Y') { ?> checked="checked" <?php } ?> />
            </td>
          </tr>
          
          <tr>
            <td class="left">Do not save a state of the propagation checkbox for categories</td>
            <td class="left">
              <input type="checkbox" name="ka_pa_no_propagation" value="Y" <?php if ($ka_pa_no_propagation == 'Y') { ?> checked="checked" <?php } ?> />
            </td>
          </tr>
          
          <tr>
            <td class="left">Visibility of Restricted Products
            </td>
            <td class="left">
              <?php KaElements::showSelector('ka_pa_visibility', $product_visibilities, $ka_pa_visibility); ?>
            </td>
          </tr>
          
          <tr>
            <td class="left">Page URL for purchasing the customer group
            <span class="help">The url will be visible to customers.<br />
<?php
/* paid groups not available yet for           
            The <a target="_blank" href="http://www.ka-station.com/ka-extensions/paid_customer_groups">'Paid Customer Groups'</a> 
            extension can be used for selling customer groups online
*/            
?>            
            </span>
            </td>            
            <td class="left">
              <input type="text" name="ka_pa_purchase_url" value="<?php echo $ka_pa_purchase_url; ?>" />
              <?php if (!empty($error['ka_pa_purchase_url'])) { ?>
                <span class="error"><?php echo $error['ka_pa_purchase_url'];?></span>
              <?php } ?>
            </td>
          </tr>

        </tbody>
      </table>
    </form>
    </div>
    </div>
  </div>
</div>

<script type="text/javascript"><!--

//--></script>

<?php echo $footer; ?>