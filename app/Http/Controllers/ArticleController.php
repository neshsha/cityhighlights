<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Storage;
use App\Article;
use App\User;


class ArticleController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth')->except('index', 'show');
    }
     
     public function index() {

     	$articles = Article::orderBy('created_at', 'DESC')->paginate(6);

     	return view('articles.index', compact('articles'));
     }

     public function create() {
     	return view('articles.create');
     }

     public function store(Request $request) {

     	   $data = request()->validate([



    		'caption' =>'required',
    		'image'=> ['required', 'image'],
    		'article' => 'required',
            'galery_images' => 'image',
    	]);



    	$imagePath = request('image')->store('uploads', 'public');
    	$image = Image::make(public_path("storage/{$imagePath}"))->fit(600,600);
    	$image->save();

        

        foreach($request->file('galery_image') as $file)
            {
                $galeryPath = $file->store('uploads', 'public');
                
                $galery = Image::make(public_path("storage/{$galeryPath}"))->fit(600,600);

                
                $galery->save();

                $galeryImages[] = $galery->basename;

            }


                $galeryImg = json_encode($galeryImages);
                // dd($galeryImg);

    	auth()->user()->articles()->create([
    		'caption' => $data['caption'],
    		'image' => $imagePath,
    		'article' => $data['article'],
            'galery_images' => $galeryImg,

    	]);

    	return redirect('articles/create')->with('message', 'Article created succesfully');

    }

    public function show(Article $article) {
    	// dd($article);
        return view('articles.show', compact('article'));
    }

    public function destroy(Article $article) {
        $image = $article->image;
        // $image = explode('/',$image);
        // $realPath = $image[1];

        unlink(storage_path('app/public/'.$image));

         // Storage::delete('uploads/' . $realPath);
        $article->delete();

        return redirect()->route('article.index')->with('message', 'Article deleted');
    }

     public function edit(Article $article) {
        // dd($article);
        return view('articles.edit', compact('article'));
    }

    public function update(Request $request, Article $article) {

      $data = request()->validate([

            'caption' =>'required',
            'article' => 'required'
        ]);

    


      if(request('image')) {
        $imagePath = request('image')->store('uploads', 'public');

        $image = Image::make(public_path("storage/{$imagePath}"))->fit(600,600);
        $image->save();

         $article->update([

        'caption' => $request->caption,
        'article' => $request->article,
        'image' => $imagePath,

         ]);
      }else{


    $article->update([

        'caption' => $request->caption,
        'article' => $request->article,

         ]);
      }

     
        return redirect()->route('article.index')->with('message', 'Updated!');
    }

}
