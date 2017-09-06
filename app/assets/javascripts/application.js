//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .
$(document).on('click', 'a', function(event){
    event.preventDefault();

    $('html, body').animate({
        scrollTop: $( $.attr(this, 'href') ).offset().top
    }, 500);
});
