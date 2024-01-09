@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12 mb-3">
                <h2>Daftar Petugas</h2>
                <a href="{{ route('petugas.create') }}" class="btn btn-success">
                    Tambah Petugas
                </a>
            </div>
        </div>

        @if ($message = Session::get('success'))
            <div class="alert alert-success">
                <p>{{ $message }}</p>
            </div>
        @endif

        <table class="table table-bordered table-striped table-hover">
            <tr>
                <th>#</th>
                <th>Id Petugas</th>
                <th>Nama</th>
                <th>No Telepon</th>
                <th>Email</th>
                <th>Aset</th>
                <th>Alamat</th>
            </tr>
            @foreach ($data_petugas as $key => $petugas)
                <tr>
                    <td>
                        <form action="{{ route('petugas.destroy', $petugas->id_petugas) }}" method="post">
                            <a href="{{ route('petugas.edit', $petugas->id_petugas) }}" class="btn btn-primary">
                                Edit
                            </a>
                            @csrf
                            @method('DELETE')

                            <button type="submit" class="btn btn-danger" onclick="return confirm('Hapus Data Petugas dengan Id : {{ $petugas->id_petugas }} ? ')">Delete</button>
                        </form>
                    </td>
                    <td>{{ $petugas->id_petugas }}</td>
                    <td>{{ $petugas->nama }}</td>
                    <td>{{ $petugas->no_tel }}</td>
                    <td>{{ $petugas->email }}</td>
                    <td>{{ $petugas->aset }}</td>
                    <td>{{ $petugas->alamat }}</td>
                </tr>
            @endforeach
        </table>

        Halaman : {{ $data_petugas->currentPage() }} <br>
        Jumlah Data : {{ $data_petugas->total() }} <br>
        Daftar Per Halaman : {{ $data_petugas->perPage() }} <br>
        {{-- Pagination --}}
        <div class="d-flex justify-content-center">
            {!! $data_petugas->links() !!}
        </div>
    </div>
@endsection