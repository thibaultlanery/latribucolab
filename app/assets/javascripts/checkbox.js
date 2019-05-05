// $( "div label" ).click(function() {
//   $(this).toggleClass( "highlights" );
// });

// $('.card').click(function(){
//     $('.hightlights', this).toggle(); // p00f
// });


// $('.img-rounded, h5').click( function(){
//     if ( $(this).parent().hasClass('highlights') ) {
//         $(this).parent().removeClass('highlights');
//     } else {
//         $(this).parent().removeClass('highlights');
//         $(this).parent().addClass('highlights');
//     }
// });

$('.checked').click( function(){
    if ( $(this).parent().hasClass('highlights') ) {
        $(this).parent().removeClass('highlights');
    } else {
        $(this).parent().removeClass('highlights');
        $(this).parent().addClass('highlights');
    }
});
