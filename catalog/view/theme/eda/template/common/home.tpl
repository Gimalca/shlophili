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
            
            <div id="myCarousel" class="carousel slide" data-ride="carousel" style="margin-top: 150px">
                <!-- Indicators
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                </ol> -->

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <div class="row">
                            <div class="col-sm-3">
                                <a href="index.php?route=product/category&path=33" >
                                    <img style="max-width: 50%;" src="http://localhost/shlophili/image/cache/catalog/brands/versace.png">  
                                </a>
                                
                            </div>
                            <div class="col-sm-3">
                                <a href="index.php?route=product/category&path=25">
                                    <img style="max-width: 75%; padding-top: 23px;" src="http://localhost/shlophili/image/cache/catalog/brands/tw-steel.png">
                                </a>
                            </div>
                            <div class="col-sm-3">
                                <a href="#">
                                    <img style="padding-top: 43px;" src="http://localhost/shlophili/image/cache/catalog/brands/logo_ippocampo.png">
                                </a>
                                
                            </div>
                            <div class="col-sm-3">
                                <a href="index.php?route=product/category&path=75">
                                    <img style="max-width: 90%; padding-top: 11px;" src="http://localhost/shlophili/image/cache/catalog/brands/chrysalis_w.png">
                                </a>    
                            </div>
                        </div>
                    </div>

                    <div class="item">
                        <div class="row">
                            <div class="col-sm-3">
                                <a href="index.php?route=product/category&path=33" >
                                    <img style="max-width: 50%;" src="http://localhost/shlophili/image/cache/catalog/brands/versace.png">  
                                </a>
                                
                            </div>
                            <div class="col-sm-3">
                                <a href="index.php?route=product/category&path=25">
                                    <img style="max-width: 75%; padding-top: 23px;" src="http://localhost/shlophili/image/cache/catalog/brands/tw-steel.png">
                                </a>
                            </div>
                            <div class="col-sm-3">
                                <a href="index.php?route=product/category&path=75">
                                    <img style="padding-top: 43px;" src="http://localhost/shlophili/image/cache/catalog/brands/logo_ippocampo.png">
                                </a>
                                
                            </div>
                            <div class="col-sm-3">
                                <a href="index.php?route=product/category&path=74">
                                    <img style="max-width: 90%; padding-top: 11px;" src="http://localhost/shlophili/image/cache/catalog/brands/chrysalis_w.png">
                                </a>    
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            
            <div style="margin-top: 50px;" class="row">
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