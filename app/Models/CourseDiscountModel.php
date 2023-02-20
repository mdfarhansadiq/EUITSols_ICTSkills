<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CourseDiscountModel extends Model
{
    use HasFactory;

    protected $table = 'coursediscounts';

    public function CoursesInfoModel()
    {
        return $this->belongsTo(CoursesInfoModel::class, 'course_title_id');
    }
}