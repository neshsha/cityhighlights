@extends('layouts.app')

@section('content')

    <div class="container">
      <h1 class="text-center bg-info text-white rounded">Update article</h1>
      
      <x-alert />
      <form action="{{route('article.update', $article->id)}}" method="POST" enctype="multipart/form-data">
       @csrf
       @method('patch')
        
      <div class="form-group">
      <label for="caption">Caption</label>
      <input type="text" class="form-control" value="{{$article->caption}}" name="caption" placeholder="Article caption" id="caption">
      </div>

      <div class="form-group">
        <label for="image">Article image</label>
      <input type="file" class="form-control-file" name="image" id="image" >
      </div>

       <div class="form-group">
      <label for="article">Article</label>
      <textarea name="article" class="form-control" id="article"  placeholder="Article text">{{$article->article}}</textarea>
      </div>

    
  <button type="submit" class="btn btn-primary">Update article</button>
      </form>
      <br>
      <p class="bg-success text-center text-white rounded">{{ session('message')}}</p>
      
    </div>
        
@endsection