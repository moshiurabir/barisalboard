<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('ssc_payments', function (Blueprint $table) {
            $table->id();
            $table->string('eiin');
            $table->string('institutename');
            $table->string('numberofstudent');
            $table->string('amount');
            $table->string('sonali_random');
            $table->string('check_bit');
            $table->string('status');
            $table->string('created_by');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('ssc_payments');
    }
};
