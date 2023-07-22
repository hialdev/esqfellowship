@extends('layout.app')
@section('meta')
    @include('partials.meta', ['data' => $seo])
@endsection
@section('content')
            
<section class="heroes-page sec-pad">
    <div class="container">
        <h1 class="text-big text-gold">Awardee</h1>
        <div data-aos="fade-down" data-aos-duration="1000" class="py-5 row">
            
            @foreach ($awardee as $award)
            <div class="col-12 col-md-4 col-xl-3">
                <a href="{{route('awardee.item',$award->slug)}}" class="text-decoration-none d-block my-3 rounded-5 overflow-hidden position-relative hero-item">
                    <img src="{{Voyager::image($award->image)}}" alt="Heroes Image" class="w-100" style="min-height: 30em;min-width:15em; object-fit:cover;">
                    <div class="p-4 position-absolute bottom-0 end-0 start-0 hero-content">
                        <div class="d-flex align-items-center mb-2 gap-2 rounded-pill p-2 bg-gold" title="The Hero">
                            <div class="d-flex align-items-center gap-2">
                                <img src="./src/images/person.png" alt="Heroes" style="width: 2em; height:2em; object-fit:cover; border-radius:50px">
                                <h6 class="m-0 p-0 text-white">{{$award->name}}</h6>
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