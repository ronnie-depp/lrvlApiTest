<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSchemaAfresh extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::dropIfExists('password_resets');
        Schema::dropIfExists('articles');
        Schema::dropIfExists('users');
        Schema::dropIfExists('locations');
        Schema::dropIfExists('loc_cities');
        Schema::dropIfExists('loc_countries');
        //

        Schema::create('password_resets', function (Blueprint $table) {
            $table->string('email')->index();
            $table->string('token');
            $table->timestamp('created_at')->nullable();
        });

        if(Schema::hasTable('loc_countries')== FALSE)
        {
            Schema::create('loc_countries', function (Blueprint $table) {
                $table->increments('id');
                $table->string('country', 255);
                $table->timestamps();
                $table->softDeletes();
            });
        }

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

        if(Schema::hasTable('locations')== FALSE)
        {
            Schema::create('locations', function (Blueprint $table) {
                $table->increments('id');
                $table->string('street_address', 255);
                $table->unsignedInteger('city_id');
                $table->timestamps();
                $table->softDeletes();
                $table->foreign('city_id')->references('id')->on('loc_cities')->onDelete('cascade');
            });
        }

        if (Schema::hasTable('users') == FALSE) {
            Schema::create('users', function (Blueprint $table) {
                $table->increments('id');
                $table->string('name');
                $table->string('email')->unique();
                $table->string('password');
                $table->rememberToken();
                $table->timestamps();
                $table->softDeletes();
                $table->unsignedInteger('location_id');
                $table->foreign('location_id')->references('id')->on('locations')->onDelete('cascade');
            });
        }

        if(Schema::hasTable('articles')== FALSE)
        {
            Schema::create('articles', function (Blueprint $table) {
                $table->increments('id');
                $table->string('title');//->unique();
                $table->text('body');
                $table->unsignedInteger('author');
                $table->timestamps();
                $table->softDeletes();
                $table->foreign('author')->references('id')->on('users')->onDelete('cascade');
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
        Schema::dropIfExists('password_resets');
        Schema::dropIfExists('articles');
        Schema::dropIfExists('users');
        Schema::dropIfExists('locations');
        Schema::dropIfExists('loc_cities');
        Schema::dropIfExists('loc_countries');
    }
}
