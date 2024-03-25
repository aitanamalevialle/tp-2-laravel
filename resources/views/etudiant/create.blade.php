@extends('layout')
@section('title')
    @lang('New Student')
@endsection
@section('content')
    <h1 class="mt-4 mb-4"></h1>
    <div class="row mb-4">
        <form method="POST">
        @csrf
            <div class="col-md-4 mb-4">
                <label for="name" class="form-label">@lang('Name')</label>
                <input type="text" class="form-control" id="name" name="name" value="{{old('name')}}">
            </div>
            <div class="col-md-4 mb-4">
                <label for="date_de_naissance" class="form-label">@lang('Birth Date')</label>
                <input type="date" class="form-control" id="date_de_naissance" name="date_de_naissance" value="{{old('date_de_naissance')}}">
            </div>
            <div class="col-md-4 mb-4">
                <label for="adresse" class="form-label">@lang('Address')</label>
                <input type="text" class="form-control" id="adresse" name="adresse" value="{{old('adresse')}}">
            </div>
            <div class="col-md-4 mb-4">
                <label for="telephone" class="form-label">@lang('Phone Number')</label>
                <input type="tel" class="form-control" id="telephone" name="telephone" value="{{old('telephone')}}">
            </div>
            <div class="col-md-4 mb-4">
                <label for="ville_id" class="form-label">@lang('City')</label>
                <select class="form-select" id="ville_id" name="ville_id">
                    <option selected>@lang('lang.text_select')</option>
                    @foreach($villes as $ville)
                        <option value="{{ $ville->id }}" {{ old('ville_id') == $ville->id ? 'selected' : '' }}>{{ $ville->nom }}</option>
                    @endforeach
                </select>
            </div>
            <div class="col-md-4 mb-4">
                <label for="email" class="form-label">@lang('Email')</label>
                <input type="email" class="form-control" id="email" name="email" value="{{old('email')}}">
            </div>
            <div class="col-md-4 mb-4">
                <label for="password" class="form-label">@lang('Password')</label>
                <input type="password" class="form-control" id="password" name="password">
            </div>
            <button type="submit" class="btn btn-info">@lang('Add')</button>
        </form>
    </div>
@endsection