@extends('layout.app')
@section('meta')
    @include('partials.meta', ['data' => $seo])
@endsection
@section('content')
<section class="sec-pad">
    <div class="container">
        <h1 class="text-semibig text-gold">Achievement</h1>
        <div class="row align-items-center">
            <div class="col-lg-6">
                {!! setting('content.ach_content') !!}
            </div>
            <div class="col-lg-6">
                <img src="{{Voyager::image(setting('content.ach_img'))}}" alt="" class="d-block w-100" style="object-fit: cover; aspect-ratio:3/3; border-radius: 10%">
            </div>
        </div>
    </div>
</section>
<section class="sec-pad bg-light">
    <div class="container">
        <div class="row">
            @foreach ($achievements as $achievement)
            <div class="col-12">
                <div class="d-flex flex-column flex-md-row gap-3 bg-white p-4 px-3 mb-3" style="border-radius: 25px">
                    <div class="m-0 ms-md-n3">
                        <img src="{{Voyager::image($achievement->image)}}" alt="{{$achievement->name}} foto" class="d-block w-100" style="aspect-ratio:1/1; max-width:14em; object-fit:cover; border-radius:20px">
                    </div>
                    <div class="p-4">
                        <h3>{{$achievement->name}}</h3>
                        <div class="d-flex flex-column flex-md-row align-items-start gap-3">
                            @if (strlen($achievement->academic) > 0)
                                <div>
                                    <h6>Akademik</h6>
                                    {!! $achievement->academic !!}
                                </div>
                            @endif
                            @if (strlen($achievement->non_academic) > 0)
                                <div>
                                    <h6>Non Akademik</h6>
                                    {!! $achievement->non_academic !!}
                                </div>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
@endsection