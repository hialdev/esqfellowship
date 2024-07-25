<?php

namespace App\Http\Controllers;

use App\Models\Meta;
use App\Models\News;
use Carbon\Carbon;
use Illuminate\Http\Request;
use TCG\Voyager\Facades\Voyager;

class NewsController extends Controller
{
    public function index(){
        $news = News::paginate(10);
        $meta = Meta::all()->keyBy('page');
        $seo = (object)[
            'title' => $meta->get('news')->title ?? $meta->get('default')->title,
            'desc' => $meta->get('news')->desc ?? $meta->get('default')->desc,
            'image' => Voyager::image($meta->get('news')->image) ?? Voyager::image($meta->get('default')->image),
            'keyword' => $meta->get('news')->keyword ?? $meta->get('default')->keyword,
        ];

        return view('news', compact('seo', 'news'));
    }

    public function show($slug){
        $news = News::where('slug', $slug)->first();
        // Mengambil daftar berita acak selain dari slug yang sedang dibuka
        $newsLists = News::where('slug', '!=', $slug)->inRandomOrder()->limit(4)->get()->map(function ($item) {
            $item->formatted_date = Carbon::parse($item->created_at)->locale('id')->timezone('Asia/Jakarta')->isoFormat('D MMM Y HH:mm') . ' WIB';
            return $item;
        });
        
        $meta = Meta::all()->keyBy('page');
        
        $seo = (object)[
            'title' => $news->title ?? $meta->get('default')->title,
            'desc' => $news->desc ?? $meta->get('default')->desc,
            'image' => Voyager::image('') ?? Voyager::image($meta->get('default')->image),
            'keyword' => $news->keyword ?? $meta->get('default')->keyword,
        ];
        return view('news-item', compact('seo', 'news','newsLists'));
    }
}
