<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'street_address',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        
    ];
    
    /*
     * Define relation to User
     */
    public function user() {
        return $this->belongsTo('App\User');
    }
    
    /*
     * Define relation to City
     */
    public function city() {
        return $this->hasOne('App\City');
    }
}
