function hug(url, id) {
  $.ajax({
    method: "POST",
    url: url + ".json"
  })
    .done(function( response ) {
      console.log(response.hugs);
      $("#hug-counter-" + id).html(response.hugs);
    });
};


$(document).ready(function() {
  $(".hug-button").click(function(e) {
    var href = $(this).attr("href");
    var post_id = $(this).attr("data-post-id");
    hug(href, post_id);
    e.preventDefault();
  });
});
