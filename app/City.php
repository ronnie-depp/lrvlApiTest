<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'loc_cities';
    
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'city',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        
    ];
    
    /*
     * Relation to Country
     */
    public function country() {
        return $this->belongsTo('App\Country');
    }
    /*
     * Relation to Locations
     */
    public function locations() {
        return $this->hasMany('App\Location');
    }
    
    /*
     * Relation to Users
     */
    public function users() {
        return $this->hasManyThrough('App\User', 'App\Location');
    }
}
