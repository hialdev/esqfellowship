const humburger = $('.menu-toggle .check');
const menu = $('.menu-list');

humburger.on('click',function(){
    if(humburger.is(':checked')){
        menu.addClass('active');
    }else{
        menu.removeClass('active');
    }
})

// Modal About
$('#contribute-modal').hide();
$('#benefit-modal').hide();
$('#close-modal').click(function(){
    $('#contribute-modal').hide();
})
$('#benefit-close-modal').click(function(){
    $('#benefit-modal').hide();
})
$('#contribute').on('click', function () {
    $('#contribute-modal').show();
})
$('#benefit').on('click', function () {
    $('#benefit-modal').show();
})