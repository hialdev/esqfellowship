@extends('layout.app')
@section('meta')
    @include('partials.meta', ['data' => $seo])
@endsection
@section('content')
<section class="sec-pad">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <h1 class="text-gold">News</h1>
                <p style="max-width: 30em;" class="mx-auto w-100">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Beatae harum autem praesentium dicta labore quos veritatis nesciunt necessitatibus</p>
                <form method="GET" action="{{route('news')}}">
                    <div class="d-flex align-items-center gap-3 mx-auto" style="max-width: 40em">
                        <input type="text" class="form-control p-2 px-3" style="border-radius: 99px" placeholder="Cari judul berita...">
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<section class="sec-pad bg-light">
    <div class="container">
        <div class="row">
            @foreach ($news as $new)
            <div class="col-6 col-md-4 col-lg-3">
                <a href="{{route('news.show', $new->slug)}}" class="d-block hover-scale p-2 mb-4 rounded bg-white text-decoration-none text-dark">
                    <img src="{{Voyager::image($new->image)}}" alt="Image News" class="d-block rounded w-100" style="aspect-ratio:16/9;object-fit: cover">
                    <div class="p-3 px-2">
                        <div class="text-secondary mb-2">{{\Carbon\Carbon::parse($new->created_at)->timezone('Asia/Jakarta')->format('d M Y H:i')}} WIB</div>
                        <h6>{{$new->title}}</h6>
                    </div>
                </a>
            </div>
            @endforeach
        </div>
    </div>
</section>
@endsection