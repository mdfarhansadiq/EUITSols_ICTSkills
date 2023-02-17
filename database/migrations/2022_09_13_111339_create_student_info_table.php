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
        Schema::create('student_infos', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('departments_id');
            $table->string('student_id')->unique()->nullable();
            $table->string('name');
            $table->string('father_name');
            $table->string('mother_name');
            $table->string('present_address');
            $table->string('parmanent_address');
            $table->string('email')->unique()->nullable();
            $table->string('phone')->unique();
            $table->string('gardian_phone')->nullable();
            $table->string('gender');
            $table->string('dob');
            $table->string('nationality')->nullable();
            $table->unsignedBigInteger('bg_id')->nullable();
            $table->string('quota')->nullable();
            $table->unsignedBigInteger('division_id');
            $table->unsignedBigInteger('district_id');
            $table->string('photo')->nullable();
            $table->string('session')->nullable();
            $table->string('status')->nullable();
            $table->timestamps();

            $table->timestamp('deleted_at')->nullable();
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->unsignedBigInteger('deleted_by')->nullable();
        });

        Schema::table('student_infos', function (Blueprint $table) {
            $table->foreign('departments_id', 'student_infos_departments')->references('id')->on('departments')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('bg_id', 'student_infos_bg')->references('id')->on('bloodgroups')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('division_id', 'student_infos_division')->references('id')->on('divisions')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('district_id', 'student_infos_district')->references('id')->on('districts')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('created_by', 'student_infos_created')->references('id')->on('users')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('updated_by', 'student_infos_updated')->references('id')->on('users')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('deleted_by', 'student_infos_deleted')->references('id')->on('users')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('student_infos');
    }
};
