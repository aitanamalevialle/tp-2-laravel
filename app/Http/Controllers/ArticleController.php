<?php

namespace App\Http\Controllers;

use App\Models\Article;
use Illuminate\Http\Request;

class ArticleController extends Controller
{

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $articles = Article::all();
        return view('article.index', ["articles" => $articles]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('article.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'titre_en' => 'required',
            'texte_en' => 'required',
            'titre_fr' => 'nullable',
            'texte_fr' => 'nullable',
            'date' =>'date'
        ]);
    
        $user_id = auth()->id();
    
        Article::create([
            'titre' => [
                'en' => $request->titre_en,
                'fr' => $request->titre_fr ?? null,
            ],
            'texte' => [
                'en' => $request->texte_en,
                'fr' => $request->texte_fr ?? null, 
            ],
            'date' => $request->date,
            'user_id' => $user_id
        ]);

        return redirect(route('article.index'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Article $article)
    {
        return view('article.edit', ["article" => $article]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Article $article)
    {
        $request->validate([
            'titre_en' => 'required',
            'texte_en' => 'required',
            'titre_fr' => 'nullable',
            'texte_fr' => 'nullable',
            'date' =>'date'
        ]);
    
        $user_id = auth()->id();
    
        $article->update([
            'titre' => [
                'en' => $request->titre_en,
                'fr' => $request->titre_fr ?? null,
            ],
            'texte' => [
                'en' => $request->texte_en,
                'fr' => $request->texte_fr ?? null, 
            ],
            'date' => $request->date,
            'user_id' => $user_id
        ]);

        return redirect(route('article.index'));
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Article $article)
    {
        $article->delete();
        return redirect(route('article.index'));
    }
    
}