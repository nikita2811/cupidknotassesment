<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Partner extends Model
{
     protected $fillable = [
        'income','manglik','user_id','occupation','family'
    ];
      protected $casts  = [
      'occupation' =>'array',
      'family' =>'array'
  ];
}
