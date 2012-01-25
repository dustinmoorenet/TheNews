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
    <div id="header">
    </div>
    <div id="content">
    
      <?php echo $this->Session->flash(); ?>
      
      <?php echo $content_for_layout; ?>
    
    </div>
    <div id="footer">
    </div>
  </div>
  <?php echo $this->element('sql_dump'); ?>
</body>
</html>
