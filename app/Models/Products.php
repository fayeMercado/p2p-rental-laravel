<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Products extends Model
{
    use HasFactory;

    //Products Table 
protected $table = 'products';

protected $fillable = ['item_name', 'date_created', 'date_updated', 'code', 'category', 'location', 'available_quantity', 'rent_rates', 'ref_deposit', 'owner', 'item_description', 'images'];

public $timestamps = false;
}
