<?php

use App\Models\company;
use App\Models\contact;
use Faker\Provider\ar_EG\Person;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateContactsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('contacts', function (Blueprint $table) {
            $table->id();
            $table->boolean ('status')->default(0);
            $table->string('Name');
            $table->enum('type',['company','person']);
            $table->string('email')->unique();
            $table->string('phone');
            $table->unsignedBigInteger('company_id');
            $table->unsignedBigInteger('country_id');
            $table->foreign('company_id')->references('id')->on('companies');
            $table->foreign('country_id')->references('id')->on('countries');





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
        Schema::dropIfExists('contacts');
    }
}
