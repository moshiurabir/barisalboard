<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Instituteopen extends Model
{
    use HasFactory;
    protected $table = 'interactive_instituteopens';
    protected $fillable = [
        'name',
        'mobile',
        'email',
        'institutename',
        'institute_name_type',
        'address',
        'institution_type',
        'institute_version',
        'institute_section',
        'institute_area',
        'institute_distance',
        'institute_distance_attachment',
        'institute_population',
        'institute_population_attachment',
        'institute_land',
        'institute_land_attachment',
        'establishing_institute_date',
        'establishing_institute_attachment',
        'jsc_teachingpermission_date',
        'jsc_teachingpermission_attachment',
        'ssc_teachingpermission_date',
        'ssc_teachingpermission_attachment',
        'hsc_teachingpermission_date',
        'hsc_teachingpermission_attachment',
        'jsc_affiliation_date',
        'jsc_affiliation_attachment',
        'ssc_affiliation_date',
        'ssc_affiliation_attachment',
        'hsc_affiliation_date',
        'hsc_affiliation_attachment'
    ];
}
