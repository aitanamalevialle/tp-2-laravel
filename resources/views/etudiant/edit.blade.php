@extends('layout')
@section('title')
    @lang('Edit Student')
@endsection
@section('content')
    <h1 class="mt-4 mb-4">@lang('Edit Student')</h1>
    <div class="row mb-4">
        <form method="POST">
            @csrf
            @method('PUT')
            <div class="col-md-4 mb-4">
                <div class="mb-4">
                    <label for="name" class="form-label">@lang('Name')</label>
                    <input type="text" class="form-control" id="name" name="name" value="{{old('name', $etudiant->user->name)}}">
                </div>
                <div class="mb-4">
                    <label for="adresse" class="form-label">@lang('Address')</label>
                    <input type="text" class="form-control" id="adresse" name="adresse" value="{{old('adresse', $etudiant->adresse)}}">
                </div>
                <div class="mb-4">
                    <label for="telephone" class="form-label">@lang('Phone Number')</label>
                    <input type="tel" class="form-control" id="telephone" name="telephone" value="{{old('telephone', $etudiant->telephone)}}">
                </div>
                <div class="mb-4">
                    <label for="email" class="form-label">@lang('Email')</label>
                    <input type="email" class="form-control" id="email" name="email" value="{{old('email', $etudiant->user->email)}}">
                </div>
                <div class="mb-4">
                    <label for="date_de_naissance" class="form-label">@lang('Birth Date')</label>
                    <input type="date" class="form-control" id="date_de_naissance" name="date_de_naissance" value="{{old('date_de_naissance', $etudiant->date_de_naissance)}}">
                </div>
                <div class="mb-4">
                    <label for="ville_id" class="form-label">@lang('City')</label>
                    <select class="form-select" id="ville_id" name="ville_id">
                        <option selected>@lang('lang.text_select')</option>
                        @foreach($villes as $ville)
                            <option value="{{ $ville->id }}" {{ old('ville_id', $etudiant->ville_id) == $ville->id ? 'selected' : '' }}>{{ $ville->nom }}</option>
                        @endforeach
                    </select>
                </div>
            </div>
            <button type="submit" class="btn btn-info">@lang('Save')</button>
        </form>
    </div>
@endsection