@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12 mb-3">
                <h2>Daftar Pemilik</h2>
                <a href="{{ route('pemilik.create') }}" class="btn btn-success">
                    Tambah Pemilik
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
                <th>Id Pemilik</th>
                <th>Nama</th>
                <th>No Telepon</th>
                <th>Email</th>
                <th>Aset</th>
                <th>Alamat</th>
            </tr>
            @foreach ($data_pemilik as $key => $pemilik)
                <tr>
                    <td>
                        <form action="{{ route('pemilik.destroy', $pemilik->id_pemilik) }}" method="post">
                            <a href="{{ route('pemilik.edit', $pemilik->id_pemilik) }}" class="btn btn-primary">
                                Edit
                            </a>
                            @csrf
                            @method('DELETE')

                            <button type="submit" class="btn btn-danger" onclick="return confirm('Hapus Data Pemilik dengan Id : {{ $pemilik->id_pemilik }} ? ')">Delete</button>
                        </form>
                    </td>
                    <td>{{ $pemilik->id_pemilik }}</td>
                    <td>{{ $pemilik->nama }}</td>
                    <td>{{ $pemilik->no_tel }}</td>
                    <td>{{ $pemilik->email }}</td>
                    <td>{{ $pemilik->aset }}</td>
                    <td>{{ $pemilik->alamat }}</td>
                </tr>
            @endforeach
        </table>

        Halaman : {{ $data_pemilik->currentPage() }} <br>
        Jumlah Data : {{ $data_pemilik->total() }} <br>
        Daftar Per Halaman : {{ $data_pemilik->perPage() }} <br>
        {{-- Pagination --}}
        <div class="d-flex justify-content-center">
            {!! $data_pemilik->links() !!}
        </div>
    </div>
@endsection