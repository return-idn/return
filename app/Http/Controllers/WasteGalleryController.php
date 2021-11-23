<?php

namespace App\Http\Controllers;

use App\Models\Waste;
use Illuminate\Http\Request;
use App\Models\WasteGallery;
use Illuminate\Support\Facades\Storage;
use Yajra\DataTables\Facades\DataTables;
use App\Http\Requests\WasteGalleryRequest;

class WasteGalleryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Waste $waste)
    {
        if (request()->ajax()) {
            $query = WasteGallery::where('wastes_id', $waste->id);

            return DataTables::of($query)
                ->addColumn('action', function ($item) {
                    return '
                        <form class="inline-block" action="' . route('dashboard.gallery.destroy', $item->id) . '" method="POST">
                        <button class="border border-red-500 bg-red-500 text-white rounded-md px-2 py-1 m-2 transition duration-500 ease select-none hover:bg-red-600 focus:outline-none focus:shadow-outline" >
                            Hapus
                        </button>
                            ' . method_field('delete') . csrf_field() . '
                        </form>';
                })
                ->editColumn('url', function ($item) {
                    return '<img style="max-width: 150px;" src="' . $item->url . '"/>';
                })
                ->editColumn('is_featured', function ($item) {
                    return $item->is_featured ? 'Yes' : 'No';
                })
                ->rawColumns(['action', 'url'])
                ->make();
        }

        return view('pages.dashboard.gallery.index', compact('waste'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Waste $waste)
    {
        return view('pages.dashboard.gallery.create', compact('waste'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(WasteGalleryRequest $request, Waste $waste)
    {
        $files = $request->file('files');

        if ($request->hasFile('files')) {
            foreach ($files as $file) {
                $path = $file->store('public/gallery');

                WasteGallery::create([
                    'wastes_id' => $waste->id,
                    'url' => $path
                ]);
            }
        }

        return redirect()->route('dashboard.waste.gallery.index', $waste->id);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\WasteGallery  $gallery
     * @return \Illuminate\Http\Response
     */
    public function show(WasteGallery $gallery)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\WasteGallery  $gallery
     * @return \Illuminate\Http\Response
     */
    public function edit(WasteGallery $gallery)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\WasteGallery  $gallery
     * @return \Illuminate\Http\Response
     */
    public function update(WasteGalleryRequest $request, WasteGallery $gallery)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\WasteGallery  $wasteGallery
     * @return \Illuminate\Http\Response
     */
    public function destroy(WasteGallery $gallery)
    {
        $gallery->delete();

        return redirect()->route('dashboard.waste.gallery.index', $gallery->wastes_id);
    }
}
