@extends('layout')
@section('title')
    @lang('Login')
@endsection
@section('content')
    <h1 class="mt-4 mb-4">@lang('Login')</h1>
    <div class="row mb-4">
        <form method="POST">
        @csrf
            <div class="col-md-4 mb-4">
                <label for="email" class="form-label">@lang('Email')</label>
                <input type="email" class="form-control" id="email" name="email" value="{{old('email')}}">
            </div>
            <div class="col-md-4 mb-4">
                <label for="password" class="form-label">@lang('Password')</label>
                <input type="password" class="form-control" id="password" name="password">
            </div>
            <button type="submit" class="btn btn-info">@lang('Login')</button>
        </form>
    </div>
@endsection