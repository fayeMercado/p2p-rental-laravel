<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    use HasFactory;

    //Cart Table 
protected $table = 'cart';

protected $fillable = ['cart_id', 'product_code', 'shipping_method', 'shipping_rates', 'quantity', 'rent_fromDate', 'rent_toDate', 'rent_duration', 'total_rent', 'orderId', 'id'];

public $timestamps = false;
}
