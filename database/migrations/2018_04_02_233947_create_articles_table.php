<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateArticlesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
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
        Schema::dropIfExists('articles');
    }
}
