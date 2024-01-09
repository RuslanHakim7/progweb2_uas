<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pemilik extends Model
{
    use HasFactory;

    protected $table = 'pemilik';
    protected $primaryKey = 'id_pemilik';
    protected $keyType = 'string';
    public $incrementing = false;
    public $timestamps = true;

    protected $filable = ['nama', 'no_tel', 'email', 'aset', 'alamat'];
}
