<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;
    protected $guarded = [];

    function user(){
        return $this->belongsToMany(User::class)
        ->withDefault();
    }
    function payment(){
        return $this->hasOne(Payment::class)    ->withDefault();;
    }

}
