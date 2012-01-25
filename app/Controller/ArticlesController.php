<?php
class ArticlesController extends AppController {
  public $name = 'Articles';
  public $helpers = array('Html', 'Form');

  public $paginate = array(
    'limit' => 5,
    'order' => array(
      'Article.published' => 'asc'
    )
  );

  public function index() {
    $articles = $this->paginate('Article');
    foreach ($articles as &$article) {
      $body = $article['Article']['body'];
      $article['Article']['body'] = substr($body, 0, strpos($body, ' ', 256));
    }
    $this->set('articles', $articles);
  }

  public function view($id = null) {
    $this->Article->id = $id;
    $article = $this->Article->read();
    $article['neighbors'] = $this->Article->find('neighbors', array('field' => 'published', 'value' => $article['Article']['published']));

    $this->set('article', $article);
  }
}
?>
