@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12 mb-3">
                <h2>Edit Petugas</h2>
            </div>
        </div>

        @if (session('status'))
            <div class="alert alert-success mb-1 mt-1">
                {{ session('status') }}
            </div>
        @endif

        <form action="{{ route('petugas.update', $petugas->id_petugas) }}" class="border border-default col-md-6 p-2" method="POST">
            @csrf
            @method('PUT')

            <div class="mb-3">
                <label> Id Petugas : </label>
                <input type="text" name="id_petugas" id="id_petugas" value="{{ old('id_petugas', $petugas->id_petugas) }}" class="form-control" readonly>
                @error('id_petugas')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="mb-3">
                <label> Nama : </label>
                <input type="text" name="nama" id="nama" class="form-control" value="{{ old('nama', $petugas->nama) }}">
                @error('nama')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>
            
            <div class="mb-3">
                <label> No Telepon : </label>
                <input type="number" name="no_tel" id="no_tel" class="form-control" value="{{ old('no_tel', $petugas->no_tel) }}">
                @error('no_tel')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="mb-3">
                <label> Email : </label>
                <input type="email" name="email" id="email" class="form-control" value="{{ old('email', $petugas->email) }}">
                @error('email')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="mb-3">
                <label> Alamat : </label>
                <textarea class="form-control" id="alamat" name="alamat" rows="3" value="{{ old('alamat', $petugas->alamat) }}"></textarea>
                @error('alamat')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>

            
            <button type="submit" class="btn btn-primary ml-3">Submit</button>
            <a href="{{ route('petugas.index') }}" class="btn-secondary">Kembali</a>
        </form>
    </div>
@endsection