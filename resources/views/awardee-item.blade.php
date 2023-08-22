@extends('layout.app')
@section('meta')
    @include('partials.meta', ['data' => $seo])
@endsection
@section('content')
            
<section class="awardee-item sec-pad">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <p class="fw-bold">THE AWARDEE</p>
                <h1 class="text-semibig text-gold">{{$awardee->name}}</h1>
                
            </div>
            <div class="col-12 col-md-6">
                <h4 class="fs-4 fw-bold mb-5">
                    {{$awardee->position}} 
                    {{-- <br /> {{$awardee->jurusan}} --}}
                </h4>
                <p>Fellowship by :</p>
                <a href="{{route('heroes.item',$awardee->hero->slug)}}" class="text-decoration-none text-white d-inline-flex mb-4 align-items-center gap-3 p-2 pe-4 rounded-pill bg-gold">
                    <img src="{{Voyager::image($awardee->hero->image)}}" alt="Heroes for this awardee" style="width: 5em; height: 5em; object-fit: cover;" class="rounded-circle" >
                    <h4 class="lc lc-1">{{$awardee->hero->name}}</h4>
                    <span class="iconify" data-icon="ep:arrow-right-bold" style="width: 2em; height: 2em; margin-left: 1em;"></span>
                </a>
                
                <div>
                    {!! $awardee->about !!}
                </div>
            </div>
            <div class="col-12 col-md-6">
                <img src="{{Voyager::image($awardee->image)}}" alt="Awardee {{ $awardee->name }} Detail" class="d-block w-100" style="max-height: 35em; object-fit:contain; object-position:center">
            </div>
        </div>
    </div>
</section>
    
@endsection