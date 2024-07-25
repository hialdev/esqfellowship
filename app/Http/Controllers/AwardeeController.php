<?php

namespace App\Http\Controllers;

use App\Models\Awardee;
use App\Models\Meta;
use Illuminate\Http\Request;
use TCG\Voyager\Facades\Voyager;

class AwardeeController extends Controller
{
    public function year($year) {
        $meta = Meta::all()->keyBy('page');
        $seo = (object)[
            'title' => $meta->get('awardee')->title ?? $meta->get('default')->title,
            'desc' => $meta->get('awardee')->desc ?? $meta->get('default')->desc,
            'image' => Voyager::image($meta->get('awardee')->image) ?? Voyager::image($meta->get('default')->image),
            'keyword' => $meta->get('awardee')->keyword ?? $meta->get('default')->keyword,
        ];

        $awardee = Awardee::where('year', $year)->latest()->get();

        return view('awardee-year', compact('awardee','seo', 'year'));
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

    public function index(){
        $meta = Meta::all()->keyBy('page');
        $awardees = Awardee::orderBy('year')->get();
        $awardeesByYear = $awardees->groupBy('year')->map(function ($group) {
            return [
                'first_four' => $group->take(4),
                'remaining_count' => $group->count() > 4 ? $group->count() - 4 : 0
            ];
        });
        $seo = (object)[
            'title' => $meta->get('awardee')->title ?? $meta->get('default')->title,
            'desc' => $meta->get('awardee')->desc ?? $meta->get('default')->desc,
            'image' => Voyager::image($meta->get('awardee')->image) ?? Voyager::image($meta->get('default')->image),
            'keyword' => $meta->get('awardee')->keyword ?? $meta->get('default')->keyword,
        ];

        return view('awardee', compact('awardeesByYear','seo'));
    }
}
