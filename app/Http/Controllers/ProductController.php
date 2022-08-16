<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Products;
use Carbon\Carbon;

class ProductController extends Controller
{
    public function getProducts() {
        $productList = Products::all();
        return $productList;
    }

    public function postProducts(Request $request){
        // $this->validate($request, [
        //     'task' => 'required',
        // ]);

        $product = new Products;
        $product->date_created = Carbon::now();
        $product->code = Carbon::now()->isoFormat('x');
        $product->item_name = $request->input('item_name'); 
        $product->category = $request->input('category'); 
        $product->location = $request->input('location'); 
        $product->available_quantity = $request->input('available_quantity'); 
        $product->rent_rates = $request->input('rent_rates'); 
        $product->ref_deposit = $request->input('ref_deposit'); 
        $product->owner = $request->input('owner'); 
        $product->item_description = $request->input('item_description'); 
        $product->images = $request->input('images'); 

        $product->save();
        return response()->json($product, 200);
    }
}

