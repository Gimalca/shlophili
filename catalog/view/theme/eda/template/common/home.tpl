<?php echo $header; ?>
<?php echo $home_slider; ?>
<div class="main-content" style="max-height: 75vh;">
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
        <div class="col-sm-12 imghome"><br>
            <!-- <div class="row">
                <div class="col-sm-12">
                    <br><br>
                    <h4 style="color: #fff; text-align: center">EL GRUPO SHLOPHILI ofrece una selección de relojería y joyería exclusiva de las mas importantes casas del mundo " fashion".</h4>
                    <br>            
                    <h4 style="color: #fff; text-align: center">Somos DISTRIBUIDORES EXCLUSIVOS para Centro y Sur América de reconocidas marcas.</h4>
                </div>
            </div> -->
            <div class="row">
                <div class="col-sm-3">
                    <img style="max-width: 50%;" src="http://localhost/shlophili/image/cache/catalog/brands/versace.png">
                </div>
                <div class="col-sm-3">
                    <img style="max-width: 75%; padding-top: 23px;" src="http://localhost/shlophili/image/cache/catalog/brands/tw-steel.png">
                </div>
                <div class="col-sm-3">
                    <img style="padding-top: 43px;" src="http://localhost/shlophili/image/cache/catalog/brands/logo_ippocampo.png">
                </div>
                <div class="col-sm-3">
                    <img style="max-width: 90%; padding-top: 11px;" src="http://localhost/shlophili/image/cache/catalog/brands/chrysalis_w.png">
                </div>
            </div>
            <div style="margin-top: 250px;" class="row">
                <center><a href="http://localhost/shlophili/index.php?route=account/login"><button type="button" class="btn btn-default">Si es Agente Autorizado haga click aqu&iacute;</button></a></center>
            </div>
            <!-- <div class="row">
                <div class="col-sm-offset-5 col-sm-7">
                    <br><br>
                    <h3 style="color: #fff; text-align: right">EL GRUPO SHLOPHILI ofrece una selección de relojería y joyería exclusiva de las mas importantes casas del mundo " fashion".</h3>
                    <br>            
                    <h3 style="color: #fff; text-align: right">Somos DISTRIBUIDORES EXCLUSIVOS para Centro y Sur América de reconocidas marcas.</h3>
                </div>
            </div>
            <br><br>
            <div class="row">
                <div class="col-sm-offset-6 col-sm-3">
                    <img src="http://localhost/shlophili/image/cache/catalog/brands/PASAVENTO.png">
                </div>
                <div class="col-sm-3">
                    <img src="http://localhost/shlophili/image/cache/catalog/brands/SALVATORE_FERRAGAMO.png">
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-sm-offset-6 col-sm-6">
                    <center>
                        <img src="http://localhost/shlophili/image/cache/catalog/brands/TW_STEEL.png">
                    </center>
                </div>
            </div> -->
            <!-- <br>
            <div class="row">
                <div class="col-sm-offset-6 col-sm-3">
                    <img src="http://localhost/shlophili/image/cache/catalog/brands/TENDENCE.png">
                </div>
                <div class="col-sm-3">
                    <img src="http://localhost/shlophili/image/cache/catalog/brands/VERSACE.png">
                </div>
            </div> -->
        </div>
        <?php echo $content_top; ?>
        <?php echo $content_bottom; ?>
    </div>
    <?php echo $column_right; ?></div>
</div>
</div>
<?php echo $footer; ?>