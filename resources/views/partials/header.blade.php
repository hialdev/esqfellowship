<header>
    <nav class="d-flex align-items-center gap-4 menu p-3 px-3 px-lg-5 bg-transparent position-absolute top-0 left-0 right-0 w-100" style="z-index: 100;">
        <a href="{{route('home')}}" class="d-flex align-items-center justify-content-center text-decoration-none">
            <img src="{{ request()->is('/') ? '/src/images/logo.png' : '/src/images/logo1.png'}}" alt="Logo ESQ Business School" style="max-height: 3em; filter: grayscale(100)">
        </a>
        <div class="menu-list">
            <a href="{{route('about')}}" class="menu-item {{ request()->is('about') ? 'active' : ''}}">About</a>
            <a href="{{route('heroes')}}" class="menu-item {{ request()->is('heroes*') ? 'active' : ''}}">Our Heroes</a>
            <a href="{{route('awardee')}}" class="menu-item {{ request()->is('awardee*') ? 'active' : ''}}">Awardee</a>
            <a href="{{route('home')}}#sosmed" class="menu-item">Social Media</a>
        </div>
        <div class="menu-toggle ms-auto">
            <input type="checkbox" name="" class="check">
            <span></span>
            <span></span>
            <span></span>
        </div>
    </nav>
</header>