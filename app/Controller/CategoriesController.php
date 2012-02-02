<?php
class CategoriesController extends AppController {
  public $name = 'Categories';

  public function index() {
    return $this->Category->find('all');
  }
}
?>
