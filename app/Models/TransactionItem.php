<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TransactionItem extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'quantity',
        'wastes_id',
        'transactions_id',
        'users_id'
    ];

    public function waste()
    {
        return $this->hasOne(Waste::class, 'id', 'wastes_id');
    }
}
