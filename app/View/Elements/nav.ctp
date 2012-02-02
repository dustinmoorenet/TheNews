<?php
$categories = $this->requestAction('categories/index');
?>
<nav>
  <ul>
    <li><?php echo $this->Html->link('Home', '/'); ?></li>
<?php foreach ($categories as $category): ?>
    <li><?php echo $this->Html->link($category['Category']['name'], array('controller' => 'articles', 'action' => 'category', $category['Category']['id'])); ?></li>
<?php endforeach; ?>

    <li><?php echo $this->Html->link('Editors', array('controller' => 'pages', 'action' => 'display', 'editors')); ?></li>
    <li><?php echo $this->Html->link('About Us', array('controller' => 'pages', 'action' => 'display', 'about_us')); ?></li>
  </ul>
</nav>
