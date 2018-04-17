<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLocationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if(Schema::hasTable('locations')== FALSE)
        {
            Schema::disableForeignKeyConstraints();
            Schema::create('locations', function (Blueprint $table) {
                $table->increments('id');
                $table->string('street_address', 255);
                $table->unsignedInteger('city_id');
                $table->timestamps();
                $table->softDeletes();
                $table->foreign('city_id')->references('id')->on('loc_cities')->onDelete('cascade');
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
        Schema::dropIfExists('locations');
    }
}
