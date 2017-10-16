//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

$( document ).ready(function() {
  $(document).on('click', '#btn', function(event){
      event.preventDefault();
      var offset = - 60;

      $('html, body').animate({
          scrollTop: $( $.attr(this, 'href') ).offset().top + offset
      }, 500);
  });
});

$.fn.visible = function(partial) {

    var $t            = $(this),
        $w            = $(window),
        viewTop       = $w.scrollTop(),
        viewBottom    = viewTop + $w.height(),
        _top          = $t.offset().top,
        _bottom       = _top + $t.height(),
        compareTop    = partial === true ? _bottom : _top,
        compareBottom = partial === true ? _top : _bottom;

  return ((compareBottom <= viewBottom) && (compareTop >= viewTop));

};

$(window).scroll(function(event) {

  $(".hideme").each(function(i, el) {
    var el = $(".content-description");
    if (el.visible(true)) {
      el.addClass("come-in");
    }
  });

});


