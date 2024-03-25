@extends('layout')
@section('title')
    @lang('Directory')
@endsection
@section('content')
    <h1 class="mt-5 mb-4">@lang('Directory')</h1>
    <div class="row justify-content-center mt-5 mb-5">
        <div class="col-md-12">
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">@lang('Student')</th>
                            <th scope="col">@lang('Title')</th>
                            <th scope="col">@lang('File')</th>
                            <th scope="col">@lang('Date')</th>
                            <th scope="col">@lang('Actions')</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($repertoires as $repertoire)
                        <tr>
                            <td>{{ $repertoire->user->name }}</td>
                            <td>
                                @if(is_array($repertoire->titre) && isset($repertoire->titre[app()->getLocale()]))
                                    {{ $repertoire->titre[app()->getLocale()] }}
                                @else
                                    {{ $repertoire->titre['en'] }} 
                                @endif
                            </td>
                            <td>{{ $repertoire->fichier }}</td>
                            <td>{{ $repertoire->date }}</td>
                            <td>
                                @if(Auth::check() && $repertoire->user->id === Auth::user()->id)
                                    <div class="d-flex">
                                        <a href="{{ route('repertoire.edit', $repertoire->id) }}" class="btn btn-sm btn-info me-2">@lang('Update')</a>
                                        <form method="POST" action="{{ route('repertoire.delete', $repertoire->id) }}">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete this file?')">@lang('Delete')</button>
                                        </form>
                                    </div>
                                @endif
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
            {{ $repertoires }}
        </div>
    </div>
@endsection