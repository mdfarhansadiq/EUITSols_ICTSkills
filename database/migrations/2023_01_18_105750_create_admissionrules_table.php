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
        Schema::create('admissionrules', function (Blueprint $table) {
            $table->id();
            $table->text('studentregisproce');
            $table->text('modepaymentfees');
            $table->text('dateofregis');
            $table->text('refundfees');
            $table->text('admisnruleimg');
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
        Schema::dropIfExists('admissionrules');
    }
};