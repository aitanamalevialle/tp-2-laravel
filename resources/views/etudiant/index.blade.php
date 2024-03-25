@extends('layout')
@section('title')
    @lang('Students')
@endsection
@section('content')
    <h1 class="mt-4 mb-4">@lang('List of Students')</h1>
    <div class="row mb-4">
    @foreach ($etudiants as $etudiant)
    <div class="col-md-6 mb-4 d-flex justify-content-between align-items-center">
        <h5 class="card-title"><a href="{{ route('etudiant.show', $etudiant->id) }}">{{ $etudiant->user->name }}</a></h5>
        <div>
            <a href="{{ route('etudiant.edit', $etudiant->id) }}" class="btn btn-sm btn-info me-2">@lang('Update')</a>
            <button type="button" class="btn btn-sm btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal{{ $etudiant->id }}">@lang('Delete')</button>
        </div>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="exampleModal{{ $etudiant->id }}" tabindex="-1" aria-labelledby="deleteModalLabel{{ $etudiant->id }}" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5 text-danger" id="deleteModalLabel{{ $etudiant->id }}">@lang('Delete')</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    @lang('lang.text_delete') {{ $etudiant->user->name }} ?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Annuler</button>
                    <form method="post" action="{{ route('etudiant.delete', $etudiant->id) }}">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger">@lang('Delete')</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endforeach
    </div>
@endsection