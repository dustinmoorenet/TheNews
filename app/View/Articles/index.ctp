<h1>The News</h1>
<div id="content">
<?php foreach ($articles as $article): ?>
  <article>
    <h3><?php echo $article['Article']['title']; ?></h3>
    <p><?php echo $article['Article']['body']; ?></p>
  </article>
<?php endforeach; ?>
</div>
