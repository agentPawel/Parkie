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
      // for (park of parks)
        console.log(parks)
        for (var i=0; i < parks.length; i++)
        $('#parks_near_by').prepend("<h2><a href='/parks/" + parks[i].id + "'>  " + parks[i].name + "</a></h2><h3> Address: " + parks[i].address + "</h3><h3>Distance: " + parks[i].distance.toFixed(2) + " km</h3>");

    })
  });



});


  //
  //
  // $('.subscribe_button').on('click',(function(event){
  //
  //   $.ajax({
  //     url: subscriptions_path,
  //     method:'POST'
  //     data: {
  //           park_activity_id: ParkActivity.find(params[:id]).id,
  //           user_id: current_user.id },
  //     dataType: 'json' //json, text, html
  //

//     }).done(function(data){
//       console.log(data);
//       var list = '<li class="tweet"><p>' + data.message + '</p><time>'+ data.created_at +'</time></li>';
//       $('.tweets').prepend(list);
//
//     }).fail(function(jqXHR, textStatus, errorThrown){
//       console.log('Ajax Request Failed');
//       console.log(jqXHR);
//     }).always(function(){
//       console.log('Ajax Request Sent');
//     });
//   });
// });
