<?php

namespace App\Http\Controllers\API;

use App\Helpers\ResponseFormatter;
use App\Http\Controllers\Controller;
use App\Models\Coin;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CoinController extends Controller
{
    public function fetch()
    {
        $coin = Coin::where('users_id', Auth::user()->id)->first();

        return ResponseFormatter::success($coin, 'Data coin diambil');
    }
}
