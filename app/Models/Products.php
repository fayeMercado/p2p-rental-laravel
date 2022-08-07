<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Products extends Model
{
    use HasFactory;

    //Products Table 
protected $table = 'products';

protected $fillable = ['item_name', 'date_created', 'code', 'category', 'location', 'available_quantity', 'rent_rates', 'ref_deposit', 'images'];

public $timestamps = false;
}
