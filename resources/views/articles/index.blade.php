@extends('layouts.app')

@section('content')
    
    <div class="container">

        <h1 class="text-center bg-info text-white">Welcome to City highlights</h1>

              

              <div class="row justify-content-center">
                @foreach ($articles ?? '' as $article)
                <div class=" col-3 card p-2 m-1" onmouseover="this.style.backgroundColor = '#3490dc'; this.style.color = 'white'" onmouseout="this.style.backgroundColor = 'white'; this.style.color = 'black'">
                              <img class="card-img-top" src="/storage/{{$article->image}}" alt="Card image cap">
                              <div class="card-body">
                                <h5 class="card-title">{{$article->caption}}</h5>
                                <p class="card-text"><small>Created at: {{$article->created_at->diffForHumans()}}</small></p>
                                <a href="{{route('article.show', $article->id)}}" class="btn btn-primary">Read more</a>

                                @auth

                                <div class="row float-right">

                                  <a href="{{route('article.edit', $article->id)}}"><span class="fas fa-edit text-info mr-2"></span></a>
                                  <a><span class="fas fa-trash text-danger " onclick="event.preventDefault();
                                                                  
                                                                                                      if(confirm('Are You really want to delete?')) {
                                                                                                        document.getElementById('form-delete-{{$article->id}}').submit()
                                                                                                      }
                                                                                                  "></span></a>
                                
                                                                      <form style="display:none" method="post" id="{{'form-delete-'.$article->id}}" action="{{route('article.destroy', $article->id)}}">
                                                                        @csrf
                                                                        @method('delete')
                                
                                
                                                                      </form>
                                    </div>
                                @endauth
                              </div>
                            </div>
                 @endforeach

              </div>

              <div class="d-flex justify-content-center">{{$articles ?? ''->links()}}</div>

              <p class="bg-success text-center text-white rounded">{{ session('message')}}</p>
        

    </div>

@endsection