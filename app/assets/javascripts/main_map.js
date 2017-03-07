jQuery(function($) {
    // Asynchronously Load the map API
    var script = document.createElement('script');
    script.src = "//maps.googleapis.com/maps/api/js?key=AIzaSyDaMOv8g5liwrazAzGhui5W4CpzA4FFhq8&callback=initialize&libraries=places";
    document.body.appendChild(script);
});

function initialize() {
    var mapOptions = {
        mapTypeId: 'roadmap',
        scrollwheel: false,
        zoom: 15
    };

    // Display a map on the page
    map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
    map.setTilt(45);


}
