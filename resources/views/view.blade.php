@extends('layouts.master')
@section('content')

<div class="col-xl-8">
    <h3>User Profile : </h3>
    Title: {{$post->title}}<br>
    Content: {{$post->content}}<br>
    
    
    
</div>

@endsection
@section('script')
@parent 

@endsection 
