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
$('#contact-modal').hide();

$('#contribute').on('click', function () {
    $('#contribute-modal').show();
})
$('#close-modal').click(function(){
    $('#contribute-modal').hide();
})
$('#benefit-close-modal').click(function(){
    $('#benefit-modal').hide();
})
$('#benefit').on('click', function () {
    $('#benefit-modal').show();
})
$('#contact').on('click', function () {
    $('#contact-modal').show();
})
$('#contact-close-modal').click(function(){
    $('#contact-modal').hide();
})