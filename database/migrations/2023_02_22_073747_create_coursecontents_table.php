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
        Schema::create('coursecontents', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('course_title_id');
            $table->string('course_content_title');
            $table->string('course_content_link');
            $table->text('course_content_material_file')->nullable();
            $table->text('course_content_material_link')->nullable();
            $table->string('course_content_duration');
            // $table->integer('course_content_complete')->nullable();
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
        Schema::dropIfExists('coursecontents');
    }
};