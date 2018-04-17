<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
        Schema::disableForeignKeyConstraints();
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
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down() {
        Schema::table('locations', function (Blueprint $table) {
            $table->dropForeign(['location_id']);//'users_location_id_foreign'
            $table->dropColumn('location_id');
        });
        Schema::dropIfExists('users');
    }

}
