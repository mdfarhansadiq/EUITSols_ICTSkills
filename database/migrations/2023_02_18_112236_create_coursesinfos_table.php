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
        Schema::create('coursesinfos', function (Blueprint $table) {
            $table->id();
            $table->string('course_title');
            $table->unsignedBigInteger('course_category_id');
            $table->unsignedBigInteger('course_teacher_id');
            $table->string('course_duration');
            $table->text('course_description');
            $table->text('course_image');
            $table->integer('course_fee');
            $table->foreign('course_teacher_id')->references('id')->on('courseteachers')->onDelete('cascade');
            $table->foreign('course_category_id')->references('id')->on('coursecategories')->onDelete('cascade');
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
        Schema::dropIfExists('coursesinfos');
    }
};