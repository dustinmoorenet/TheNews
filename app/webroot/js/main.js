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
      $.get(_url, function(html) {
        var $more = $(html);
        $('#content').append($more.find('article').hide());

        buildShowMore($more);
        addArticleControl();
        $('article').fadeIn(1000);
      });
    }

    function addArticleControl() {
      $('article:not(.expandable)').each(function() {
        new Article($(this));
      });
    }

    var _url;
    buildShowMore($('body'));
    addArticleControl();
  })();


  function Article(_$context) {
    function buildReadMore() {
      _$context.addClass('expandable');
      _url = _$anchor.attr('href'); 
      if (_url) {
        _$anchor.removeAttr('href');
        _$context.click(readMoreClicked);
      }
    }

    function swapAnchorText() {
      var alt_text = _$anchor.data('alt-text');
      _$anchor.data('alt-text', _$anchor.html());
      _$anchor.html(alt_text);
    }

    function readMoreClicked(e) {

      if (_$context.hasClass('expanded')) {
        _$context.removeClass('expanded');
        swapAnchorText();
        _$section.html(_$section.data('orig-text'))
                 .css('height', '');

      } else {
        _$section.css('height', _$section.height());
        
        $.get(_url, function(html) {
          var $text = $(html).find('article section');
          _$off_sight.html($text)
                     .css('width', _$section.width());
          var new_height = _$off_sight.find('section').height();

          swapAnchorText();
          _$context.addClass('expanded');
          _$section.data('orig-text', _$section.html())
                   .html($text.html())
                   .animate({'height': new_height}, {
            duration: 1000,
            complete: function() {
              $(this).css('height', 'auto');
            }
          });
        });
      }
    }

    var _url;
    var _$anchor = _$context.find('.read-more a');
    var _$section = _$context.find('section');
    buildReadMore();
  }

  var _$off_sight = $('.off-sight');
});
