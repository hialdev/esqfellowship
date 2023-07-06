<?php

namespace App\Http\Controllers;

use App\Models\Hero;
use App\Models\Meta;
use Illuminate\Http\Request;
use TCG\Voyager\Facades\Voyager;

class HeroController extends Controller
{
    public function index() {
        $meta = Meta::all()->keyBy('page');
        $seo = (object)[
            'title' => $meta->get('heroes')->title ?? $meta->get('default')->title,
            'desc' => $meta->get('heroes')->desc ?? $meta->get('default')->desc,
            'image' => Voyager::image($meta->get('heroes')->image) ?? Voyager::image($meta->get('default')->image),
            'keyword' => $meta->get('heroes')->keyword ?? $meta->get('default')->keyword,
        ];

        $heroes = Hero::latest()->get();

        return view('heroes', compact('heroes','seo'));
    }

    public function show($slug) {
        $hero = Hero::where('slug',$slug)->first();
        $meta = Meta::all()->keyBy('page');
        $seo = (object)[
            'title' => 'The Hero - '.$hero->name ?? $meta->get('default')->title,
            'desc' => $meta->get('heroes')->desc ?? $meta->get('default')->desc,
            'image' => Voyager::image($hero->image) ?? Voyager::image($meta->get('default')->image),
            'keyword' => $meta->get('heroes')->keyword.",$hero->name ,$hero->instansi" ?? $meta->get('default')->keyword.",$hero->name ,$hero->instansi",
        ];

        return view('heroes-item', compact('hero','seo'));
    }
}
