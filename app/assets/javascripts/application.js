//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .
//= require bootstrap.min.js

var initBurger = () => {
  var btn = document.querySelector('#burger-btn');
  var menu = document.querySelector('#mobile-nav');

  btn.addEventListener('click', (event) => {
    menu.classList.toggle('hidden');
  });
};

initBurger();
