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
        Schema::create(`orders`, function (Blueprint $table) {
            $table->id();
            $table->string('cart_id')->unique();
            $table->integer('item_total');
            $table->tinyInteger('accepted');
            $table->timestamp('date_accepted');
            $table->tinyInteger('returned');
            $table->timestamp('date_returned');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('orders');
    }
};
