

$('.checked').click( function(){
    if ( $(this).parent().hasClass('highlights') ) {
        $(this).parent().removeClass('highlights');
    } else {
        $(this).parent().removeClass('highlights');
        $(this).parent().addClass('highlights');
    }
});
