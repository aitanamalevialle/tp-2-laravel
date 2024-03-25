@extends('layout')
@section('title')
    @lang('Articles')
@endsection
@section('content')
    <div class="mt-4 mb-2">
        @auth 
            @lang('Welcome') {{ Auth::user()->name }}.
        @endauth
    </div>
    <h1 class="mt-4 mb-4">@lang('List of Articles')</h1>
    <div class="row mb-4 row-cols-1 row-cols-md-2 g-4">
        @foreach ($articles as $article)
            <div class="col">
                <div class="card h-100">
                    <div class="card-header">
                        <h5 class="card-title text-primary">
                            @if(is_array($article->titre) && isset($article->titre[app()->getLocale()]))
                                {{ $article->titre[app()->getLocale()] }}
                            @else
                                {{ $article->titre['en'] }} 
                            @endif
                        </h5>
                    </div>
                    <div class="card-body d-flex flex-column">
                        <p class="card-text flex-grow-1">
                            @if(is_array($article->texte) && isset($article->texte[app()->getLocale()]))
                                {{ $article->texte[app()->getLocale()] }}
                            @else
                                {{ $article->texte['en'] }} 
                            @endif
                        </p>
                        <p class="card-text fw-light">{{ $article->date }}</p>
                        <p class="card-text text-muted fw-bold">@lang('Published by') {{ $article->user->name }}</p>
                    </div>
                    <div class="card-footer d-flex">
                        @if(Auth::check() && $article->user->id === Auth::user()->id)
                            <a href="{{ route('article.edit', $article->id) }}" class="btn btn-sm btn-info me-2">@lang('Update')</a>
                            <form method="POST" action="{{ route('article.delete', $article->id) }}">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-sm btn-danger">@lang('Delete')</button>
                            </form>
                        @endif
                    </div>
                </div>
            </div>
        @endforeach
    </div>
@endsection