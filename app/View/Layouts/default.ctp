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
    <nav>
      <ul>
        <li><?php echo $this->Html->link('Home', '/'); ?></li>
        <li><?php echo $this->Html->link('Politics', array('controller' => 'pages', 'action' => 'display', '')); ?></li>
        <li><?php echo $this->Html->link('Sports', array('controller' => 'pages', 'action' => 'display', '')); ?></li>
        <li><?php echo $this->Html->link('Technology', array('controller' => 'pages', 'action' => 'display', '')); ?></li>
        <li><?php echo $this->Html->link('Editors', array('controller' => 'pages', 'action' => 'display', 'editors')); ?></li>
        <li><?php echo $this->Html->link('About Us', array('controller' => 'pages', 'action' => 'display', 'about_us')); ?></li>
      </ul>
    </nav>
    <div id="ad_1"><iframe src="<?php echo Router::url('/') . 'ads/bear.html' ?>"></iframe></div>
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
