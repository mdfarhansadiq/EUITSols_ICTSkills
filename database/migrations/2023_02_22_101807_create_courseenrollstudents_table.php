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
        Schema::create('courseenrollstudents', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('course_title_id');
            $table->unsignedBigInteger('course_student_id');
            $table->foreign('course_title_id')->references('id')->on('coursesinfos')->onDelete('cascade');
            $table->foreign('course_student_id')->references('id')->on('coursestudents')->onDelete('cascade');
            $table->date('course_start_date');
            $table->date('course_completion_date');
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
        Schema::dropIfExists('courseenrollstudents');
    }
};