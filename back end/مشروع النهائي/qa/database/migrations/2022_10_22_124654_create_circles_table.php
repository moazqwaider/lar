<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCirclesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('circles', function (Blueprint $table) {
            $table->id();

            $table->string('circle_name');
            $table->unsignedBigInteger('company_id');
            $table->unsignedBigInteger('count_id');
            $table->foreign('company_id')->references('id')->on('companies');
            $table->foreign('count_id')->references('id')->on('courts');
            $table->timestamps();
     });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('circles');
    }
}
