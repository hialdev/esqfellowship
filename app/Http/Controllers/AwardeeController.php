<?php

namespace App\Http\Controllers;

use App\Models\Awardee;
use App\Models\Meta;
use Illuminate\Http\Request;
use TCG\Voyager\Facades\Voyager;

class AwardeeController extends Controller
{
    public function index() {
        $meta = Meta::all()->keyBy('page');
        $seo = (object)[
            'title' => $meta->get('awardee')->title ?? $meta->get('default')->title,
            'desc' => $meta->get('awardee')->desc ?? $meta->get('default')->desc,
            'image' => Voyager::image($meta->get('awardee')->image) ?? Voyager::image($meta->get('default')->image),
            'keyword' => $meta->get('awardee')->keyword ?? $meta->get('default')->keyword,
        ];

        $awardee = Awardee::latest()->get();

        return view('awardee', compact('awardee','seo'));
    }

    public function show($slug) {
        $meta = Meta::all()->keyBy('page');
        $awardee = Awardee::where('slug',$slug)->first();
        $seo = (object)[
            'title' => 'The Awardee - '.$awardee->name ?? $meta->get('default')->title,
            'desc' => $meta->get('awardee')->desc ?? $meta->get('default')->desc,
            'image' => Voyager::image($awardee->image) ?? Voyager::image($meta->get('default')->image),
            'keyword' => $meta->get('awardee')->keyword.", $awardee->name" ?? $meta->get('default')->keyword.", $awardee->name",
        ];

        return view('awardee-item', compact('awardee','seo'));
    }
}
