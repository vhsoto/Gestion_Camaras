function initialize() {
  var myLatlng = new google.maps.LatLng(<%= @camera.lat %>, <%= @camera.lng %>);
  var mapOptions = {
    zoom: 17,
    center: myLatlng
  }
  var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

  var marker = new google.maps.Marker({
      position: myLatlng,
      map: map,
      title: 'Cámara'
  });
}


$(document).ready(initialize);
$(document).on('page:load', initialize);