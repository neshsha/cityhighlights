@extends('layouts.app')

@section('content')
    
    <div class="container">

        <h1 class="text-center bg-info text-white rounded"><b>{{$article->caption}}</b></h1>

       

              

              <div class="row d-flex justify-content-center">
                
                <div class="card col-10 p-2 m-1" {{-- style="width: 18rem;" --}}>
                              <img class="card-img-top" src="/storage/{{$article->image}}" alt="Card image cap">
                              <div class="card-body">
                                <h5 class="card-title">{{$article->caption}}</h5>
                                <p class="card-text">{{$article->article}}</p>

                                 <h2 class="text-center">Galery images</h2>
              <div class="d-flex justify-content-center"> 

               <div class="mr-2">
                @foreach(json_decode($article->galery_images, true) as $galery_image)
                      <a data-toggle="modal" data-target="#myModal" class="btn"><img src="/storage/uploads/{{$galery_image}}" style="height: 70px; width: 70px; border-radius: 50%;"></a>
               
                             @endforeach</div>


              </div>

<div class="container">
                                <a href="{{route('article.index')}}" class="btn btn-dark">Back</a>
                              </div>
                            </div>

              </div>

              
  <!-- The Modal -->
  <div class="modal" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title text-center">{{$article->caption}}</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          <div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">

    <li data-target="#demo" data-slide-to="0" class="active"></li>

    @foreach(array_slice(json_decode($article->galery_images, true),1) as $galery_image)

    <li data-target="#demo" data-slide-to="{{array_search($galery_image, json_decode($article->galery_images, true))}}"></li>
    @endforeach

  </ul>

  <!-- The slideshow -->
  
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/storage/uploads/{{json_decode($article->galery_images, true)[0]}}" alt="Los Angeles">
    </div>
    @foreach(array_slice(json_decode($article->galery_images, true),1) as $galery_image)
    <div class="carousel-item">
      <img src="/storage/uploads/{{$galery_image}}" alt="Los Angeles">
    </div>

   @endforeach
    
  </div>

   

  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>

</div>


        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
  
</div>
              

            

    </div>

@endsection