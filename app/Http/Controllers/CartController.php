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
        $cartList = DB::table('cart')->where('cart_id', $cartId)->get();
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
        $item->rent_fromDate = $request->input('rent_fromDate');
        $item->rent_toDate = $request->input('rent_toDate');
        $item->rent_duration = $request->input('rent_duration');
        $item->total_rent = $request->input('total_rent');

        $item->save();
        return response()->json($item, 200);
    }

    public function deleteCart(Request $request){ 
        $item = Cart::find($request->input('id'))->delete();
        return response()->json(Cart::all());

        // $item = Tasks::find($request->input('id'));
        // $item->deleted = 1;
        // $item->save();
        // return response()->json($data);
    }



    // /**
    //  * Handle the incoming request.
    //  *
    //  * @param  \Illuminate\Http\Request  $request
    //  * @return \Illuminate\Http\RedirectResponse
    //  */
    // public function getCart(Request $request)
    // {
    //     $searchQuerey = $request->query('id', 'Learn laravel');

    //     $cart = Cart::query()->where('cart_id', 'C0000001', $searchQuerey)->take(10)->get();

    //     return $cart;
    // }

}

