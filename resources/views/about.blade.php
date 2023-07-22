@extends('layout.app')
@section('meta')
    @include('partials.meta', ['data' => $seo])
@endsection
@section('content')
            
<section class="sec-pad">
    <div class="container">
        <h1 class="text-semibig text-gold text-upppercase">What is The Fellowship</h1>
        <div class="row align-items-center">
            <div data-aos="fade-right" data-aos-duration="1000" class="col-12 col-md-6">
                <h4 class="text-blue">What is fellowship generasi emas ?</h4>
                {!! setting('about.about') !!}
            </div>
            <div class="col-12 col-md-6">
                <img data-aos="fade-down" data-aos-duration="1000" src="{{Voyager::image(setting('about.image'))}}" alt="Person Image" class="w-100">
            </div>
        </div>
    </div>
</section>
<section class="about-switch sec-pad">
    <div class="container">
        <div class="d-flex align-items-center gap-4">
            <div data-aos="fade-down" data-aos-duration="1000" id="contribute" class="position-relative switcher" style="cursor: pointer;">
                <img src="{{Voyager::image(setting('about.contribute_background'))}}" alt="BG Tab About" class="">
                <div class="position-absolute bottom-0 p-4 d-flex flex-column h-100 justify-content-end" style="background: linear-gradient(180deg, rgba(17, 23, 32, 0.00) 47.40%, rgba(17, 23, 32, 0.80) 84.67%);">
                    <div class="d-flex align-items-center gap-3">
                        <h4 class="text-yellow">Contribute</h4>
                        <div class="w-100 bg-white" style="height: 2px;"></div>
                    </div>
                    <div class="d-flex align-items-center gap-3 text-white">
                        <p class="lc lc-3">{{setting('about.contribute_excerpt')}}</p>
                        <span class="iconify text-yellow" style="width: 4.5em; height: 4.5em;" data-icon="icon-park-solid:right-c"></span>
                    </div>
                </div>
            </div>
            <div data-aos="fade-down" data-aos-duration="1000" id="benefit" class="position-relative switcher" style="cursor: pointer;">
                <img src="{{Voyager::image(setting('about.benefit_background'))}}" alt="BG Tab About" class="">
                <div class="position-absolute bottom-0 p-4 d-flex flex-column h-100 justify-content-end">
                    <div class="d-flex align-items-center gap-3">
                        <h4 class="text-yellow">Benefit</h4>
                        <div class="w-100 bg-white" style="height: 2px;"></div>
                        
                    </div>
                    <div class="d-flex align-items-center gap-3 text-white">
                        <p class="lc lc-3">{{setting('about.benefit_excerpt')}}</p>
                        <span class="iconify text-yellow" style="width: 4.5em; height: 4.5em;" data-icon="icon-park-solid:right-c"></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Modal Contribute -->
<div id="contribute-modal" class="position-fixed top-0 w-100 end-0 h-100 start-0 p-4 bg-white" style="z-index: 100; overflow-x: hidden; overflow-y: auto;">
    <div class="position-fixed top-0 start-0" style="z-index:10">
        <div id="close-modal" class="p-3 d-flex align-items-center justify-content-center" style="cursor: pointer;">
            <span class="iconify" data-icon="mingcute:back-fill" style="width: 3em; height: 3em;"></span>
        </div>
    </div>
    <div class="container">
        <div class="py-5">
            <h1 class="text-semibig text-blue text-upppercase">Contribute</h1>
            <div class="row align-items-center">
                <div data-aos="fade-right" data-aos-duration="1000" class="col-12 col-md-6">
                    {!! setting('about.contribute_desc') !!}
                </div>
                <div class="col-12 col-md-6">
                    <img data-aos="fade-down" data-aos-duration="1000" src="{{Voyager::image(setting('about.contribute_image'))}}" alt="Person Image" class="w-100">
                </div>
            </div>
        </div>
    </div>
    <div class="position-fixed bottom-0 w-100 end-0 start-0 p-4">
        <div class="container">
            <a href="https://wa.me/{{setting('contact.wa')}}?text=Hi+ESQ+Fellowship+Saya+ingin+berkontribusi" class="btn bg-dark p-3 rounded-4 d-inline-flex items-center gap-3">Saya ingin berkontribusi <div><span class="iconify text-yellow" style="width: 1em; height: 1em;" data-icon="icon-park-solid:right-c"></span></div></a>
        </div>
    </div>
</div>

<!-- Modal Benefit -->
<div id="benefit-modal" class="position-fixed top-0 w-100 end-0 h-100 start-0 p-4 bg-white" style="z-index: 100; overflow-x: hidden; overflow-y: auto;">
    <div class="position-fixed top-0 start-0" style="z-index:10">
        <div id="benefit-close-modal" class="p-3 d-flex align-items-center justify-content-center" style="cursor: pointer;">
            <span class="iconify" data-icon="mingcute:back-fill" style="width: 3em; height: 3em;"></span>
        </div>
    </div>
    <div class="container">
        <div class="py-5">
            <h1 class="text-semibig text-blue text-upppercase">The Benefit</h1>
            <div class="row align-items-center">
                <div data-aos="fade-right" data-aos-duration="1000" class="col-12 col-md-6">
                    {!! setting('about.benefit_desc') !!}
                </div>
                <div class="col-12 col-md-6">
                    <img data-aos="fade-down" data-aos-duration="1000" src="{{Voyager::image(setting('about.benefit_image'))}}" alt="Person Image" class="w-100">
                </div>
            </div>
        </div>
    </div>
    <div class="position-fixed bottom-0 w-100 end-0 start-0 p-4">
        <div class="container">
            <a href="https://wa.me/{{setting('contact.wa')}}?text=Hi+ESQ+Fellowship+Saya+ingin+berkontribusi" class="btn bg-dark p-3 rounded-4 d-inline-flex items-center gap-3">Saya ingin berkontribusi <div><span class="iconify text-yellow" style="width: 1em; height: 1em;" data-icon="icon-park-solid:right-c"></span></div></a>
        </div>
    </div>
</div>
    
@endsection