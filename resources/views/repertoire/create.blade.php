@extends('layout')
@section('title')
    @lang('New File')
@endsection
@section('content')
    <h1 class="mt-4 mb-4">@lang('Upload File')</h1>
    <div class="row mb-4">
        <form method="POST" enctype="multipart/form-data">
        @csrf
            <div class="col-md-4 mb-4">
                <label for="titre_en" class="form-label">@lang('English Title')</label>
                <input type="text" class="form-control" id="titre_en" name="titre_en" value="{{ old('titre_en') }}">
            </div>
            <div class="col-md-4 mb-4">
                <label for="titre_fr" class="form-label">@lang('French Title')</label>
                <input type="text" class="form-control" id="titre_fr" name="titre_fr" value="{{ old('titre_fr') }}">
            </div>
            <div class="col-md-4 mb-4">
                <label for="date" class="form-label">@lang('Date')</label>
                <input type="date" class="form-control" id="date" name="date" value="{{ old('date') }}">
            </div>
            <div class="col-md-4 mb-4">
                <label for="fichier">@lang('File')</label>
                <input type="file" id="fichier" name="fichier" accept=".pdf, .zip, .doc, .docx">
            </div>
            <button type="submit" class="btn btn-info">@lang('Add')</button>
        </form>
    </div>
@endsection