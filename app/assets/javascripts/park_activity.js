// $(function(){
//
//   $('.subscribe_button').on('click',(function(event){
//     event.preventDefault();
//
//     $.ajax({
//       url: 'http://bitkittens.herokuapp.com/cats.json',
//       method:'POST'
//       data: $('#tweet_message').serialize(),
//       dataType: 'json' //json, text, html
//
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
