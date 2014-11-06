
$(function(){
 $('img').on('click', function(the_event){

   $('body').append($('<div id="back"></div>'));

   var height_modal = $('img').attr('data-modal-height');
   var width_modal = $('img').attr('data-modal-width');
   $('body').append($('<div id = "img_modal"><img src=' + $('img').attr('src') + '></div>').css({'height': height_modal, 'width': width_modal}));
 });

 $('body').on('click', '#back',function(the_event){
   $('#back').remove();
   $('#img_modal').remove();
 });
});