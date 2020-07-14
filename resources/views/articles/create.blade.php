@extends('layouts.app')

@section('content')

    <div class="container">
      <h1 class="text-center bg-info text-white rounded">Create new article</h1>

      
      <x-alert />
      <form action="{{route('article.store')}}" method="POST" enctype="multipart/form-data">
       @csrf
        
      <div class="form-group">
      <label for="caption">Caption</label>
      <input type="text" class="form-control" name="caption" placeholder="Article caption" id="caption">
      </div>

      <div class="form-group">
        <label for="image">Article image</label>
      <input type="file" class="form-control-file" name="image" id="image" >
      </div>

      <div class="form-group">
        <label for="galery_image">Galery images</label>
      <input type="file" class="form-control-file" name="galery_image[]" id="galery_image" multiple >
      </div>

       <div class="form-group">
      <label for="article">Article</label>
      <textarea name="article" class="form-control" id="article" placeholder="Article text"></textarea>
      </div>

    
  <button type="submit" class="btn btn-primary">Create article</button>
   <a href="{{route('article.index')}}" class="btn btn-dark float-right">Back</a>
      </form>


      <br>
      
    </div>
        
@endsection