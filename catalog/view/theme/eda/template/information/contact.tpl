<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb" style="display: none;">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <!--h1 class="register-account-title"><?php echo $heading_title; ?></h1>    
      		<div style="font-size: 18px; color: rgb(32, 32, 32); padding-bottom: 15px;">Map</div>
      		<div class="contact-location">
                <div id="contact-map"></div>
            </div-->
			<!--style>
			.gm-style img {max-width: none;}
			</style-->
            <!--script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&language=en"></script>
            <script type="text/javascript" src="catalog/view/javascript/googlemap/gmap3.min.js"></script>
            <script type="text/javascript" src="catalog/view/javascript/googlemap/gmap3.infobox.js"></script>
            <script type="text/javascript">
                var mapDiv, map, infobox;
                var lat = <?php echo isset($themeConfig['location_latitude'])?$themeConfig['location_latitude']:'40.705423'; ?>;
                var lon = <?php echo isset($themeConfig['location_longitude'])?$themeConfig['location_longitude']:'-74.008616'; ?>;
                jQuery(document).ready(function($) {
                    mapDiv = $("#contact-map");
                    mapDiv.height(400).gmap3({
                        map:{
                            options:{
                                center:[lat,lon],
                                zoom: 15
                            }
                        },
                        marker:{
                            values:[
                                {latLng:[lat, lon], data:"<?php echo isset($themeConfig['location_address'])?$themeConfig['location_address']:'79-99 Beaver Street, New York, NY 10005, USA'; ?>"},
                            ],
                            options:{
                                draggable: false
                            },
                            events:{
                                  mouseover: function(marker, event, context){
                                    var map = $(this).gmap3("get"),
                                        infowindow = $(this).gmap3({get:{name:"infowindow"}});
                                    if (infowindow){
                                        infowindow.open(map, marker);
                                        infowindow.setContent(context.data);
                                    } else {
                                        $(this).gmap3({
                                        infowindow:{
                                            anchor:marker,
                                            options:{content: context.data}
                                        }
                                      });
                                    }
                                },
                                mouseout: function(){
                                    var infowindow = $(this).gmap3({get:{name:"infowindow"}});
                                    if (infowindow){
                                        infowindow.close();
                                    }
                                }
                            }
                        }
                    });
                });
            </script-->
      
      <div class="row">
      <div class="col-sm-5">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
          <fieldset class="register-form-contact">
            <h2 style=" text-transform: uppercase;">FORMULARIO DE CONTACTO</h2>
            <div class="required">
              <label class="control-label" for="input-name">NOMBRE</label>
              <div>
                <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control" />
                <?php if ($error_name) { ?>
                <div class="text-danger"><?php echo $error_name; ?></div>
                <?php } ?>
              </div>
            </div>
            <div class="required">
              <label class="control-label" for="input-email">E-MAIL</label>
              <div>
                <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control" />
                <?php if ($error_email) { ?>
                <div class="text-danger"><?php echo $error_email; ?></div>
                <?php } ?>
              </div>
            </div>
            <div class="required">
              <label class="control-label" for="input-enquiry">OBSERVACIONES</label>
              <div>
                <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control"><?php echo $enquiry; ?></textarea>
                <?php if ($error_enquiry) { ?>
                <div class="text-danger"><?php echo $error_enquiry; ?></div>
                <?php } ?>
              </div>
            </div>
            <!-- <div class="required">
              <label class="control-label" for="input-captcha"><?php echo $entry_captcha; ?></label>
              <div>
                <input type="text" name="captcha" id="input-captcha" class="form-control" />
              </div>
            </div>
            <div>
              <div class="pull-left" style="padding-top: 15px;">
                <img src="index.php?route=tool/captcha" alt="" />
                <?php if ($error_captcha) { ?>
                  <div class="text-danger"><?php echo $error_captcha; ?></div>
                <?php } ?>
              </div>
            </div> -->
          </fieldset>
          <div class="buttons">
            <div class="pull-left btn-create-account">
              <input class="btn btn-primary" type="submit" value="ENVIAR" />
            </div>
          </div>
        </form>
      </div>
      <div class="col-sm-7">
        <br><br><br>
        <div class="row">
          <div class="col-sm-6">
            <h1>Venezuela</h1>
            <h3>Caracas - Venezuela</h3>
            <h5>Tlf: +58 (212) 564.55.33</h5>
            <h5>Fax: +58 (212) 564.62.59</h5>
            <h5>E-mail: info@shlophili.com</h5>
          </div>
          <div class="col-sm-6">
            <h1>Panamá</h1>
            <h3>Zona Libre de Colón</h3>
            <h5>Tlf: +507 441.59.59</h5>
            <h5>Fax: +507 441.47.47</h5>
            <h5>E-mail: panama@shlophili.com</h5>
          </div>
        </div>
      
        <!-- <div>
          <div class="row content-location">
            <?php if ($image) { ?>
            <div class="col-sm-3"><img src="<?php echo $image; ?>" alt="<?php echo $store; ?>" title="<?php echo $store; ?>" class="img-thumbnail" /></div>
            <?php } ?>
            <div class="col-sm-6">
            <h3 style="font-size: 15px; text-transform: uppercase;"><?php echo $text_location; ?></h3>
            <?php echo $text_address; ?>: 
              <?php echo $address; ?>
              <?php if ($geocode) { ?>
              <a href="https://maps.google.com/maps?q=<?php echo urlencode($geocode); ?>&hl=en&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> <?php echo $button_map; ?></a>
              <?php } ?>
            </br>
            <?php echo $entry_email; ?>:
            <?php echo $email_address; ?>
            </br>
            <?php echo $text_telephone; ?>:
              <?php echo $telephone; ?>
            </br> 
              <?php if ($fax) { ?>
              <?php echo $text_fax; ?>:
              <?php echo $fax; ?>
              <?php } ?>
              
            </div>
            <div class="col-sm-6">
              <?php if ($open) { ?>
              <?php echo $text_open; ?>
              <?php echo $open; ?>
              <?php } ?>
              
              <?php if ($comment) { ?>
              <h3 style="font-size: 15px; text-transform: uppercase;"><?php echo $text_comment; ?></h3>
              <?php echo $comment; ?>
              <?php } ?>
              
            </div>
          </div>
        </div> -->
      </div>
      
      <?php if ($locations) { ?>
      <h3><?php echo $text_store; ?></h3>
      <div class="panel-group" id="accordion">
        <?php foreach ($locations as $location) { ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><a href="#collapse-location<?php echo $location['location_id']; ?>" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion"><?php echo $location['name']; ?> <i class="fa fa-caret-down"></i></a></h4>
          </div>
          <div class="panel-collapse collapse" id="collapse-location<?php echo $location['location_id']; ?>">
            <div class="panel-body">
              <div class="row">
                <?php if ($location['image']) { ?>
                <div class="col-sm-3"><img src="<?php echo $location['image']; ?>" alt="<?php echo $location['name']; ?>" title="<?php echo $location['name']; ?>" class="img-thumbnail" /></div>
                <?php } ?>
                <div class="col-sm-3"><strong><?php echo $location['name']; ?></strong><br />
                  <address>
                  <?php echo $location['address']; ?>
                  </address>
                  <?php if ($location['geocode']) { ?>
                  <a href="https://maps.google.com/maps?q=<?php echo urlencode($location['geocode']); ?>&hl=en&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> <?php echo $button_map; ?></a>
                  <?php } ?>
                </div>
                <div class="col-sm-3"> <strong><?php echo $text_telephone; ?></strong><br>
                  <?php echo $location['telephone']; ?><br />
                  <br />
                  <?php if ($location['fax']) { ?>
                  <strong><?php echo $text_fax; ?></strong><br>
                  <?php echo $location['fax']; ?>
                  <?php } ?>
                </div>
                <div class="col-sm-3">
                  <?php if ($location['open']) { ?>
                  <strong><?php echo $text_open; ?></strong><br />
                  <?php echo $location['open']; ?><br />
                  <br />
                  <?php } ?>
                  <?php if ($location['comment']) { ?>
                  <strong><?php echo $text_comment; ?></strong><br />
                  <?php echo $location['comment']; ?>
                  <?php } ?>
                </div>
              </div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
