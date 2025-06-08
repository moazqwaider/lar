<?php

namespace App\Models;

use App\Models\company;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class contact extends Model
{
    use HasFactory;
    public function company(){
        return $this->belongsTo(company::class);
      }

}
