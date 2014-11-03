/*
  *
  * TODO: add your code here!
  *
*/
$(function() {
  $("#message-wrapper").hide();
  $("#message-wrapper").delay( 500 ).slideDown("slow");
  $("#message-wrapper").on('click', function(the_event) {
    $(this).slideUp();
  });

  $( "#banner" ).mousemove(function(event) {
    if (event.clientY < 200){
      $("#message-wrapper").show();
    }
    else { $("#message-wrapper").hide();}
  });
});


