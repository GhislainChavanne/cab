//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .
//= require bootstrap.min.js

var initBurger = function () {
  var btn = document.querySelector('#burger-btn');
  var menu = document.querySelector('#mobile-nav');

  btn.addEventListener('click', function (event) {
    menu.classList.toggle('hidden');
  });
};

initBurger();
