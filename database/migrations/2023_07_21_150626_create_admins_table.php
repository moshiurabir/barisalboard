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
        Schema::create('admins', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('subdomain');
            $table->string('eiin')->unique();
            $table->string('institutename');
            $table->date('institute_established_date');
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('district');
            $table->string('t_code');
            $table->string('c_code');
            $table->string('s_code');
            $table->string('postoffice');
            $table->string('upazilla');
            $table->string('zilla');
            $table->string('institution_type');
            $table->string('institution_type_details');
            $table->string('head_institution');
            $table->string('mobile');
            $table->string('head_institution_sign');
            $table->string('template_isadmin');
            $table->string('ssc_science_permission');
            $table->string('ssc_science_seat');
            $table->date('ssc_science_permission_expiredate');
            $table->string('ssc_humanities_permission');
            $table->string('ssc_humanities_seat');
            $table->date('ssc_humanities_permission_expiredate');
            $table->string('ssc_businessstudies_permission');
            $table->string('ssc_businessstudies_seat');
            $table->date('ssc_businessstudies_permission_expiredate');
            $table->string('hsc_science_permission');
            $table->string('hsc_science_seat');
            $table->date('hsc_science_permission_expiredate');
            $table->string('hsc_humanities_permission');
            $table->string('hsc_humanities_seat');
            $table->date('hsc_humanities_permission_expiredate');
            $table->string('hsc_businessstudies_permission');
            $table->string('hsc_businessstudies_seat');
            $table->date('hsc_businessstudies_permission_expiredate');
            $table->string('hsc_homeeconomics_permission');
            $table->string('hsc_homeeconomics_seat');
            $table->date('hsc_homeeconomics_permission_expiredate');
            $table->string('hsc_agriculture_permission');
            $table->string('hsc_agriculture_seat');
            $table->date('hsc_agriculture_permission_expiredate');
            $table->string('hsc_islamicstudies_permission');
            $table->string('hsc_islamicstudies_seat');
            $table->date('hsc_islamicstudies_permission_expiredate');
            $table->string('hsc_music_permission');
            $table->string('hsc_music_seat');
            $table->date('hsc_music_permission_expiredate');
            $table->date('jsc_sad');
            $table->date('ssc_sad');
            $table->date('ssc_eff_sad');
            $table->date('ssc_teacher_sad');
            $table->string('ssc_payment_permission');
            $table->date('hsc_sad');
            $table->date('hsc_eff_sad');
            $table->date('hsc_teacher_sad');
            $table->string('hsc_payment_permission');
            $table->string('password');
            $table->string('notes');
            $table->string('status')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('admins');
    }
};
