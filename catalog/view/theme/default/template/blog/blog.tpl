<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
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
      <div class="col-sm-11 imgnotice">
        <h1 style="color: #fff; position: absolute; top:0; left:0; padding-left:20px; font-size:70px;">NOTICIAS</h1>
      </div>
      <!-- <h2><?php echo $name; ?></h2> -->
      <?php if ($articles) { ?>

        <?php foreach ($articles as $article) { ?>
          <div class="col-sm-6" style="padding-left:0px !important; padding-right:0px !important;">
            <div class="panel panel-default">
                <div class="panel-body">
                  <div class="article-layout article-list col-sm-12">
                    <div class="article-intro">
                      <div>
                          <h3><a href="<?php echo $article['href']; ?>"><?php echo $article['name']; ?></a></h3>
                          <p><?php echo $article['date_modified']; ?></p>
                          <p><?php echo $article['intro_text']; ?></p>
                      </div>
                    </div>
                    <div class="buttons">
                          <div class="pull-right"><a href="<?php echo $article['href']; ?>" class="btn btn-primary"><?php echo $button_read_more; ?></a></div>
                    </div>
                  </div>
                </div>
            </div>
          </div>
        <?php } ?>

      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php } ?>
      <?php if (!$articles) { ?>
      <p><?php echo $text_empty; ?></p>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
