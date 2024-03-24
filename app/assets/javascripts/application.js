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

var initScroll = function () {
  var section = document.querySelector('#scrollable');

  if (!section) {
    return;
  }

  if (section.dataset.scrollTo) {
    var target = section.querySelector('#' + section.dataset.scrollTo);
  }

  if (target) {
    scrollToTarget(target);
  }
};

var scrollToTarget = function (target) {
  var headerOffset = 74;
  var targetPosition = target.getBoundingClientRect().top;
  var offsetPosition = targetPosition + window.scrollY - headerOffset;

  window.scrollTo({
    top: offsetPosition,
    behavior: 'smooth',
  });
};

initScroll();

var initShadowNav = function () {
  var header = document.querySelector('#navbar');

  if (!header) {
    return;
  }

  window.addEventListener('scroll', function () {
    if (window.scrollY > 0) {
      header.classList.add('shadow-lg');
    } else {
      header.classList.remove('shadow-lg');
    }
  });
};

initShadowNav();

var initTippy = function () {
  tippyItems = document.querySelectorAll('.tippy');

  tippyItems.forEach(function (item) {
    tippy(item, {
      content: item.dataset.tippy,
      placement: 'top',
      animation: 'fade',
      theme: 'light',
    });
  });
};

initTippy();

// MAPBOX

mapboxgl.accessToken =
  'pk.eyJ1IjoibWJib3p6IiwiYSI6ImNrdDFtc2o5YzBid3oyb3BobHVwa3Nwc2EifQ.HNAQ7qQGtLCro9g2dQxqJQ';

var geojson = {
  type: 'FeatureCollection',
  features: [
    {
      type: 'Feature',
      geometry: {
        type: 'Point',
        coordinates: [2.333093, 48.866698],
      },
      properties: {
        title: 'Siano Avocats',
        description: '49 rue Saint-Roch, 75001 Paris',
      },
    },
    {
      type: 'Feature',
      geometry: {
        type: 'Point',
        coordinates: [2.150499398, 41.392331764],
      },
      properties: {
        title: 'Siano Avocats',
        description: 'Calle Balmes 222, 4° 1°08006 Barcelone',
      },
    },
  ],
};

var map = new mapboxgl.Map({
  container: 'map',
  style: 'mapbox://styles/mapbox/dark-v11',
  center: [2.121857, 45.560819],
  zoom: 4,
});

geojson.features.forEach(function (feature) {
  var el = document.createElement('div');
  el.className = 'marker';

  new mapboxgl.Marker(el)
    .setLngLat(feature.geometry.coordinates)
    .setPopup(
      new mapboxgl.Popup({ offset: 25 }).setHTML(
        '<h3 class="text-xl font-semibold">' +
          feature.properties.title +
          '</h3>' +
          '<p>' +
          feature.properties.description +
          '</p>'
      )
    )
    .addTo(map);
});
