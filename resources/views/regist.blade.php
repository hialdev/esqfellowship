@extends('layout.app')
@section('meta')
    @include('partials.meta', ['data' => $seo])
@endsection
@section('content')
<section class="sec-pad bg-light">
    <div class="container bg-white p-3 p-md-5">
        <section class="position-relative mb-5 rounded overflow-hidden" style="height: 80vh !important;">
            <div class="owl-carousel owl-theme hero-carousel">
                <img src="{{Voyager::image(setting('content.reg_img'))}}" alt="Registration Banner" class="w-100 object-fit-cover" style="height: 80vh !important;object-fit: cover;">
            </div>
            <div class="position-absolute top-0 right-0 left-0 w-100" style="height:90vh; z-index: 10;">
                <div class="d-flex flex-column align-items-center justify-content-center h-100 text-center p-4" style="background: linear-gradient(180deg, rgba(17, 24, 33, 0) 3.19%, #081464 82.37%);">
                    <div style="max-width: 50em;">
                        <h1 data-aos="zoom-in-down" data-aos-duration="1000" class="text-gold text-semibig text-wrap pb-2">{{setting('content.reg_title')}}</h1>
                        <p data-aos="fade-up" data-aos-duration="3000" class="fs-6 text-white">{{setting('content.reg_desc')}}</p>
                        <a href="{{setting('content.reg_btn_link')}}" class="d-inline-block p-3 px-4 rounded-pill text-decoration-none bg-gold text-white" style="margin-top: auto">{{setting('content.reg_btn_text')}}</a>
                    </div>
                </div>
            </div>
        </section>
        
    </div>
</section>
@endsection