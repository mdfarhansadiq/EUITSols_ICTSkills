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
        Schema::create('courseteachers', function (Blueprint $table) {
            $table->id();
            $table->string('course_teacher_name');
            $table->string('course_teacher_email');
            $table->string('course_teacher_phone');
            $table->date('course_teacher_dob');
            $table->string('course_teacher_profession');
            $table->string('course_teacher_company');
            $table->string('course_teacher_interest_area');
            $table->string('course_teacher_facebook');
            $table->string('course_teacher_linkedin');
            $table->string('course_teacher_github');
            $table->string('course_teacher_website');
            $table->string('course_teacher_address');
            $table->text('course_teacher_description');
            $table->text('course_teacher_photo');
            $table->text('course_teacher_cv');
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
        Schema::dropIfExists('courseteachers');
    }
};
