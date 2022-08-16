<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cart', function (Blueprint $table) {
            $table->id();
            $table->timestamp('date_created')->useCurrent();
            $table->timestamp('date_updated')->useCurrent();
            $table->string('cart_id')->unique();
            $table->string('product_code');
            $table->integer('quantity');
            $table->date('rent_fromDate')->nullable();
            $table->date('rent_toDate')->nullable();
            $table->integer('rent_duration');
            $table->integer('total_rent');
            $table->string('shipping_method');
            $table->string('shipping_rates')->default('0');
            $table->string('order_id')->nullable();
            $table->timestamp('order_created')->useCurrent();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('cart');
    }
};
