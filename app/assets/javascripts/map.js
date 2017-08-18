document.addEventListener('DOMContentLoaded', function() {
  window.map = L.map('map').setView([51.505, -0.09], 13);

  L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1Ijoic3VwZXJ1c2VyMjQiLCJhIjoiY2ltOWVzMmNlMDNuaHR5a2l1dzc4bjFlNCJ9.Tf-CNc_9NEq8W0FGUhn4fw', {
      attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://mapbox.com">Mapbox</a>',
      maxZoom: 18,
      id: 'mapbox.streets',
      accessToken: 'your.mapbox.access.token'
  }).addTo(map);
});

