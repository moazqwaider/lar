<?php

namespace App\Models;

use App\Models\court;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class country extends Model
{
    use HasFactory;
    protected $fillable = [
      'name',
      'ios',
      'nicename',

  ];
    public function court(){
        return $this->hasMany(court::class);
      }
}
