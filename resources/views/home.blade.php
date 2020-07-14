@extends('layouts.app')

@section('content')
    
    <div class="container">

        <h1 class="text-center bg-info text-white">Welcome to News</h1>

        <div class="row">
           
           <div class="col-2">
               <a href="#" class="btn btn-info text-white mb-2">Create new</a><br>   
               <a href="#" class="btn btn-info text-white mb-2">My articles</a>
           </div>

            <div class="col-10">
               <div data-provide="calendar"></div>
           </div>


        </div>
        

    </div>

    <script>
      $('.calendar').calendar();
    </script>

@endsection
