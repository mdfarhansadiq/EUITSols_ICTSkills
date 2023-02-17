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
        Schema::create('codeconducts', function (Blueprint $table) {
            $table->id();
            $table->text('codeofprointro');
            $table->text('setoutbiscode');
            $table->text('codeofpro');
            $table->text('inpartims');
            $table->text('codeofconductimg');
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
        Schema::dropIfExists('codeconducts');
    }
};