<header>
    <nav class="d-flex align-items-center gap-4 menu px-3 px-lg-5 bg-transparent position-absolute top-0 left-0 right-0 w-100" style="z-index: 100;">
        <a href="{{route('home')}}" class="d-flex gap-3 align-items-center justify-content-center text-decoration-none bg-white p-3" style="border-bottom-left-radius: 20px;border-bottom-right-radius: 20px;">
            <img src="{{ Voyager::image(setting('site.logo_stimik'))}}" alt="Logo ESQ Business School" style="max-height: 3em;">
            <div class="bg-light" style="height: 3em; width:2px"></div>
            <img src="{{ Voyager::image(setting('site.logo_uag'))}}" alt="Logo ESQ Business School" style="max-height: 3em;">
        </a>
        <div class="menu-list">
            <a href="{{route('about')}}" class="menu-item {{ request()->is('about') ? 'active' : ''}}">About</a>
            <a href="{{route('heroes')}}" class="menu-item {{ request()->is('fellows*') ? 'active' : ''}}">Our Fellows</a>
            <a href="{{route('awardee')}}" class="menu-item {{ request()->is('awardee*') ? 'active' : ''}}">Awardee</a>
            <a href="{{route('achievement')}}" class="menu-item {{ request()->is('achievement*') ? 'active' : ''}}">Achievement</a>
            <a href="{{route('news')}}" class="menu-item {{ request()->is('news*') ? 'active' : ''}}">News</a>
            @php
                $extenders = \App\Models\ExtenderMenu::all();
            @endphp
            @foreach ($extenders as $extend)
                <a href="{{$extend->link}}" target="_blank" class="menu-item" style="text-transform: capitalize">{{$extend->menu}}</a>
            @endforeach
            <a href="{{route('regist')}}" class="text-decoration-none fw-bold bg-gold p-2 px-4 text-white hover-scale rounded-pill {{ request()->is('regist*') ? 'active' : ''}}">Daftar Fellowship</a>
        </div>
        <div class="menu-toggle ms-auto">
            <input type="checkbox" name="" class="check">
            <span></span>
            <span></span>
            <span></span>
        </div>
    </nav>
</header>