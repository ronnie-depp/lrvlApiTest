<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'loc_countries';
    
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'country',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        
    ];
    
    /**
     * Define relation to Cities
     */
    public function cities() {
        return $this->hasMany('App\City')->orderBy('name', 'asc');
    }
    
    /**
     * Define relation to Locations
     */
    public function locations() {
        return $this->hasManyThrough('App\Location', 'App\City')->orderBy('name', 'asc');
    }
    
    /**
     * Define relation to Users
     */
    public function users() {
        //return $this->hasManythrough('App\User', 'App\Location');
    }
}
