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
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('designation')->nullable();
            $table->string('username')->nullable();
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->string('session_id')->nullable();
            $table->string('is_admin')->nullable();
            $table->string('role')->nullable();
            $table->string('section')->nullable();
            $table->string('section_id')->nullable();
            $table->string('section_department')->nullable();
            $table->string('mobile')->nullable();
            $table->string('sign')->nullable();
            $table->string('photo')->nullable();
            $table->string('note')->nullable();
            $table->string('status')->nullable();
            $table->rememberToken();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};
