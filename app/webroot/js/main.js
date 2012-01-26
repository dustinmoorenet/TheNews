$(function() {


  (function() {
    function buildShowMore($context) {
      _url = $context.find('#content > span.next').remove()
                     .find('a').attr('href');
      if (_url) {
        $('#content').append('<div class="show-more">Show More</div>');
        $('.show-more').click(showMoreClicked);
      }
    }

    function showMoreClicked(e) {
      $(e.currentTarget).remove();
      $.get(_url, function(text) {
        var $more = $(text);
        $('#content').append($more.find('article'));
        buildShowMore($more);
      });
    }

    var _url;
    buildShowMore($('body'));
  })();


  function Article($context) {
    function buildReadMore() {
      var $holder = $context.find('.read-more').remove();
      var $anchor = $holder.find('a');
      _url = $anchor.attr('href'); 
      if (_url) {
        $anchor.attr('href', '#' + $context.attr('id'))
               .click(showMoreClicked);
      }
    }

    function showMoreClicked(e) {
      //$(e.currentTarget).remove();
      $.get(_url, function(text) {
        var $more = $(text);
        $context.find('section').html($more.find('section'));
      });
    }

    var _url;
    buildReadMore();
  }

});
