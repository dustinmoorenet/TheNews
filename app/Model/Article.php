<?php
class Article extends AppModel {
  public $name = 'Article';
  public $belongsTo = 'Category';
}
?>
