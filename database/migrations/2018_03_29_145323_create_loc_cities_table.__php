<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLocCitiesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if(Schema::hasTable('loc_cities')== FALSE)
        {
            Schema::create('loc_cities', function (Blueprint $table) {
                $table->increments('id');
                $table->string('city', 255);
                $table->unsignedInteger('country_id');
                $table->timestamps();
                $table->softDeletes();
                $table->foreign('country_id')->references('id')->on('loc_countries')->onDelete('cascade');
            });
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('loc_cities');
    }
}
