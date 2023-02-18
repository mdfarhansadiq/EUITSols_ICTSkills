<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CoursesInfoModel extends Model
{
    use HasFactory;

    protected $table = 'coursesinfos';

    public function CourseTeacherModel()
    {

        return $this->belongsTo(CourseTeacherModel::class, 'course_teacher_id');
    }

    public function CourseCategoryModel()
    {

        return $this->belongsTo(CourseCategoryModel::class, 'course_category_id');
    }
}