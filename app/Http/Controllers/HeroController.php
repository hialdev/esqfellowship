<?php

namespace App\Http\Controllers;

use App\Models\Hero;
use App\Models\Meta;
use Illuminate\Http\Request;
use TCG\Voyager\Facades\Voyager;

class HeroController extends Controller
{
    public function year($year) {
        $meta = Meta::all()->keyBy('page');
        $seo = (object)[
            'title' => $meta->get('heroes')->title ?? $meta->get('default')->title,
            'desc' => $meta->get('heroes')->desc ?? $meta->get('default')->desc,
            'image' => Voyager::image($meta->get('heroes')->image) ?? Voyager::image($meta->get('default')->image),
            'keyword' => $meta->get('heroes')->keyword ?? $meta->get('default')->keyword,
        ];

        $heroes = Hero::where('year', $year)->latest()->get();

        return view('heroes-year', compact('heroes','seo', 'year'));
    }

    public function show($slug) {
        $hero = Hero::where('slug',$slug)->first();
        $meta = Meta::all()->keyBy('page');
        $seo = (object)[
            'title' => 'The Fellow - '.$hero->name ?? $meta->get('default')->title,
            'desc' => $meta->get('heroes')->desc ?? $meta->get('default')->desc,
            'image' => Voyager::image($hero->image) ?? Voyager::image($meta->get('default')->image),
            'keyword' => $meta->get('heroes')->keyword.",$hero->name ,$hero->instansi" ?? $meta->get('default')->keyword.",$hero->name ,$hero->instansi",
        ];

        return view('heroes-item', compact('hero','seo'));
    }

    public function index() {
        $heroes = Hero::orderBy('year')->get();
        $heroesByYear = $heroes->groupBy('year')->map(function ($group) {
            return [
                'first_four' => $group->take(4),
                'remaining_count' => $group->count() > 4 ? $group->count() - 4 : 0
            ];
        });
        $meta = Meta::all()->keyBy('page');
        $seo = (object)[
            'title' => $meta->get('heroes')->title ?? $meta->get('default')->title,
            'desc' => $meta->get('heroes')->desc ?? $meta->get('default')->desc,
            'image' => Voyager::image($meta->get('heroes')->image) ?? Voyager::image($meta->get('default')->image),
            'keyword' => $meta->get('heroes')->keyword ?? $meta->get('default')->keyword,
        ];

        return view('heroes', compact('heroesByYear','seo'));
    }
}
