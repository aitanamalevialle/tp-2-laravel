@extends('layout')
@section('title')
    @lang('Article')
@endsection
@section('content')
    <h1 class="mt-4 mb-4">@lang('Article')</h1>
    <div class="row mb-4">
        <form method="POST">
            @csrf
            <div class="col-md-4 mb-4">
                <div class="form-group">
                    <label for="titre_en" class="form-label">@lang('English Title')</label>
                    <input type="text" class="form-control mt-2 mb-4" id="titre_en" name="titre_en" value="{{old('titre_en')}}">
                </div>
                <div class="form-group">
                    <label for="titre_fr" class="form-label">@lang('French Title')</label>
                    <input type="text" class="form-control mt-2 mb-4" id="titre_fr" name="titre_fr" value="{{old('titre_fr')}}">
                </div>
                <div class="form-group">
                    <label for="texte_en">@lang('English Text')</label>
                    <textarea name="texte_en" id="texte_en" class="form-control mt-2 mb-4" cols="20" rows="10">{{ old('texte_en') }}</textarea>
                </div>
                <div class="form-group">
                    <label for="texte_fr">@lang('French Text')</label>
                    <textarea name="texte_fr" id="texte_fr" class="form-control mt-2 mb-4" cols="20" rows="10">{{ old('texte_fr') }}</textarea>
                </div>
                <div class="form-group">
                    <label for="date">@lang('Date')</label>
                    <input type="date" class="form-control mt-2 mb-4" id="date" name="date" value="{{ old('date') }}">
                </div>
            </div>
            <button type="submit" class="btn btn-info">@lang('Save')</button>
        </form>
    </div>
@endsection