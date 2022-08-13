<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Cart;
use Carbon\Carbon;

class CartController extends Controller
{

    //<<<<< GET LIST BY CART_ID >>>>>
    public function getCart() {
        $cartList = DB::table('cart')->where('cart_id', 'C0000001')->get();
        return $cartList;
    }


    public function postCart(Request $request){
        // $this->validate($request, [
        //     'task' => 'required',
        // ]);

        $item = new Cart;
        $item->cart_id = $request->input('cart_id');
        $item->product_code = $request->input('product_code');
        $item->shipping_method = $request->input('shipping_method');
        $item->shipping_rates = $request->input('shipping_rates');
        $item->quantity = $request->input('quantity');
        $item->rent_date = $request->input('rent_date');
        $item->rent_duration = $request->input('rent_duration');
        $item->total_rent = $request->input('total_rent');

        $item->save();
        return response()->json($item, 200);
    }
}

