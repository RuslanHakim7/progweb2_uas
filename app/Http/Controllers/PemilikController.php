<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Pagination\Paginator;
use App\Models\pemilik;

class PemilikController extends Controller
{
    public function __construct() {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data['data_pemilik'] = Pemilik::orderBy('id_Pemilik', 'asc')->paginate(5);

        Paginator::useBootstrap();

        return view('pemilik.index', $data);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('pemilik.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'id_pemilik' => 'required',
            'nama' => 'required',
            'no_tel' => 'required',
            'email' => 'required',
            'aset' => 'required',
            'alamat' => 'required'
        ]);

        $pemilik = new Pemilik();
        
        $pemilik->id_pemilik = $request->id_pemilik;
        $pemilik->nama = $request->nama;
        $pemilik->no_tel = $request->no_tel;
        $pemilik->email = $request->email;
        $pemilik->aset = $request->aset;
        $pemilik->alamat = $request->alamat;

        $pemilik->save();

        return redirect()->route('pemilik.index')->with('success', 'Data Pemilik Dengan Id : ' . $request->id_pemilik . 'berhasil dibuat !.');
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
    public function edit(Pemilik $pemilik)
    {
        return view('pemilik.edit', ['pemilik' => $pemilik]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id_pemilik)
    {
        $request->validate([
            'nama' => 'required',
            'no_tel' => 'required',
            'email' => 'required',
            'aset' => 'required',
            'alamat' => 'required'
        ]);

        $pemilik = Pemilik::find($id_pemilik);
        
        $pemilik->id_pemilik = $request->id_pemilik;
        $pemilik->nama = $request->nama;
        $pemilik->no_tel = $request->no_tel;
        $pemilik->email = $request->email;
        $pemilik->aset = $request->aset;
        $pemilik->alamat = $request->alamat;

        $pemilik->save();

        return redirect()->route('pemilik.index')->with('success', 'Data Pemilik dengan Id: ' . $request->id_pemilik . 'berhasil diupdate !.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(pemilik $pemilik)
    {
        $pemilik->delete();

        return redirect()->route('pemilik.index')->with('success', 'Data Pemilik dengan Id : ' . $pemilik->id_pemilik . 'berhasil dihapus !.');
    }
}
