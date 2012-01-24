<?php
class ArticlesController extends AppController {
  public $name = 'Articles';
  public $helpers = array('Html', 'Form');

  public function index() {
    $articles = $this->Article->find('all');
    foreach ($articles as &$article) {
      $body = $article['Article']['body'];
      $article['Article']['body'] = substr($body, 0, strpos($body, ' ', 256));
    }
    $this->set('articles', $articles);
  }

  public function view($id = null) {
    $this->Article->id = $id;
    $this->set('article', $this->Article->read());
  }
}
?>
