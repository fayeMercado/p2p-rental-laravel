<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Cart;
use Carbon\Carbon;

class CartController extends Controller
{

    //<<<<< GET LIST BY CART_ID >>>>>
        public function getCart($cartId) {
        $cartList = DB::table('cart')
        ->where('cart_id', $cartId)
        ->where('order_id', null)
        ->get();
        return $cartList;
    }

    //<<<<< ADD TO CART >>>>>
    public function postCart(Request $request){
        // $this->validate($request, [
        //     'task' => 'required',
        // ]);

        $item = new Cart;
        $item->date_created = Carbon::now();
        $item->cart_id = $request->input('cart_id');
        $item->product_code = $request->input('product_code');
        $item->quantity = $request->input('quantity');
        $item->rent_fromDate = $request->input('rent_fromDate');
        $item->rent_toDate = $request->input('rent_toDate');      
        $item->rent_duration = $request->input('rent_duration');
        $item->total_rent = $request->input('total_rent');
        $item->shipping_method = $request->input('shipping_method');
        $item->shipping_rates = $request->input('shipping_rates');

        $item->save();
        return response()->json($item, 200);
    }

    //<<<<< DELETE CART ITEM >>>>>
    public function deleteCart(Request $request){ 
        $item = Cart::find($request->input('id'))->delete();
        return response()->json(Cart::all());

    }

    //<<<<< UPDATE CART ITEM >>>>>
    public function updateCart(Request $request){
        // $data = Todo::where('task', $request->input('task'));

        $item = Cart::find($request->input('id'));
        $item->shipping_method = $request->input('shipping_method');
        $item->shipping_rates = $request->input('shipping_rates');
        $item->quantity = $request->input('quantity');
        $item->rent_fromDate = $request->input('rent_fromDate');
        $item->rent_toDate = $request->input('rent_toDate');
        $item->rent_duration = $request->input('rent_duration');
        $item->total_rent = $request->input('total_rent');
        $item->save();
        return response()->json($item);

    }

    //<<<<< UPON CHECKOUT >>>>>
    public function checkoutCart(Request $request){
        $item = Cart::find($request->input('id'));
        $item->order_id = $request->input('order_id');
        $item->order_created = Carbon::now();
        $item->save();
        return response()->json($item);

    }
}

