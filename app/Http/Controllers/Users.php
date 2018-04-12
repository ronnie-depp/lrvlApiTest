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
    public function show($id, Request $request)//
    {
        //return (['request->expectsJson()' =>$request->expectsJson()]);//false
        //return (['request->is()' =>$request->is('api/v1*')]);

        //join-ed in to one single response
        $joined = User::join('locations', 'locations.user_id', '=', 'users.id')
                        ->join('loc_cities', 'locations.city_id', '=', 'loc_cities.id')
                        ->join('loc_countries', 'loc_cities.country_id', '=', 'loc_countries.id')
                        ->select('users.*', 'locations.*', 'loc_cities.*', 'loc_countries.*')
                        ->where('users.id', $id)
                        ->first();
        //get location info
        $location = Location::where('user_id', $id)->limit(1)->first();
        $city_id = $location->city_id;
        //get city
        $city = \App\City::where('id', $city_id)->limit(1)->first();
        $country_id = $city->country_id;
        //get country
        $country = \App\Country::where('id', $country_id)->limit(1)->first();/*->value('country');*/
        //get the user
        $user = User::findOrFail($id);
        $user->location = $location;
        $user->location->city = $city;
        $user->location->city->country = $country;
        //specifics
        $loc = new \stdClass();
        $loc->street_address = $location->street_address;
        $loc->city = $city->city;
        $loc->country = $country;
        $user->location = $loc;
        // unset all variables used
        unset($location, $city_id, $city, $country_id, $country, $loc);/**/

        // if API request, serve JSON
        if (Route::getCurrentRoute()->getPrefix()=='api/v1') {//$request->ajax() || $request->isJson()
            
            if($request->headers->get('Content-Type')=="application/json"){// json
                return (['user' => $joined]);
                //return (['user' => $user, 'responseType' => 'json', 'requestType' => 'API call', 'status' => 200]);
            } elseif ($request->headers->get('Content-Type')=="application/xml") {// xml
                return response()->xml(['user' => $joined]);//$user
            } else {//web call, return view, text/html
                return (['user' => $user, 'responseType' => 'text/html, web-view', 'status' => 200]);/*['fullname']*/
            }
            
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
