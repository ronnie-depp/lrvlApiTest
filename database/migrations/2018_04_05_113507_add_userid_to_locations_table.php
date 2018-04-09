<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddUseridToLocationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if(Schema::hasColumn('locations', 'user_id')== FALSE)
        {
            Schema::table('locations', function (Blueprint $table) {
                $table->integer('user_id')->unsigned()->after('id');
                $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
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
        Schema::table('locations', function (Blueprint $table) {
            $table->dropForeign(['user_id']);//'locations_user_id_foreign'
            //$table->dropUnique(['user_id']);//'locations_user_id_unique'
            $table->dropColumn('user_id');
        });
    }
}
