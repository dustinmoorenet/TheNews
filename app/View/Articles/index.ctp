<?php foreach ($articles as $article): ?>
<article>
  <header><?php echo $article['Article']['title']; ?></header>
  <span>by <?php echo $article['Article']['author']; ?> -
    <time datetime="<?php echo $article['Article']['published']; ?>">
      <?php $date = new DateTime($article['Article']['published']);
        echo $date->format('F j, Y'); ?>
    </time>
  </span>
  <section>
    <?php echo $article['Article']['body']; ?>...
    <br />
    <?php echo $this->Html->link('Read More', array(
      'controller' => 'articles',
      'action' => 'view',
      $article['Article']['id'])); ?>
  </section>
</article>
<?php endforeach; ?>
<?php if ($this->Paginator->hasPrev()) echo $this->Paginator->prev('Previous'); ?>
<?php if ($this->Paginator->hasNext()) echo $this->Paginator->next('Next'); ?>
