<?php

namespace App\Http\Controllers\API;

use App\Helpers\ResponseFormatter;
use App\Http\Controllers\Controller;
use App\Models\Waste;
use Illuminate\Http\Request;

class WasteController extends Controller
{
    public function all(Request $request)
    {
        $id = $request->input('id');
        $limit = $request->input('limit');
        $name = $request->input('name');
        $description = $request->input('description');
        $tags = $request->input('tags');
        $unit = $request->input('unit');
        $categories = $request->input('categories');

        $price_from = $request->input('price_from');
        $price_to = $request->input('price_to');

        if ($id) {
            $waste = Waste::with(['category', 'galleries'])->find($id);

            if ($waste) {
                return ResponseFormatter::success(
                    $waste,
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

        $waste = Waste::with(['category', 'galleries']);

        if ($name) {
            $waste->where('name', 'like', '%' . $name . '%');
        }

        if ($description) {
            $waste->where('description', 'like', '%' . $description . '%');
        }

        if ($tags) {
            $waste->where('tags', 'like', '%' . $tags . '%');
        }


        if ($price_from) {
            $waste->where('price', '>=', $price_from);
        }

        if ($price_to) {
            $waste->where('price', '<=', $price_to);
        }

        if ($categories) {
            $waste->where('categories_id', $categories);
        }

        if ($unit) {
            $waste->where('unit', $unit);
        }

        return ResponseFormatter::success(
            $waste->paginate($limit),
            'Data sampah berhasil diambil'
        );
    }
}
