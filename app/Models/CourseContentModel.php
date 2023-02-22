<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CourseContentModel extends Model
{
    use HasFactory;

    protected $table = 'coursecontents';

    public function CoursesInfoModel()
    {
        return $this->belongsTo(CoursesInfoModel::class, 'course_title_id');
    }
}