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
            <div class="col-12">
                <form action="{{route('achievement.search')}}" method="GET">
                    <div class="d-flex align-items-center justify-content-center gap-3 mb-3">
                        <input type="text" class="form-control border-white p-2 px-4 rounded-pill" name="q" placeholder="Cari dengan Nama Mahasiswa" minlength="3">
                        <button type="submit" class="btn p-2 px-3 rounded-pill bg-gold text-white hover-scale">Cari</button>
                    </div>
                </form>
            </div>
        @foreach ($achievementsByYear as $year => $achievements)
            <div class="col-12">
                <a href="{{route('achievement.year',$year)}}" class="d-flex align-items-center mb-3 gap-5 text-decoration-none text-dark">
                    <h2 class="text-semibig text-gold mb-0 p-0">{{$year}}</h2>
                    <div class="btn rounded-pill bg-gold text-white hover-scale">Lihat semua Achievement {{$year}}</div>
                </a>
            </div>

            @foreach ($achievements['first_four'] as $achievement)
            <div class="col-12">
                <div class="d-flex flex-column flex-md-row gap-3 bg-white p-4 px-3 mb-3" style="border-radius: 25px">
                    <div class="m-0 ms-md-n3">
                        <img src="{{Voyager::image($achievement->image)}}" alt="{{$achievement->name}} foto" class="d-block w-100" style="aspect-ratio:1/1; max-width:14em; object-fit:cover; border-radius:20px">
                    </div>
                    <div class="p-4">
                        <h3>{{$achievement->name}}</h3>
                        <div class="d-flex flex-column flex-md-row align-items-start gap-3">
                            @if (strlen($achievement->achievement) > 0)
                                <div>
                                    {!! $achievement->achievement !!}
                                </div>
                            @else
                                <div>
                                    <div class="text-secondary">Achievement sedang dalam proses input</div>
                                </div>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
            @if ($achievements['remaining_count'] > 0)
            <div class="fs-5 text-secondary">dan {{$achievements['remaining_count']}} Achievement lainnya</div>
            @endif
        </div>
        @endforeach
    </div>
</section>
@endsection