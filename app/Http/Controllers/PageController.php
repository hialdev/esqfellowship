<?php

namespace App\Http\Controllers;

use App\Mail\WebMail;
use App\Models\Awardee;
use App\Models\Banner;
use App\Models\Hero;
use App\Models\Mail;
use App\Models\Meta;
use App\Models\Sosmed;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail as FacadesMail;
use TCG\Voyager\Facades\Voyager;

class PageController extends Controller
{
    public function index() {
        $meta = Meta::all()->keyBy('page');
        $seo = (object)[
            'title' => $meta->get('home')->title ?? $meta->get('default')->title,
            'desc' => $meta->get('home')->desc ?? $meta->get('default')->desc,
            'image' => Voyager::image($meta->get('home')->image) ?? Voyager::image($meta->get('default')->image),
            'keyword' => $meta->get('home')->keyword ?? $meta->get('default')->keyword,
        ];

        $heroes = Hero::latest()->limit(4)->get();
        $awardee = Awardee::latest()->limit(5)->get();
        $banners = Banner::where('pakai','1')->get();
        $sosmeds = Sosmed::all();

        return view('index', compact('heroes','awardee','banners','sosmeds','seo'));
    }

    public function about() {
        $meta = Meta::all()->keyBy('page');
        $seo = (object)[
            'title' => $meta->get('about')->title ?? $meta->get('default')->title,
            'desc' => $meta->get('about')->desc ?? $meta->get('default')->desc,
            'image' => Voyager::image($meta->get('about')->image) ?? Voyager::image($meta->get('default')->image),
            'keyword' => $meta->get('about')->keyword ?? $meta->get('default')->keyword,
        ];

        return view('about', compact('seo'));
    }

    public function contact(Request $req) {
        $validate = $req->validate([
            'name' => 'required|min:4|max:23',
            'email' => 'required|email',
            'no' => 'required|numeric',
            'messages' => 'required'
        ]);

        $saveMail = Mail::create($validate);

        if($saveMail){
            $mail = setting('site.mail_receiver');
            FacadesMail::to($mail)->send(new WebMail($validate));
            
            $wa = setting('site.wa');
            $txt = "Hi%20ESQ%20Fellowship%21%21%20saya%20".$req->get('name')."%20-%20dengan%20email%20".$req->get('email').".com%20dan%20no%20telp%20".$req->get('no')."%0A%0A".$req->get('messages');
            return redirect()->away("https://wa.me/$wa?text=$txt");
        }


    }
}
