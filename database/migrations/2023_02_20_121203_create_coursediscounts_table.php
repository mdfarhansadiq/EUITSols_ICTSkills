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
        Schema::create('coursediscounts', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('course_title_id');
            $table->date('course_discount_start');
            $table->date('course_discount_end');
            $table->integer('course_discount_amount')->nullable();
            $table->integer('course_discount_percentage')->nullable();
            $table->foreign('course_title_id')->references('id')->on('coursesinfos')->onDelete('cascade');
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
        Schema::dropIfExists('coursediscounts');
    }
};