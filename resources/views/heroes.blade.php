@extends('layout.app')
@section('meta')
    @include('partials.meta', ['data' => $seo])
@endsection
@section('content')
            
<section class="heroes-page sec-pad">
    <div class="container">
        <h1 class="text-big text-gold">Our Heroes</h1>
        <div data-aos="fade-down" data-aos-duration="1000" class="py-5 row">
            
            @foreach ($heroes as $hero)
            <div class="col-6 col-md-4 col-xl-3">
                <a href="{{route('heroes.item',$hero->slug)}}" class="text-decoration-none d-block my-3 rounded-5 overflow-hidden position-relative hero-item">
                    <img src="{{Voyager::image($hero->image)}}" alt="Heroes Image {{$hero->name}}" class="w-100" style="min-height: 26em; min-width:15em; object-fit:cover">
                    <div class="p-4 position-absolute bottom-0 end-0 start-0 hero-content">
                        <h4 class="lc lc-2">{{$hero->name}}</h4>
                        <p class="lc lc-1">{{$hero->job}} - {{$hero->instansi}}</p>
                    </div>
                </a>
            </div>
            @endforeach
            
        </div>
    </div>
</section>
    
@endsection