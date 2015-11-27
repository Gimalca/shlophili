<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb" style="display: none;">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
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
      <h1 class="register-account-title"><?php echo $heading_title; ?></h1>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <fieldset class="register-form">
          <h2 class="legend"><?php echo $text_your_email; ?></h2>
          <p class="text-email"><?php echo $text_email; ?></p>
          <div class="form-group required">
            <label class="control-label label-custom-size" for="input-email"><?php echo $entry_email; ?></label>
            <div>
              <input type="email" name="email" value="" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
            </div>
          </div>
        </fieldset>
        <div class="buttons clearfix" style="padding-top: 5px;">
          <div class="pull-left back-button"><a href="<?php echo $back; ?>"><small> << </small> <?php echo $button_back; ?></a></div>
          <div class="pull-left btn-create-account">
            <input type="submit" value="<?php echo $button_continue; ?>" class="btn btn-primary" />
          </div>
        </div>
      </form>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>