<?php

namespace App\Models\Backend;

use Illuminate\Database\Eloquent\Model;

class UserModel extends Model
{
    //
    protected $table = 'users';

    // khai báo khóa chính của bảng
 
    protected $primaryKey = 'id';
}
