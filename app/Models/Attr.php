<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Attr extends Model
{
    protected $table = 'attr';
    protected $primaryKey = 'id';
    protected $fillable = [
      'pro_attr','color','price',
    ];
    use HasFactory;
}
