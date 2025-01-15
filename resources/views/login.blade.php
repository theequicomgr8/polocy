@extends('layouts.master')
@section('content')
<div class="main">
    <div class="col-xl-6 ">
        @if(Session('msg'))
        <div class="alert alert-danger">{{Session::get('msg')}}</div>
        @endif 
        <form method="post" action="{{Route('auth.login.check')}}">
            @csrf 
            <div class="form-group">
                <label for="name">Email</label>
                <input type="text" name="email" id="" class="form-control">
                @error('email')
                <span class="error">{{$message}}</span>
                @enderror
            </div>
            <div class="form-group">
                <label for="name">Password</label>
                <input type="text" name="password" id="" class="form-control">
                @error('password')
                <span class="error">{{$message}}</span>
                @enderror
            </div>
            <input type="submit" value="Login" class="btn btn-info mt-4">
        </form>
    </div>
</div>
@endsection

@section('script')
@parent
<script>
    console.log('dff');
</script>
@endsection