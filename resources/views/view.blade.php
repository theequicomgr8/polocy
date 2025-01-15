@extends('layouts.master')
@section('content')

<div class="col-xl-8">
    <h3>User Profile : </h3>
    Title: {{$student->title}}<br>
    Content: {{$student->content}}<br>
    
    
    
</div>

@endsection
@section('script')
@parent 

@endsection 
