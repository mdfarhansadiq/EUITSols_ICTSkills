<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CourseEnrollStudentModel extends Model
{
    use HasFactory;

    protected $table = 'courseenrollstudents';

    public function CoursesInfoModel()
    {
        return $this->belongsTo(CoursesInfoModel::class, 'course_title_id');
    }

    public function CourseStudentModel()
    {
        return $this->belongsTo(CourseStudentModel::class, 'course_student_id');
    }
}