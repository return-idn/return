<?php

namespace App\Http\Controllers;

use App\Http\Requests\CoinWithdrawalRequest;
use App\Models\Coin;
use App\Models\CoinWithdrawal;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class CoinWithdrawalController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (request()->ajax()) {
            $query = CoinWithdrawal::with(['user']);

            return DataTables::of($query)
                ->addColumn('action', function ($item) {
                    return '
                        <a class="inline-block border border-blue-700 bg-blue-700 text-white rounded-md px-2 py-1 m-1 transition duration-500 ease select-none hover:bg-blue-800 focus:outline-none focus:shadow-outline"
                            href="' . route('dashboard.coinWithdrawal.show', $item->id) . '">
                            Show
                        </a>
                        <a class="inline-block border border-gray-700 bg-gray-700 text-white rounded-md px-2 py-1 m-1 transition duration-500 ease select-none hover:bg-gray-800 focus:outline-none focus:shadow-outline"
                            href="' . route('dashboard.coinWithdrawal.edit', $item->id) . '">
                            Edit
                        </a>';
                })
                ->rawColumns(['action'])
                ->make();
        }

        return view('pages.dashboard.coinWithdrawal.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(CoinWithdrawal $coinWithdrawal)
    {

        return view('pages.dashboard.coinWithdrawal.show', compact('coinWithdrawal'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(CoinWithdrawal $coinWithdrawal)
    {
        return view('pages.dashboard.coinWithdrawal.edit', [
            'item' => $coinWithdrawal
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(CoinWithdrawalRequest $request, CoinWithdrawal $coinWithdrawal)
    {
        $data = $request->all();

        // dd($data);

        if ($data['status'] === 'SUCCESS') {
            $coin = Coin::where('users_id', $coinWithdrawal->user->id)->first();
            $coin->total = $coin->total - $coinWithdrawal->total;
            $coin->save();
        }

        $coinWithdrawal->update($data);

        return redirect()->route('dashboard.coinWithdrawal.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
