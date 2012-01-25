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
      echo $this->Html->css('main');
    
      echo $scripts_for_layout;
    ?>
  </head>
<body>
  <div id="container">
    <header><?php echo $this->Html->link('The News', '/'); ?></header>
    <section id="content">
      <?php echo $content_for_layout; ?>
    </section>
    <footer>
      <span>&copy; 2012 Dustin Moore<span>
    </footer>
  </div>
</body>
</html>
