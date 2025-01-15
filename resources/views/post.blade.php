@extends('layouts.master')
@section('content')

<div class="col-xl-8">
<form method="GET" action="{{ url('dashboard') }}">
    <div class="input-group mb-3">
        <input type="text" name="search" class="form-control" placeholder="Search students" value="{{ $search ?? '' }}">
        <button class="btn btn-primary" type="submit">Search</button>
    </div>
</form>
    <table class="table table-success table-striped">
        <thead>
            <tr>
                <th>#</th>
                <th>Title</th>
                <th>Post</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($posts as $key => $value)
                <tr>
                    <td>{{ $key +1 }}</td>
                    <td>{{ $value->title }}</td>
                    <td>{{ $value->content }}</td>
                    <td>
                        
                        <!-- some other method for gate end  -->
                        <a href="{{Route('post.view',[$value->id])}}"><i class="fa fa-eye" aria-hidden="true"></i></a>
                        
                        <a href=""><i class="fa fa-pencil-square" aria-hidden="true"></i>
                        <a href=""><i class="fa fa-trash" aria-hidden="true"></i></a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
    {{ $posts->links('pagination::bootstrap-5') }}
    
</div>

@endsection
@section('script')
@parent 

@endsection 
