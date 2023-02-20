<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CourseReviewModel extends Model
{
    use HasFactory;

    protected $table = 'coursereviews';

    public function CoursesInfoModel()
    {
        return $this->belongsTo(CoursesInfoModel::class, 'course_title_id');
    }

    public function CourseStudentModel()
    {
        return $this->belongsTo(CourseStudentModel::class, 'course_student_id');
    }
}