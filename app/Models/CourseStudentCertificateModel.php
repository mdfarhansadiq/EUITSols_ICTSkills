<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CourseStudentCertificateModel extends Model
{
    use HasFactory;

    protected $table = 'coursestudentcertificates';

    public function CourseEnrollStudentModel()
    {
        return $this->belongsTo(CourseEnrollStudentModel::class, 'course_enroll_student_id');
    }
}