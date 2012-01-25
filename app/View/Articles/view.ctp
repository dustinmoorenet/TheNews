<article>
  <header><?php echo $article['Article']['title']; ?></header>
  <span>by <?php echo $article['Article']['author']; ?> -
    <time pubdate="<?php echo $article['Article']['published']; ?>">
      <?php $date = new DateTime($article['Article']['published']);
        echo $date->format('F j, Y'); ?>
    </time>
  </span>
  <section>
    <?php echo $article['Article']['body']; ?>
  </section>
</article>

  <?php 
  if ($article['neighbors']['prev']) { ?>
    <span class="prev">
    <?php echo $this->Html->link('Previous', array(
      'controller' => 'articles',
      'action' => 'view',
      $article['neighbors']['prev']['Article']['id'])); ?>
    </span>
  <?php }
  if ($article['neighbors']['next']) { ?>
    <span class="next">
    <?php echo $this->Html->link('Next', array(
      'controller' => 'articles',
      'action' => 'view',
      $article['neighbors']['next']['Article']['id'])); ?>
    </span>
  <?php } ?>
