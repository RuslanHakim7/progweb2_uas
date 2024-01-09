@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12 mb-3">
                <h2>Edit Pemilik</h2>
            </div>
        </div>

        @if (session('status'))
            <div class="alert alert-success mb-1 mt-1">
                {{ session('status') }}
            </div>
        @endif

        <form action="{{ route('pemilik.update', $pemilik->id_pemilik) }}" class="border border-default col-md-6 p-2" method="POST">
            @csrf
            @method('PUT')

            <div class="mb-3">
                <label> Id Pemilik : </label>
                <input type="text" name="id_pemilik" id="id_pemilik" value="{{ old('id_pemilik', $pemilik->id_pemilik) }}" class="form-control" readonly>
                @error('id_pemilik')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="mb-3">
                <label> Nama : </label>
                <input type="text" name="nama" id="nama" class="form-control" value="{{ old('nama', $pemilik->nama) }}">
                @error('nama')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>
            
            <div class="mb-3">
                <label> No Telepon : </label>
                <input type="number" name="no_tel" id="no_tel" class="form-control" value="{{ old('no_tel', $pemilik->no_tel) }}">
                @error('no_tel')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="mb-3">
                <label> Email : </label>
                <input type="email" name="email" id="email" class="form-control" value="{{ old('email', $pemilik->email) }}">
                @error('email')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="mb-3">
                <label> Aset : </label>
                <input type="text" name="aset" id="aset" class="form-control" value="{{ old('aset', $pemilik->aset) }}">
                @error('aset')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="mb-3">
                <label> Alamat : </label>
                <textarea class="form-control" id="alamat" name="alamat" rows="3" value="{{ old('alamat', $pemilik->alamat) }}"></textarea>
                @error('alamat')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>

            
            <button type="submit" class="btn btn-primary ml-3">Submit</button>
            <a href="{{ route('pemilik.index') }}" class="btn-secondary">Kembali</a>
        </form>
    </div>
@endsection