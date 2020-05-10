<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class Product extends Model
{
    use Sluggable;

    protected $fillable = [
        'title',
        'price',
        'slug',
        'summary',
        'user_id',
        'category_id',
        'views',
        'upload_time',
        'approved',
        'featured',
        'product_image',
        'region_id'
    ];


    public function category(){
        return $this->belongsTo('App\Category');
    }

    public function user(){
        return $this->belongsTo('App\User');
    }

    public function region(){
        return $this->belongsTo('App\LocalGovt', 'region_id');
    }

    public function sluggable(){
        return [
            'slug' => [
                'source' => 'title'
            ]
        ];
    }

    protected $casts = [
        'views' => 'integer',
        'approved' => 'boolean',
        'featured' => 'boolean',
    ];
}
