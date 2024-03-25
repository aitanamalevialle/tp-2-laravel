@extends('layout')
@section('title')
    @lang('Home')
@endsection
@section('content')
<div>
    <h1 class="mt-4 mb-4">@lang('lang.text_welcome_title')</h1>
    <p class="mt-4 mb-4">@lang('lang.text_welcome_paragraph')</p>
</div>
@endsection