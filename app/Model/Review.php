<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Review extends Model
{

	protected $table = 'reviews';

	protected $fillable = ['customer','star','review'];

	public $timestamps = true;

    public function products()
    {
    	return $this->belongsTo('App\Model\Product','id');

    }
}
