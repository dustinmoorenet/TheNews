<!DOCTYPE html> 
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0"/>
    <?php echo $this->Html->charset(); ?>
    <title>
      <?php echo $title_for_layout; ?>
    </title>
    <?php
      echo $this->Html->meta('icon');
    
      echo '<link href="http://fonts.googleapis.com/css?family=Share:400,400italic,700,700italic" rel="stylesheet" type="text/css">';
      echo $this->Html->css('normalize');
      echo $this->Html->css('main', null, array('media' => 'screen'));

      echo $this->Html->script('modernizr.min.js');
      echo '<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>';
      echo $this->Html->script('main');
    ?>
  </head>
<body>
  <div id="container">
    <header>
      <div id="header-lower"></div>
      <div id="header-middle">Flower Post</div>
      <div id="header-upper"></div>
    </header>
    <?php echo $this->element('nav'); ?>
    <div id="ad_1"><iframe src="<?php echo Router::url('/') . 'ads/dons_discount.html' ?>" frameBorder="0"></iframe></div>
    <section id="content">
      <?php echo $content_for_layout; ?>
    </section>
    <footer>
      <span>&copy; 2012 Dustin Moore</span>
    </footer>
  </div>
  <div class="off-sight"></div>
</body>
</html>
