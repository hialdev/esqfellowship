@extends('layout.app')
@section('meta')
    @include('partials.meta', ['data' => $seo])
@endsection
@section('content')
<section class="sec-pad">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="d-inline-flex p-2 px-3 rounded align-items-center gap-3 bg-gold text-white">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 48 48">
                        <path fill="currentColor" d="M6 12.25A6.25 6.25 0 0 1 12.25 6h23.5A6.25 6.25 0 0 1 42 12.25V14H6zm0 4.25v19.25A6.25 6.25 0 0 0 12.25 42h23.5A6.25 6.25 0 0 0 42 35.75V16.5zm12 7a2.5 2.5 0 1 1-5 0a2.5 2.5 0 0 1 5 0m6 2.5a2.5 2.5 0 1 1 0-5a2.5 2.5 0 0 1 0 5m11-2.5a2.5 2.5 0 1 1-5 0a2.5 2.5 0 0 1 5 0M15.5 34a2.5 2.5 0 1 1 0-5a2.5 2.5 0 0 1 0 5m11-2.5a2.5 2.5 0 1 1-5 0a2.5 2.5 0 0 1 5 0" />
                    </svg>
                    {{\Carbon\Carbon::parse($news->created_at)->timezone('Asia/Jakarta')->format('d M Y H:i')}} WIB
                </div>
                <h1 class="normal">{{$news->title}}</h1>
                <img src="{{Voyager::image($news->imaeg)}}" alt="{{$news->title}} Image" class="d-block w-100 mb-5" style="border-radius: 25px; aspect-ratio:16/9; object-fit:cover">
                <div class="content-box">
                    {!! $news->content !!}
                </div>
            </div>
            <div class="col-lg-4">
                <h2 class="normal mb-4">Baca Juga</h2>
                @foreach ($newsLists as $nl)
                <a href="{{route('news.show', $nl->slug)}}" class="d-flex gap-3 text-dark p-4 rounded bg-light fs-6 mb-3">
                    <img src="{{Voyager::imaeg($nl->title)}}" alt="Image {{$nl->title}}" class="d-block rounded" style="aspect-ratio:16/9; max-height:5em; object-fit:cover;">
                    <div class="fs-6">{{$nl->title}}</div>
                </a>
                @endforeach
                <a href="{{route('news')}}" class="p-2 px-3 bg-gold rounded text-white text-decoration-none hovering-scale">Lihat semua</a>
            </div>
        </div>
    </div>
</section>
@endsection