@extends('layout.app')
@section('meta')
    @include('partials.meta', ['data' => $seo])
@endsection
@section('content')
            
<section class="heroes-item pb-5 sec-pad">
    <div class="container">
        <div class="row">
            <div class="col-12 my-5">
                <p class="fw-bold bg-gold text-white p-3 px-4 d-inline-block rounded-pill">THE FELLOWS</p>
                <h1 class="text-semibig text-gold mb-0">{{$hero->name}}</h1>
                @if (isset($hero->job) && isset($hero->instansi))
                <h4 class="fs-4 fw-bold" style="margin-top: -3%;">
                    {{$hero->job}} of {{$hero->instansi}}
                </h4>
                @endif
            </div>
            <div class="col-12 col-md-6">
                <div>
                    {!! $hero->about !!}
                </div>
            </div>
            <div class="col-12 col-md-6">
                <img src="{{Voyager::image($hero->image)}}" alt="Fellows {{$hero->name}} image" class="d-block w-100" style="max-height: 35em; object-fit:contain; object-position:center">
            </div>
            <div class="col-12 py-5 my-4">
                <h2>The Awardee</h2>
                <div class="owl-carousel awardee-item-carousel owl-theme">
                    @foreach ($hero->awardees as $award)
                    <div>
                        <a href="{{route('awardee.item',$award->slug)}}" class="d-block position-relative overflow-hidden" style="border-radius: 25px;">
                            <img src="{{Voyager::image($award->image)}}" alt="Awardee {{$award->name}}" style="min-height: 26em; min-width:15em; object-fit:cover">
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
                </div>
            </div>
        </div>

    </div>
</section>
    
@endsection