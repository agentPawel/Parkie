// $(function(){
//
//   $('button').on('click',(function(event){
//
//     var thisButton = this;
//
//     $.ajax({
//       url: subscriptions_path,
//       method:'POST'
//       data: {
//         park_activity_id: ParkActivity.find(params[:id]).id,
//         user_id: current_user.id
//       },
//       dataType: 'JSON'
//     })
//
//     .success(function(){
//       console.log("done");
//       $(thisButton).html("Unsubscribe");
//       $(thisButton).hide();
//     });
//   });
// });
