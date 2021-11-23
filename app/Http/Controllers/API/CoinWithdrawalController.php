<?php

namespace App\Http\Controllers\API;

use App\Helpers\ResponseFormatter;
use App\Http\Controllers\Controller;
use App\Models\CoinWithdrawal;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CoinWithdrawalController extends Controller
{
    public function all(Request $request)
    {
        $id = $request->input('id');
        $limit = $request->input('limit', 6);
        $status = $request->input('status');

        if ($id) {
            $coinWithdrawal = CoinWithdrawal::find($id);

            if ($coinWithdrawal) {
                return ResponseFormatter::success(
                    $coinWithdrawal,
                    'Data transaksi berhasil diambil'
                );
            } else {
                return ResponseFormatter::error(
                    null,
                    'Data transaksi tidak ada',
                    404
                );
            }
        }

        $coinWithdrawal = CoinWithdrawal::where('users_id', Auth::user()->id);

        if ($status) {
            $coinWithdrawal->where('status', $status);
        }

        return ResponseFormatter::success(
            $coinWithdrawal->latest()->paginate(),
            'Data list Penarikan berhasil diambil'
        );
    }

    public function withdraw(Request $request)
    {
        $request->validate([
            'total' => 'required',
            'bank_address' => 'required',
            'bank_owner_name' => 'required',
            'bank_name' => 'required',
            'status' => 'required|in:PENDING,SUCCESS,CANCELLED,FAILED',
        ]);

        $coinWithdrawal = CoinWithdrawal::create([
            'users_id' => Auth::user()->id,
            'total' => $request->total,
            'bank_address' => $request->bank_address,
            'bank_owner_name' => $request->bank_owner_name,
            'bank_name' => $request->bank_name,
            'status' => $request->status,
        ]);


        return ResponseFormatter::success($coinWithdrawal, 'Pengajuan Penarikan berhasil');
    }
}
