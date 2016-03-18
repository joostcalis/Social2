// function hug(url, id) {
//   $.ajax({
//     method: "POST",
//     url: url + ".json"
//   })
//     .done(function( response ) {
//       console.log(response.hugs);
//       $("#hug-counter-" + id).html(response.hugs);
//     });
// };
//
//
// $(document).ready(function() {
//   $(".hug-button").click(function(e) {
//     var href = $(this).attr("href");
//     var post_id = $(this).attr("data-post-id");
//     hug(href, post_id);
//     e.preventDefault();
//   });
// });

$('form').submit(function() {
    var valuesToSubmit = $(this).serialize();
    $.ajax({
        type: "POST",
        url: $(this).attr('action'), //sumbits it to the given url of the form
        data: valuesToSubmit,
        dataType: "JSON" // you want a difference between normal and ajax-calls, and json is standard
    }).success(function(json){
        console.log("success", json);
    });
    return false; // prevents normal behaviour
});
