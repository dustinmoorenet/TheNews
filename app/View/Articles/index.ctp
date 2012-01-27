<?php foreach ($articles as $article): ?>
<article id="article_<?php echo $article['Article']['id'] ?>">
  <header><?php echo $article['Article']['title']; ?></header>
  <span>by <?php echo $article['Article']['author']; ?> -
    <time pubdate="<?php echo $article['Article']['published']; ?>">
      <?php $date = new DateTime($article['Article']['published']);
        echo $date->format('F j, Y'); ?>
    </time>
  </span>
  <section>
    <?php echo $article['Article']['body']; ?>...
  </section>
  <div class="read-more">
  <?php echo $this->Html->link('Read More',
    array(
      'controller' => 'articles',
      'action' => 'view',
      $article['Article']['id']),
    array('data-alt-text' => 'Collapse')); ?>
  </div>
</article>
<?php endforeach; ?>
<?php if ($this->Paginator->hasPrev()) echo $this->Paginator->prev('Previous'); ?>
<?php if ($this->Paginator->hasNext()) echo $this->Paginator->next('Next'); ?>
