<?php

namespace App\Http\Controllers\API;

use App\Helpers\ResponseFormatter;
use App\Http\Controllers\Controller;
use App\Models\WasteBank;
use Illuminate\Http\Request;

class WasteBankController extends Controller
{
    public function all(Request $request)
    {
        $id = $request->input('id');
        $limit = $request->input('limit');
        $name = $request->input('name');
        $address = $request->input('address');

        if ($id) {
            $wasteBank = WasteBank::find($id);

            if ($wasteBank) {
                return ResponseFormatter::success(
                    $wasteBank,
                    'Data sampah berhasil diambil'
                );
            } else {
                return ResponseFormatter::error(
                    null,
                    'Data sampah tidak ada',
                    404
                );
            }
        }

        $wasteBank = WasteBank::all();

        if ($name) {
            $wasteBank->where('name', 'like', '%' . $name . '%');
        }

        if ($address) {
            $wasteBank->where('address', 'like', '%' . $address . '%');
        }

        return ResponseFormatter::success(
            $wasteBank,
            'Data sampah berhasil diambil'
        );
    }
}
