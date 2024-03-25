<?php

namespace App\Http\Controllers;

use App\Models\Repertoire;
use App\Models\Users;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class RepertoireController extends Controller
{
    
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $repertoires = Repertoire::orderBy('titre')->paginate(6);
        return view('repertoire.index', ["repertoires" => $repertoires]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('repertoire.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'titre_en' => 'required',
            'titre_fr' => 'nullable',
            'fichier' => 'required|file|mimes:pdf,doc,docx,zip', 
            'date' =>'date'
        ]);

        $user_id = auth()->id();

        if ($request->hasFile('fichier')) {
            $fichierChemin = $request->file('fichier')->store('fichiers');
            $fichierNom = basename($fichierChemin);
        } else {
            $fichierChemin = null;
            $fichierNom = null;
        }

        Repertoire::create([
            'titre' => [
                'en' => $request->titre_en,
                'fr' => $request->titre_fr ?? null,
            ],
            'fichier' => $fichierNom, 
            'date' => $request->date,
            'user_id' => $user_id
        ]);

        return redirect(route('repertoire.index'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Repertoire $repertoire)
    {
        return view('repertoire.edit', ["repertoire" => $repertoire]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Repertoire $repertoire)
    {
        $request->validate([
            'titre_en' => 'required|max:30',
            'titre_fr' => 'nullable|max:30',
            'fichier' => 'nullable|file|mimes:pdf,doc,docx,zip',
            'date' => 'date',
        ]);
    
        $user_id = auth()->id();
        $fichierNom = $repertoire->fichier;
        $chemin_fichier = $repertoire->chemin_fichier;
        
        if ($request->hasFile('fichier')) {
            if ($repertoire->fichier) {
                Storage::delete($repertoire->chemin_fichier);
            }
            $fichierChemin = $request->file('fichier')->store('fichiers');
            $fichierNom = basename($fichierChemin);
            $chemin_fichier = $fichierChemin;
        }
    
        $repertoire->update([
            'titre' => [
                'en' => $request->titre_en,
                'fr' => $request->titre_fr ?? null,
            ],
            'fichier' => $fichierNom,
            'chemin_fichier' => $chemin_fichier,
            'date' => $request->date,
            'user_id' => $user_id,
        ]);
    
        return redirect(route('repertoire.index'));
    }      

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Repertoire $repertoire)
    {
        $repertoire->delete();
    }

}