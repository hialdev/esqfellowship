@extends('layout.app')
@section('meta')
    @include('partials.meta', ['data' => $seo])
@endsection
@section('content')
            
    <section class="position-relative mb-5" style="height: 80vh !important;">
        <div class="owl-carousel owl-theme hero-carousel">
            @foreach ($banners as $banner)
                <img src="{{Voyager::image($banner->image)}}" alt="Hero Image Banner ke {{$loop->index}}" class="w-100 object-fit-cover" style="height: 80vh !important;object-fit: cover;">
            @endforeach
        </div>
        <div class="position-absolute top-0 right-0 left-0 w-100" style="height:90vh; z-index: 10;">
            <div class="d-flex flex-column align-items-center justify-content-center h-100 text-center" style="background: linear-gradient(180deg, rgba(17, 24, 33, 0) 3.19%, #111821 82.37%);">
                <div style="max-width: 50em;">
                    <h1 data-aos="zoom-in-down" data-aos-duration="1000" class="text-gold text-big text-wrap pb-5">Fellowship Program</h1>
                    <p data-aos="fade-up" data-aos-duration="3000" class="fs-3">ESQ Business School</p>
                </div>
            </div>
        </div>
    </section>

    <section class="what-is sec-pad">
        <div class="container">
            <div class="row align-items-center">
                <div data-aos="fade-right" data-aos-duration="1000" class="col-12 col-md-6 mb-4 pe-5">
                    <h2 class="text-gold">{{setting('section.sec1_title')}}</h2>
                    <p>{{setting('section.sec1_excerpt')}}</p>
                    <a href="{{url(setting('section.sec1_link'))}}" class="btn-sec">See More</a>
                </div>
                <div data-aos="fade-down" data-aos-duration="1000" class="col-12 col-md-6">
                    <iframe class="embed-yt yt-image" src="{{setting('section.sec1_embed')}}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </section>

    <section class="our-hero sec-pad">
        <div class="container">
            <h2 class="text-gold text-semibig d-inline-block">Our Heroes</h2>
            <div class="row">
                @foreach ($heroes as $hero)
                <div data-aos="zoom-out-up" data-aos-duration="1000" class="col-10 mx-auto hero-card">
                    <a href="{{route('heroes.item',$hero->slug)}}" class="text-decoration-none text-white hero-item">
                        <h3 class="text-white fs-1 text-wrap">{{$hero->name}}</h3>
                        <img src="{{Voyager::image($hero->image)}}" alt="Heroes" class="rounded-sm" style="min-height: 18em; min-width:10em; object-fit:cover">
                    </a>
                </div>
                @endforeach
                
                <!-- More -->
                @if (count($heroes) > 4 )
                <div class="col-10 mx-auto">
                    <div data-aos="fade-up" data-aos-duration="1000" class="d-flex align-items-end justify-content-end">
                        <a href="./heroes.html" class="d-flex align-items-center justify-content-center circle-more text-decoration-none">
                            See All Heroes
                        </a>
                    </div>
                </div>
                @endif
            </div>
        </div>
    </section>

    <section class="awardee sec-pad">
        <div class="container">
            <h2 class="text-gold text-semibig d-inline-block">Awardee</h2>
            <div class="owl-carousel awardee-carousel owl-theme">
                
                @foreach ($awardee as $award)
                <div>
                    <a href="{{route('awardee.item',$award->slug)}}" class="awardee-item d-block position-relative">
                        <img src="{{Voyager::image($award->image)}}" alt="Awardee {{$award->name}}" style="min-height:28em; min-width:15em; object-fit:cover">
                        <div class="p-4 bg-blurr position-absolute bottom-0 right-0 w-100 left-0">
                            <div class="d-flex align-items-center gap-3">
                                <div>
                                    <h5 class="text-yellow">{{$award->name}}</h5>
                                    <p class="fs-6 text-white">{{$award->position}}</p>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                @endforeach
                <div>
                    <a href="./awardee.html" class="awardee-item d-block position-relative">
                        <img src="/src/images/awardee-more.png" alt="Awardee">
                    </a>
                </div>
            </div>
        </div>
    </section>

    <section class="call-back px-2 sec-pad" style="background: url('/src/images/bg-menara.png');background-size: cover;">
        <div class="container p-4 p-md-5" style="background: linear-gradient(100.4deg, rgba(240, 239, 239, 0.6) 0.63%, rgba(223, 223, 223, 0.05) 78.54%);
            box-shadow: inset 17px -17px 17px rgba(255, 255, 255, 0.1), inset 0px 4px 4px rgba(165, 165, 165, 0.1);
            backdrop-filter: blur(7.5px);
            /* Note: backdrop-filter has minimal browser support */
            
            border-radius: 25px;">
            <div class="d-flex flex-column flex-md-row gap-5 align-items-center">
                <div data-aos="fade-right" data-aos-duration="1000" class="w-100" style="max-width: 40em;">
                    <div class="fs-5">{{setting('section.sec2_subtitle')}}</div>
                    <h4 class="text-yellow fs-2">{{setting('section.sec2_title')}}</h3>
                </div>
                <div data-aos="fade-left" data-aos-duration="1000"  class="w-100">
                    <iframe class="embed-yt" src="{{setting('section.sec2_embed')}}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </section>

    <section class="sosmed my-5 sec-pad" id="sosmed">
        <h2 class="text-center text-gold text-semibig">Social Media</h2>
        
        <div class="container position-relative">
            <div class="d-flex w-100 align-items-center justify-content-between h-100 mb-5">
                <div id="prev" class="d-flex align-items-center justify-content-center p-2 rounded-circle bg-gold">
                    <span class="iconify" data-icon="tabler:arrow-left" style="width: 2.3em; height: 2.3em;"></span>
                </div>
                <div id="next" class="d-flex align-items-center justify-content-center p-2 rounded-circle bg-gold">
                    <span class="iconify" data-icon="tabler:arrow-right" style="width: 2.3em; height: 2.3em;"></span>
                </div>
            </div>
            <div class="owl-carousel owl-theme sosmed-carousel">
                @foreach ($sosmeds as $sosmed)
                <div class="w-100">
                    <a href="{{url($sosmed->link)}}" class="d-flex align-items-center justify-content-between gap-3 text-decoration-none text-white mb-4">
                        <div class="d-flex align-items-center gap-3">
                            <div class="d-flex align-items-center justify-content-center">
                                <span class="iconify" data-icon="{{$sosmed->icon}}" style="width: 3em; height: 3em;"></span>
                            </div>
                            <h4>{{$sosmed->name}}</h4>
                        </div>
                        <span class="iconify" data-icon="ep:arrow-right-bold"></span>
                    </a>
                    {!! $sosmed->embed !!} 
                </div>  
                @endforeach
                
            </div>
        </div>
    </section>
    
@endsection