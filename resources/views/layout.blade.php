<!DOCTYPE html>
<html lang="en" class="h-100">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>{{ config('app.name') }} - @yield('title')</title>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/css/styles.css" rel="stylesheet" />
    </head>
    <body class="d-flex flex-column h-100">
        @php $locale = session()->get('locale') @endphp
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-custom bg-primary">
            <div class="container-fluid">
                <a class="navbar-brand text-white" href="/">@lang('Home')</a>
                <ul class="navbar-nav flex-row ms-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-white me-2" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            @lang('Language') {{ $locale == '' ? '' : "($locale)" }}
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="{{route('lang', 'en')}}">@lang('English')</a></li>
                            <li><a class="dropdown-item" href="{{route('lang', 'fr')}}">@lang('French')</a></li>
                        </ul>
                    </li>
                    @auth
                        <li class="nav-item"><a class="nav-link text-white me-2" href="{{ route('etudiant.index') }}">@lang('Students')</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-white me-2" href="" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                @lang('Forum')
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="{{ route('article.index') }}">@lang('Articles')</a></li>
                                <li><a class="dropdown-item" href="{{ route('article.create') }}">@lang('New Article')</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-white me-2" href="" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                @lang('Directory')
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="{{ route('repertoire.index') }}">@lang('Files')</a></li>
                                <li><a class="dropdown-item" href="{{ route('repertoire.create') }}">@lang('Upload File')</a></li>
                            </ul>
                        </li>
                    @endauth
                    @guest
                        <li class="nav-item"><a class="nav-link text-white me-2" href="{{ route('etudiant.create') }}">@lang('New Student')</a></li>
                        <li class="nav-item"><a class="nav-link text-white me-2" href="{{ route('login') }}">@lang('Login')</a></li>
                    @else
                        <li class="nav-item"><a class="nav-link text-white me-2" href="{{ route('logout') }}">@lang('Logout')</a></li>
                    @endguest
                </ul>
            </div>
        </nav>
        <!-- Header-->
        <header>
        </header>
        <!-- Content section 1-->
        <section id="scroll">
            <div>
                @if(!$errors->isEmpty())
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <ul>
                            @foreach($errors->all() as $error)
                            <li>{{ $error }}</li>
                            @endforeach
                        </ul>     
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>                
                @endif
            </div>
            <div class="container px-2">
            @yield('content')
            </div>
        </section>
        <!-- Footer-->
        <footer class="py-4 mt-auto bg-pink">
            <div class="container px-2"><p class="m-0 text-white">&copy; {{ date('Y')}} {{config('app.name') }}</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>