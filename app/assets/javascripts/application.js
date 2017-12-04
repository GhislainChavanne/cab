

//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .
//= require bootstrap.min.js


$( document ).ready(function() {
  $(document).on('click', '#btn', function(event){
      event.preventDefault();
      var offset = - 70;

      $('html, body').animate({
          scrollTop: $( $.attr(this, 'href') ).offset().top + offset
      }, 500);
  });
});

$(function () {
  $('[data-toggle="popover"]').popover({html:true})
})

