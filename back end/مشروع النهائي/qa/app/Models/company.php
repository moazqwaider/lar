<?php

namespace App\Models;

use App\Models\User;
use App\Models\court;
use App\Models\circle;
use App\Models\contact;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class company extends Model
{
    use HasFactory;
    public function user(){
        return $this->hasMany(User::class);
      }
      public function court(){
        return $this->hasMany(court::class);
      }
      public function contact(){
        return $this->hasMany(contact::class);
      }
      public function circle(){
        return $this->hasMany(circle::class);
      }

    protected $fillable = [
        'id',
        'owner_id',
        'company_name',
        'company_id',
        'company_address',
       

    ];
}

