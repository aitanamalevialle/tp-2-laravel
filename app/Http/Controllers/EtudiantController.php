<?php

namespace App\Http\Controllers;

use App\Models\Etudiant;
use App\Models\Ville;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class EtudiantController extends Controller
{
    
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $etudiants = Etudiant::all();
        return view('etudiant.index', ["etudiants" => $etudiants]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $villes = Ville::all();
        return view('etudiant.create', ["villes" => $villes]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|min:4',
            'password' => 'min:6|max:20',
            'adresse' => 'required|string',
            'telephone' => 'required|string',
            'date_de_naissance' => 'required|date',
            'ville_id' => 'required|integer',
            'email' => 'required|email|unique:users',
        ]);

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);

        if ($user) {
            $etudiant = Etudiant::create([
                'adresse' => $request->adresse,
                'telephone' => $request->telephone,
                'date_de_naissance' => $request->date_de_naissance,
                'ville_id' => $request->ville_id,
                'user_id' => $user->id 
            ]);

            if ($etudiant) {
                return redirect()->route('etudiant.show', $etudiant->id);
            } 
        } 
    }

    /**
     * Display the specified resource.
     */
    public function show(Etudiant $etudiant)
    {
        return view('etudiant.show', ["etudiant" => $etudiant]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Etudiant $etudiant)
    {
        $villes = Ville::all();
        return view('etudiant.edit', ["etudiant" => $etudiant, "villes" => $villes]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Etudiant $etudiant)
    {
        $request->validate([
            'name' => 'required|string|min:4',
            'adresse' => 'required|string',
            'telephone' => 'required|string',
            'date_de_naissance' => 'required|date',
            'ville_id' => 'required|integer',
            'email' => 'required|email|unique:users,email,' . $etudiant->user->id,
        ]);        

        $user = $etudiant->user;

        $user->update([
            'name' => $request->name,
            'email' => $request->email,
        ]);

        if ($user) {
            $etudiant->update([
                'adresse' => $request->adresse,
                'telephone' => $request->telephone,
                'date_de_naissance' => $request->date_de_naissance,
                'ville_id' => $request->ville_id,
                'user_id' => $user->id 
            ]);

            if ($etudiant) {
                return redirect()->route('etudiant.show', $etudiant->id);
            }
        } 
    }
    
    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Etudiant $etudiant)
    {
        $user = $etudiant->user;
        $etudiant->delete();

        if ($user) {
            $user->delete();
        }
    }

}