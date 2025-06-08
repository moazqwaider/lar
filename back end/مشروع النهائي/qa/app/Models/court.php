<?php

namespace App\Models;

use App\Models\company;
use App\Models\country;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class court extends Model
{
    use HasFactory;
    protected $fillable = [
      'circle_name	',
      'company_id',
      'country_id',
      'court_name',

  ];
    public function company(){
        return $this->belongsTo(company::class);
      }
      public function circle(){
        return $this->hasMany(circle::class);
      }
      public function country(){
        return $this->belongsTo(country::class);
      }

}
