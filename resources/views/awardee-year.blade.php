@extends('layout.app')
@section('meta')
    @include('partials.meta', ['data' => $seo])
@endsection
@section('content')
            
<section class="heroes-page sec-pad">
    <div class="container">
        <a href="{{route('awardee')}}" class="text-dark d-inline-flex align-items-center gap-3 text-decoration-none bg-light justify-content-center p-2 px-4 rounded-5">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24">
                <path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 12h14M5 12l4-4m-4 4l4 4" />
            </svg>
            Kembali
        </a>
        <h1 class="text-big light-text-gold pb-3 ">Awardee</h1>
        <h2 class="bg-gold fs-3 text-white p-3 px-4 d-inline-block rounded-5">{{$year}}</h2>
        <div data-aos="fade-down" data-aos-duration="1000" class="py-5 row">
            
            @foreach ($awardee as $award)
            <div class="col-12 col-md-4 col-xl-3">
                <a href="{{route('awardee.item',$award->slug)}}" class="text-decoration-none d-block my-3 rounded-5 overflow-hidden position-relative hero-item">
                    <img src="{{Voyager::image($award->image)}}" alt="Awardee {{$award->name}} Image" class="w-100" style="min-height: 30em;min-width:15em; object-fit:cover;">
                    <div class="p-4 position-absolute bottom-0 end-0 start-0 hero-content">
                        <div class="d-flex align-items-center mb-2 gap-2 rounded-pill p-2 bg-gold" title="The Hero">
                            <div class="d-flex align-items-center gap-2">
                                <div>
                                    <img src="{{Voyager::image($award->hero->image)}}" alt="Heroes" style="width: 2em; height:2em; object-fit:cover; border-radius:50px">
                                </div>
                                <h6 class="m-0 p-0 text-white">{{$award->hero->name}}</h6>
                            </div>
                        </div>
                        <h4 class="lc lc-2">{{$award->name}}</h4>
                        <p class="lc lc-1">{{$award->position}}</p>
                    </div>
                </a>
            </div>
            @endforeach
            
        </div>
    </div>
</section>
    
@endsection