// function() {
//   $("#reply").bind('submit', function() {
//    var url = $(this).attr("location") + ".json";
//    $.post( url, $( this).serialize(), function(response) {
//      console.log(response);
//      e.preventDefault();
//      .done(function( response ) {
//        console.log(response.comments);
//        $("#comments-display-" + id).html(response.commments);
//      });
//    });
//   });
//  });
//   $.ajax({
//     method: "POST",
//     url: url + ".json"
//   })
//
//
//
//
// $(document).ready(function() {
//   $(".reply").click(function(e) {
//     // var href = $(this).attr("href");
//     // var post_id = $(this).attr("data-post-id");
//     // comment(href, post_id);
//     e.preventDefault();
//   });
// });
 
$(document).ready(function() {
 $(".reply").click(function(e) {
   e.preventDefault();
   $.ajax$({
     ("#theForm").bind('submit', function() {
     var url = $(this).attr("location") + ".json";
     $.post( url, $( this).serialize(), function(response) {
       console.log(response);
       $("#comments-display-").html(response.comments);


 });
});
});
});

});
