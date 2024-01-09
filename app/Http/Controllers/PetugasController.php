<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Pagination\Paginator;
use App\Models\Petugas;

class PetugasController extends Controller
{
    public function __construct() {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data['data_petugas'] = Petugas::orderBy('id_Petugas', 'asc')->paginate(5);

        Paginator::useBootstrap();

        return view('petugas.index', $data);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('petugas.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'id_petugas' => 'required',
            'nama' => 'required',
            'no_tel' => 'required',
            'email' => 'required',
            'alamat' => 'required'
        ]);

        $petugas = new Petugas();
        
        $petugas->id_petugas = $request->id_petugas;
        $petugas->nama = $request->nama;
        $petugas->no_tel = $request->no_tel;
        $petugas->email = $request->email;
        $petugas->alamat = $request->alamat;

        $petugas->save();

        return redirect()->route('petugas.index')->with('success', 'Data Petugas Dengan Id : ' . $request->id_petugas . 'berhasil dibuat !.');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Petugas $petugas)
    {
        return view('petugas.edit', ['petugas' => $petugas]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id_petugas)
    {
        $request->validate([
            'nama' => 'required',
            'no_tel' => 'required',
            'email' => 'required',
            'alamat' => 'required'
        ]);

        $petugas = Petugas::find($id_petugas);
        
        $petugas->id_petugas = $request->id_petugas;
        $petugas->nama = $request->nama;
        $petugas->no_tel = $request->no_tel;
        $petugas->email = $request->email;
        $petugas->alamat = $request->alamat;

        $petugas->save();

        return redirect()->route('petugas.index')->with('success', 'Data Petugas dengan Id: ' . $request->id_petugas . 'berhasil diupdate !.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(petugas $petugas)
    {
        $petugas->delete();

        return redirect()->route('petugas.index')->with('success', 'Data Petugas dengan Id : ' . $petugas->id_petugas . 'berhasil dihapus !.');
    }
}
