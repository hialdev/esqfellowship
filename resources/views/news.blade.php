@extends('layout.app')
@section('meta')
    @include('partials.meta', ['data' => $seo])
@endsection
@section('content')
<section class="sec-pad">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <h1 class="text-gold">{{setting('content.news_title')}}</h1>
                <p style="max-width: 30em;" class="mx-auto w-100">{{setting('content.news_description')}}</p>
                <form method="GET" action="{{route('news')}}">
                    <div class="d-flex align-items-center gap-3 mx-auto" style="max-width: 40em">
                        <input type="text" name="q" value="{{old('q', request()->get('q'))}}" class="form-control p-2 px-3" style="border-radius: 99px" placeholder="Cari Berita..">
                        <button class="btn bg-gold p-0 d-flex align-items-center justify-content-center p-2 rounded-circle"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><g fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"><circle cx="11" cy="11" r="8"/><path d="m21 21l-4.3-4.3"/></g></svg></button>
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
                <div class="col-6 col-md-4 col-lg-3 mb-4">
                    <a href="{{ route('news.show', $new->slug) }}" class="d-block hover-scale h-100 p-2 pb-0 rounded bg-white text-decoration-none text-dark">
                        <img src="{{ Voyager::image($new->image) }}" alt="Image {{ $new->title }} News" class="d-block rounded w-100" style="aspect-ratio:16/9; object-fit: cover">
                        <div class="p-3 px-2">
                            <div class="text-secondary mb-2" style="font-size: 12px">
                                {{ \Carbon\Carbon::parse($new->created_at)->timezone('Asia/Jakarta')->format('d F Y') }}
                            </div>
                            <div style="font-size: 14px">{{ $new->title }}</div>
                        </div>
                    </a>
                </div>
            @endforeach

            {{-- Custom Pagination --}}
            @if ($news->hasPages())
                <div class="col-12 mt-2">
                    <nav>
                        <ul class="pagination justify-content-center">
                            {{-- Previous Page Link --}}
                            @if ($news->onFirstPage())
                                <li class="page-item p-1 border-0 outline-0 shadow-0 disabled">
                                    <span class="page-link p-2 px-4 outline-0 border-0">Previous</span>
                                </li>
                            @else
                                <li class="page-item p-1 border-0 outline-0 shadow-0">
                                    <a class="page-link p-2 px-4 outline-0 border-0" href="{{ $news->previousPageUrl() }}" rel="prev">Previous</a>
                                </li>
                            @endif

                            {{-- Pagination Elements --}}
                            @php
                                $elements = $news->links();
                            @endphp

                            @foreach ($news->getUrlRange(1, $news->lastPage()) as $page => $url)
                                @if ($page == $news->currentPage())
                                    <li class="page-item p-1 border-0 outline-0 shadow-0 active"><span class="page-link p-2 px-4 outline-0 border-0">{{ $page }}</span></li>
                                @else
                                    <li class="page-item p-1 border-0 outline-0 shadow-0"><a class="page-link p-2 px-4 outline-0 border-0" href="{{ $url }}">{{ $page }}</a></li>
                                @endif
                            @endforeach

                            {{-- Next Page Link --}}
                            @if ($news->hasMorePages())
                                <li class="page-item p-1 border-0 outline-0 shadow-0">
                                    <a class="page-link p-2 px-4 outline-0 border-0" href="{{ $news->nextPageUrl() }}" rel="next">Next</a>
                                </li>
                            @else
                                <li class="page-item p-1 border-0 outline-0 shadow-0 disabled">
                                    <span class="page-link p-2 px-4 outline-0 border-0">Next</span>
                                </li>
                            @endif
                        </ul>
                    </nav>
                </div>
            @endif
        </div>
    </div>
</section>


@endsection