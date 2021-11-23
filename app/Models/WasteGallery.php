<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Storage;

class WasteGallery extends Model
{
    use HasFactory, SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'url',
        'wastes_id'
    ];

    public function getUrlAttribute($url)
    {
        return config('app.url') . Storage::url($url);
    }

    public function wastes()
    {
        return $this->hasMany(Waste::class, 'wastes_id', 'id');
    }
}
