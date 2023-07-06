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

const sosmed = $('.sosmed-carousel');
sosmed.owlCarousel({
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

// Go to the next item
$('#next').click(function() {
    sosmed.trigger('next.owl.carousel');
})
// Go to the previous item
$('#prev').click(function() {
    // With optional speed parameter
    // Parameters has to be in square bracket '[]'
    sosmed.trigger('prev.owl.carousel', [300]);
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