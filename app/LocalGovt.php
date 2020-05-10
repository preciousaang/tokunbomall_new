<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LocalGovt extends Model
{
    public function products(){
        return $this->hasMany('App\Product', 'region_id');
    }

    public function state(){
        return $this->belongsTo('App\State');
    }
}
