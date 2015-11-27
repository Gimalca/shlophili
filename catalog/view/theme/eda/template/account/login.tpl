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
      <div class="row">
        <!-- <div class="col-sm-6">
          <div class="register-form-create">
            <h2><?php echo $text_new_customer; ?></h2>
            <p><?php echo $text_register; ?></p>
            <p><?php echo $text_register_account; ?></p>
            <div class="text-right btn-button-login">
            <a href="<?php echo $register; ?>" class="btn btn-primary "><span><?php echo $button_continue; ?></span><span><?php echo $button_continue; ?></span></a></div></div>
        </div> -->
        <div class="col-sm-offset-4 col-sm-4">
          <div class="well">
            <!-- <h2><?php echo $text_returning_customer; ?></h2>
            <p><?php echo $text_i_am_returning_customer; ?></p> -->
            <br><br>
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
              <div class="form-group">
                <!-- <label class="control-label" for="input-email"><?php echo $entry_email; ?></label> -->
                <input type="text" name="email" value="<?php echo $email; ?>" placeholder="Correo Electrónico" id="input-email" class="form-control" />
              </div>
              <div class="form-group">
                <!-- <label class="control-label" for="input-password"><?php echo $entry_password; ?></label> -->
                <input type="password" name="password" value="<?php echo $password; ?>" placeholder="Contraseña" id="input-password" class="form-control" />
                <br>
                <div class="row">
                  <div class="col-sm-7">
                    <a class="forgotten-text" style="color: #fff;" href="<?php echo $forgotten; ?>">¿Olvidó su contraseña?</a>
                  </div>
                  <div class="col-sm-4" style="text-align:center;">
                    <div class="btn-button-login">
                      <a>
                        <span>
                          <input type="submit" value="<?php echo $button_login; ?>" class="btn btn-primary" />
                        </span>
                        <span>
                          <input type="submit" value="<?php echo $button_login; ?>" class="btn btn-primary" />
                        </span>
                      </a>
                    </div>
                  </div>
                </div>
              <?php if ($redirect) { ?>
              <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
              <?php } ?>
              </div>
            </form>
          </div>
        </div>
      </div>
      <?php echo $content_bottom; ?>
    </div>
    <!--?php echo $column_right; ?-->
  </div>
</div>
<?php echo $footer; ?>