const humburger = $('.menu-toggle .check');
const menu = $('.menu-list');

humburger.on('click',function(){
    if(humburger.is(':checked')){
        menu.addClass('active');
    }else{
        menu.removeClass('active');
    }
})