<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Waste extends Model
{
    use HasFactory, SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'name',
        'description',
        'price',
        'tags',
        'unit',
        'categories_id'
    ];

    public function galleries()
    {
        return $this->hasMany(WasteGallery::class, 'wastes_id', 'id');
    }

    public function category()
    {
        return $this->belongsTo(WasteCategory::class, 'categories_id', 'id');
    }
}
