<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb" style="display: none;">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-warning"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1 class="register-account-title"><?php echo $text_address_book; ?></h1>
      <?php if ($addresses) { ?>
      <table class="table table-bordered table-hover boder-none">
        <?php foreach ($addresses as $result) { ?>
        <tr>
          <td class="text-left" style="font-size: 12px;"><?php echo $result['address']; ?></td>
          <td class="text-right"><a href="<?php echo $result['update']; ?>" class="btn btn-info"><?php echo $button_edit; ?></a> &nbsp; <a href="<?php echo $result['delete']; ?>" class="btn btn-danger"><?php echo $button_delete; ?></a></td>
        </tr>
        <?php } ?>
      </table>
      <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <?php } ?>
      <div class="buttons clearfix" style="padding-top: 5px;">
          <div class="pull-left back-button"><a href="<?php echo $back; ?>"><small> << </small> <?php echo $button_back; ?></a></div>
          <div class="pull-left btn-create-account">
            <input type="submit" value="<?php echo $button_new_address; ?>" class="btn btn-primary" />
          </div>
        </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>