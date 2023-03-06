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
        Schema::create('coursestudents', function (Blueprint $table) {
            $table->id();
            $table->string('course_student_name');
            $table->string('course_student_email');
            $table->string('course_student_phone');
            $table->date('course_student_dob');
            $table->string('course_student_profession');
            $table->string('course_student_company_institute');
            $table->string('course_student_interest_area');
            $table->string('course_student_facebook');
            $table->string('course_student_linkedin');
            $table->string('course_student_github');
            $table->string('course_student_website');
            $table->string('course_student_address');
            $table->text('course_student_description');
            $table->text('course_student_photo');
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
        Schema::dropIfExists('coursestudents');
    }
};
