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
    responsive:{
        300:{
            items:1
        },
        500:{
            items:2
        },
        800:{
            items:3
        },
        1000:{
            items:4
        }
    }
});
$('.awardee-item-carousel').owlCarousel({
    items:2,
    loop:false,
    margin:10,
    responsive:{
        300:{
            items:1
        },
        500:{
            items:2
        },
        800:{
            items:3
        },
        1000:{
            items:4
        }
    }
});