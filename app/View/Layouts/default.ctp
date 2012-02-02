<!DOCTYPE html> 
<html>
  <head>
    <?php echo $this->Html->charset(); ?>
    <title>
      <?php echo $title_for_layout; ?>
    </title>
    <?php
      echo $this->Html->meta('icon');
    
      echo $this->Html->css('normalize');
      echo $this->Html->css('main', null, array('media' => 'screen'));

      echo $this->Html->script('modernizr.min.js');
      if (Router::url('/') == $this->here) {
        echo '<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>';
        echo $this->Html->script('main');
      }
    ?>
  </head>
<body>
  <div id="container">
    <header><?php echo $this->Html->link('The News', '/'); ?></header>
    <?php echo $this->element('nav'); ?>
    <div id="ad_1"><iframe src="<?php echo Router::url('/') . 'ads/bear.html' ?>" frameBorder="0"></iframe></div>
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
