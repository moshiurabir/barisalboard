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
        Schema::create('interactive_instituteopens', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('mobile', 11);
            $table->string('eiin', 6)->unique();
            $table->string('institutename', 200);
            $table->date('institute_established_date');
            $table->string('institute_name_type', 10);
            $table->string('institute_name_type_attachment', 100);
            $table->string('email', 30);
            $table->string('address');
            $table->string('district', 5);
            $table->string('postoffice', 50);
            $table->string('upazilla', 50);
            $table->string('zilla', 30);
            $table->string('institution_type', 10);
            $table->string('institution_type_details', 50);
            $table->string('institute_version', 10);
            $table->string('institute_section', 10);
            $table->string('institute_section_details', 100);
            $table->string('institute_area', 50);
            $table->string('institute_distance', 20);
            $table->string('institute_distance_attachment', 50);
            $table->string('institute_population', 20);
            $table->string('institute_population_attachment', 50);
            $table->string('institute_land', 20);
            $table->string('institute_land_attachment', 50);
            $table->date('establishing_institute_date');
            $table->string('establishing_institute_attachment', 50);
            $table->date('jsc_teachingpermission_date');
            $table->string('jsc_teachingpermission_attachment', 50);
            $table->date('ssc_teachingpermission_date');
            $table->string('ssc_teachingpermission_attachment', 50);
            $table->date('hsc_teachingpermission_date');
            $table->string('hsc_teachingpermission_attachment', 50);
            $table->date('jsc_affiliation_date');
            $table->string('jsc_affiliation_attachment', 50);
            $table->date('ssc_affiliation_date');
            $table->string('ssc_affiliation_attachment', 50);
            $table->date('hsc_affiliation_date');
            $table->string('hsc_affiliation_attachment', 50);
            $table->string('head_institution');
            $table->string('head_institution_sign', 50);
            $table->string('amount', 10);
            $table->string('paymentstatus', 1);
            $table->date('payment_aprovedate');
            $table->string('bbmemo_no', 30);
            $table->string('check_bit', 30);
            $table->string('s_tran_num', 30);
            $table->string('status', 1)->default(0);
            $table->date('isdate');
            $table->string('dealing_assistant', 1);
            $table->date('dealing_assistant_assigndate');
            $table->date('dealing_assistant_date');
            $table->string('section_officer', 1);
            $table->date('section_officer_assigndate');
            $table->date('section_officer_date');
            $table->string('assistant_inspector', 1);
            $table->date('assistant_inspector_assigndate');
            $table->date('assistant_inspector_date');
            $table->string('deputy_inspector', 1);
            $table->date('deputy_inspector_assigndate');
            $table->date('deputy_inspector_date');
            $table->string('inspector', 1);
            $table->date('inspector_date');
            $table->string('chairman', 1);
            $table->date('chairman_date');
            $table->string('chairman_send', 1);
            $table->date('chairman_send_date');
            $table->string('chairman_approval', 1);
            $table->date('chairman_approvaldate');
            $table->string('chairman_aprove_visit', 1);
            $table->date('chairman_aprove_visit_date');
            $table->string('officer_visit', 10);
            $table->date('officer_visit_date');
            $table->string('officer_visit_report', 10);
            $table->date('officer_visit_report_date');
            $table->string('ais_visit_report_comments', 1);
            $table->date('ais_visit_report_commentsdate');
            $table->string('dis_visit_report_comments', 1);
            $table->date('dis_visit_report_commentsdate');
            $table->string('is_visit_report_comments', 1);
            $table->date('is_visit_report_commentsdate');
            $table->string('report_chairman_send', 1);
            $table->date('report_chairman_senddate');
            $table->longText('showcause');
            $table->date('showcause_date');
            $table->longText('showcause_reply');
            $table->date('showcause_replydate');
            $table->string('sarok_no', 100);
            $table->string('ministery_sarok',100);
            $table->date('affiliation_date_from');
            $table->date('affiliation_date_to');
            $table->longText('body');
            $table->longText('reject_letter');
            $table->longText('bitaron');
            $table->string('complete', 1);
            $table->string('complete_sign',50);
            $table->string('complate_date');
            $table->string('notes',100);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('interactive_instituteopens');
    }
};
