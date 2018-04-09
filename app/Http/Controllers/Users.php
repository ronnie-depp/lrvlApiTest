<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\User;
use App\Location;
use App\Http\Controllers\Controller;

class Users extends Controller
{
    /**
     * The user repository implementation.
     *
     * @var UserRepository
     */
    //protected $users;

    /**
     * Create a new controller instance.
     *
     * @param  UserRepository  $users
     * @return void
     */
    public function __construct()//(UserRepository $users)
    {
        //$this->users = $users;
    }
    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function show($id)//, Request $request
    {
        //return (['request->expectsJson()' =>$request->expectsJson()]);//false
        //return (['request->is()' =>$request->is('api/v1*')]);
        $location = Location::where('user_id', $id)->limit(1)->first();
        $city_id = $location->city_id;
        $city = \App\City::where('id', $city_id)->limit(1)->first();
        $country_id = $city->country_id;
        $country = \App\Country::where('id', $country_id)->limit(1)->value('country');
        $user = User::findOrFail($id);
        //$user->location = $location;
        $loc = new \stdClass();
        $loc->street_address = $location->street_address;
        $loc->city = $city->city;
        $loc->country = $country;
        $user->location = $loc;
        // unset all variables used
        unset($location, $city_id, $city, $country_id, $country, $loc);
        
        // if API request, serve JSON
        if (Route::getCurrentRoute()->getPrefix()=='api/v1') {//$request->ajax() || $request->isJson()
            
            return (['user' => $user, 'responseType' => 'json', 'requestType' => 'API call', 'status' => 200]);
            
        } else {// serve view
            
            //web call, return view
            return (['user' => $user, 'responseType' => 'text/html, web-view', 'status' => 200]);/*['fullname']*/
            
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
