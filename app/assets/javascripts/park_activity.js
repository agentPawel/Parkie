
$(function(){

  navigator.geolocation.getCurrentPosition(function(location) {
  console.log(location.coords.latitude);
  console.log(location.coords.longitude);
  console.log(location.coords.accuracy);

    $.ajax({
      url: '/parks_near_by',
      method: 'POST',
      data: {
        latitude: location.coords.latitude,
        longitude: location.coords.longitude
      },
      dataType: 'json'
    }).done(function(parks){
        // console.log(parks)
        for (var i=0; i < parks.length; i++)
        $('#parks_near_by').prepend("<h2><a href='/parks/" + parks[i].id + "'>  " + parks[i].name + "</a></h2><h3> Address: " + parks[i].address + "</h3><h3>Distance: " + parks[i].distance.toFixed(2) + " km</h3>");
        parksList(parks)
      })
  });

  function parksList(parks) {
    var bounds = new google.maps.LatLngBounds();
    var markers = [];
    for (var i=0; i < parks.length; i++) {
      markers.push([parks[i].name, parks[i].latitude, parks[i].longitude]);
    }

    // Info Window Content
    var infoWindowContent = []
    for (var i=0; i < parks.length; i++) {
      infoWindowContent.push(["<div class='info_content'><h2><a href='/parks/" + parks[i].id + "'>  " + parks[i].name + "</a><p>" + parks[i].address + "<p>"]);
    }
    console.log(infoWindowContent);

    // Display multiple markers on a map
    var infoWindow = new google.maps.InfoWindow(), marker, i;

    // Loop through our array of markers & place each one on the map
    for( i = 0; i < markers.length; i++ ) {
        var position = new google.maps.LatLng(markers[i][1], markers[i][2]);
        bounds.extend(position);
        console.log(markers)
        marker = new google.maps.Marker({
            position: position,
            map: map,
            title: markers[i][8]
        });

        // Allow each marker to have an info window
        google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
                infoWindow.setContent(infoWindowContent[i][0]);
                infoWindow.open(map, marker);
            }
        })(marker, i));

        // Automatically center the map fitting all markers on the screen
        map.fitBounds(bounds);
    }

    // Override our map zoom level once our fitBounds function runs (Make sure it only runs once)
    var boundsListener = google.maps.event.addListener((map), 'bounds_changed', function(event) {
        this.setZoom(14);
        google.maps.event.removeListener(boundsListener);
    });

  }

});
