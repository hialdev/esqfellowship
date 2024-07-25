@extends('layout.app')
@section('meta')
    @include('partials.meta', ['data' => $seo])
@endsection
@section('content')
            
<section class="heroes-page sec-pad">
    <div class="container">
        <a href="{{route('heroes')}}" class="text-dark d-inline-flex align-items-center gap-3 text-decoration-none bg-light justify-content-center p-2 px-4 rounded-5">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24">
                <path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 12h14M5 12l4-4m-4 4l4 4" />
            </svg>
            Kembali
        </a>
        <h1 class="text-big light-text-gold pb-3">Our Fellows</h1>
        <h2 class="bg-gold text-white p-3 px-4 d-inline-block rounded-5 fs-3">{{$year}}</h2>
        <div data-aos="fade-down" data-aos-duration="1000" class="py-5 row">
            
            @foreach ($heroes as $hero)
            <div class="col-12 col-md-4 col-xl-3">
                <a href="{{route('heroes.item',$hero->slug)}}" class="text-decoration-none d-block my-3 rounded-5 overflow-hidden position-relative hero-item">
                    <img src="{{Voyager::image($hero->image)}}" alt="Fellows Image {{$hero->name}}" class="w-100" style="aspect-ratio:2/3; object-fit:cover">
                    <div class="p-4 position-absolute bottom-0 end-0 start-0 hero-content">
                        <h4 class="lc lc-2">{{$hero->name}}</h4>
                        @if (isset($hero->job) && isset($hero->instansi))
                            <p class="lc lc-1">{{$hero->job}} - {{$hero->instansi}}</p>
                        @endif
                    </div>
                </a>
            </div>
            @endforeach
            
        </div>
    </div>
</section>
    
@endsection