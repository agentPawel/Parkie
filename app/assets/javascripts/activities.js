$(function(){
  if ($('.activity_near_by').length > 0){
    console.log('hi');
    navigator.geolocation.getCurrentPosition(function(location) {
    console.log(location.coords.latitude);
    console.log(location.coords.longitude);
    console.log(location.coords.accuracy);

  var url = window.location;
  console.log(url);
  var activityID = url.pathname.substr(-1);
  console.log(activityID);
     $.ajax({
        url: '/activity_near_by/'+ activityID,
        method: 'POST',
        data: {
          latitude: location.coords.latitude,
          longitude: location.coords.longitude
        },
        dataType: 'json'
      }).done(function(parks){
          // console.log(parks)
          for (var i=0; i < parks.length; i++)
          $('.activity_near_by').prepend("<div class='col-sm-6'><h2><a href='/parks/" + parks[i].id + "'>  " + parks[i].name + "</h2><h3>" + parks[i].address + "</h3><h3>Distance: " + parks[i].distance.toFixed(2) + " km</h3></div></a>");
          parksList(parks)
        })
    });
  }

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
