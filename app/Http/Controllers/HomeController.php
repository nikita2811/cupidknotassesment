<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Partner;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;


class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $id =Auth::user()->id;
        $gender =Auth::user()->gender;
         $user_prefrence =Partner::where('user_id',$id)->first();
         $occupation = json_decode($user_prefrence->occupation);
         $family = json_decode($user_prefrence->family);
        
         
         

      if($user_prefrence->manglik != 'both'){
        $match  =User::where('gender','!=',$gender)->where(function($query) use ($user_prefrence,$occupation,$family){

                            $query->where('annual_income','LIKE','%'.$user_prefrence->income.'%')->orWhere('manglik','LIKE','%'.$user_prefrence->manglik.'%')->orWhere('occupation','LIKE','%'.$occupation[0].'%')->orWhere('occupation','LIKE','%'.$occupation[1].'%')->orWhere('occupation','LIKE','%'.$occupation[2].'%')->orWhere('family','LIKE','%'.$family[0].'%')->orWhere('family','LIKE','%'.$family[1].'%');})
        ->get();
        //print_r($match);
    }else{
         $match  =User::where('gender','!=',$gender)->where(function($query) use ($user_prefrence,$occupation,$family){

                            $query->where('annual_income','LIKE','%'.$user_prefrence->income.'%')->orWhere('occupation','LIKE','%'.$occupation[0].'%')->orWhere('occupation','LIKE','%'.$occupation[1].'%')->orWhere('occupation','LIKE','%'.$occupation[2].'%')->orWhere('family','LIKE','%'.$family[0].'%')->orWhere('family','LIKE','%'.$family[1].'%');})
        ->get();
         
    }
    $user =User::where('id',$id)->first();

        return view('home',['match'=>$match,'user'=>$user]);
    
    }

    public function admin(){
        $user =User::all();
        return view('admin',['user'=>$user]);
    }

    public function income(){
        $user =User::orderBy('annual_income',asc)->get();
        echo json_encode($user);
    }
     public function gender(){
        $user =User::where('gender','male')->get();
        echo json_encode($user);
    }

}
