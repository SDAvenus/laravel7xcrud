<?php

namespace App\Models\Backend;

use Illuminate\Database\Eloquent\Model;

class SlideModel extends Model
{
    //
    // khai báo tên bảng
    protected $table = 'slide';

    // khai báo khóa chính của bảng
    protected $primaryKey = 'id';
}
