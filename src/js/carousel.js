$('.hero-carousel').owlCarousel({
    loop:true,
    margin:0,
    nav:false,
    items:1,
    dots:false,
    animateOut: 'fadeOut',
    autoplay:true,
    autoplayTimeout:3000,
    autoplayHoverPause:false
    
})

$('.sosmed-carousel').owlCarousel({
    loop:true,
    margin:0,
    nav:false,
    items:1,
    dots:false,
    animateOut: 'fadeOut',
    autoplay:true,
    autoplayTimeout:7000,
    autoplayHoverPause:true,
})

$('.awardee-carousel').owlCarousel({
    center: true,
    items:2,
    loop:false,
    margin:10,
    autoplay:true,
    autoplayTimeout:3000,
    autoplayHoverPause:true,
    responsive:{
        600:{
            items:4
        }
    }
});