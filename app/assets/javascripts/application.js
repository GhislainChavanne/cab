//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .
//= require bootstrap.min.js

const initBurger = () => {
  const btn = document.querySelector('#burger-btn');
  const menu = document.querySelector('#mobile-nav');

  btn.addEventListener('click', (event) => {
    menu.classList.toggle('hidden');
  });
};

initBurger();
