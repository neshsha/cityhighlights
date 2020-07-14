<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
	protected $fillable = [
        'caption', 'image', 'article', 'galery_images',
    ];

   public function user() {
   	return $this->belongsTo(User::class);
   }
}
