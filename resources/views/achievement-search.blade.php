@extends('layout.app')
@section('meta')
    @include('partials.meta', ['data' => $seo])
@endsection
@section('content')
            
<section class="achievement-page sec-pad pb-5">
    <div class="container">
        <a href="{{route('achievement')}}" class="text-dark d-inline-flex align-items-center gap-3 text-decoration-none bg-light justify-content-center p-2 px-4 rounded-5">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24">
                <path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 12h14M5 12l4-4m-4 4l4 4" />
            </svg>
            Kembali
        </a>
        <h3 class="text-semibig light-text-gold pb-2">Search Achievement</h3>
        <div class="text-secondary mb-3">Menampilkan Achievement untuk pencarian : <span class="fw-semibold">{{$q}}</span></div>
        <form action="{{route('achievement.search')}}" method="GET">
            <div class="d-flex align-items-center justify-content-center gap-3 mb-3">
                <input type="text" class="form-control border-white p-2 px-4 rounded-pill bg-light" name="q" value="{{old('value', $q)}}" placeholder="Cari dengan Nama Mahasiswa" minlength="3">
                <button type="submit" class="btn p-2 px-3 rounded-pill bg-gold text-white hover-scale">Cari</button>
            </div>
        </form>
    </div>
</section>
<section class="bg-light py-5">
    <div class="container">
        <div data-aos="fade-down" data-aos-duration="1000" class="row">
            @forelse ($achievements as $achievement)
            <div class="col-12">
                <div class="d-flex flex-column flex-md-row gap-3 bg-white p-4 px-3 mb-3" style="border-radius: 25px">
                    <div class="m-0 ms-md-n3">
                        <img src="{{Voyager::image($achievement->image)}}" alt="{{$achievement->name}} foto" class="d-block w-100" style="aspect-ratio:1/1; max-width:14em; object-fit:cover; border-radius:20px">
                    </div>
                    <div class="p-4 w-100">
                        <div class="d-flex align-items-center flex-wrap justify-content-between">
                            <h3 class="mb-0">{{$achievement->name}}</h3>
                            <div class="bg-gold text-white p-2 px-3 fw-bold d-inline-block rounded-pill mb-2">{{$achievement->year}}</div>
                        </div>
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
            @empty
            <div class="d-flex align-items-center p-5 text-secondary">Tidak ada data yang ditemukan, pastikan kata kunci pencarian benar</div>
            @endforelse
        </div>
    </div>
</section>
    
@endsection