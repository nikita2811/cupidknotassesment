<?php

use Illuminate\Database\Seeder;
use App\User;
use App\Partner;
use Illuminate\Support\Str;


class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $occupation = array(
    'government job',
    'private job',
    'business',
);
       

         $gender = array(
    'male',
    'female',
    
);
         

         $family = array(
    'joint',
    'nuclear',
    
);
         

          $manglik = array(
    'yes',
    'no',
    
);
          

          $partner_manglik = array(
    'yes',
    'no',
    'both',
    
);
         




    $min = strtotime('01-01-1980');
    $max = strtotime('01-01-2011');


    

    
        for ($i=0; $i < 20; $i++) { 
             $key_manglik = array_rand($manglik);
              $key_partner = array_rand($partner_manglik);
              $key_family = array_rand($family);
              $key_gender = array_rand($gender);
               $key_occupation = array_rand($occupation);

              $val = rand($min, $max);
        $user = User::create([
             'first_name' => Str::random(10),
             'last_name' => Str::random(10),
             'email' => Str::random(10).'@gmail.com',
            'password' => Hash::make('password'),
             'annual_income'  =>rand(0, 99999),
             'occupation' =>$occupation[$key_occupation],
             'gender' =>$gender[$key_gender],
              'family' =>$family[$key_family],
              'dob'=>date('Y-m-d', $val),
              'manglik'=>$manglik[$key_manglik],
         ]);
        $partner= Partner::create([
              'user_id'=>$user->id,
             'income'  =>rand(0, 99999),
             'occupation' =>json_encode($occupation[$key_occupation]),
              'family' =>json_encode($family[$key_family]),
               'manglik'=>$partner_manglik[$key_partner],
              
         ]);
        }
        //
    }
}
