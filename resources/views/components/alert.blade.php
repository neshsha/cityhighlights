<div>
     @if(session()->has('message'))

    <div class="text-center text-white bg-success">{{session()->get('message')}}</div>

@elseif(session()->has('error'))

    <div class="text-center text-white bg-danger">{{session()->get('error')}}</div>

@endif

@if ($errors->any())
    <div class="alert alert-danger">
        <ul class="list-group">
            @foreach ($errors->all() as $error)
                <li class="list-group-item text-center">{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
</div>