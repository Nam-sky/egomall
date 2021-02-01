<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductAttrTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_attr', function (Blueprint $table) {
            $table->increments('id');

            $table->Integer('id_product')->unsigned();
            $table->foreign('id_product')
                ->references('pro_id')
                ->on('products')
                ->onDelete('cascade');

            $table->Integer('id_attr')->unsigned();
            $table->foreign('id_attr')
                ->references('id')
                ->on('attr')
                ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('product_attr');
    }
}
