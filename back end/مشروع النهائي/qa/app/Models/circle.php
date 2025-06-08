<?php

namespace App\Models;

use App\Models\company;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class circle extends Model
{
    use HasFactory;
    protected $fillable = [
        'circle',
      'circle_name',
      'company_id',
      'country_id',
      'court_name',


  ];
    public function company(){
        return $this->belongsTo(company::class);
      }
      public function court(){
        return $this->belongsTo(court::class);
      }
}
