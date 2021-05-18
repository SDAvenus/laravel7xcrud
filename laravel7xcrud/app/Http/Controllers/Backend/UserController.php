<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Hash;
use App\Models\Backend\UserModel;

class UserController extends Controller
{
    //
    public function index(Request $request){

        
        $sort = $request->query('sort', "");
     
        $searchKeyword = $request->query('name', "");
     
        $queryORM = UserModel::where('name', "LIKE", "%".$searchKeyword."%");
     
        if ($sort == "name_asc") {
     
            $queryORM->orderBy('name', 'asc');
     
        }
     
        if ($sort == "name_desc") {
     
            $queryORM->orderBy('name', 'desc');
     
        }
     
        $user = $queryORM->paginate(10);
     
        // truyền dữ liệu xuống view
     
        $data = [];
     
        $data["user"] = $user;
     
        // truyền keyword search xuống view
     
        $data["searchKeyword"] = $searchKeyword;
     
        $data["sort"] = $sort;
     
        return view("backend.user.index", $data);
    }

    public function create() {

        return view("backend.user.create");
     
     }

    public function store(Request $request){

        $validatedData = $request->validate([
     
            'name' => 'required',
     
            'email' => 'required|unique:admins',
     
            'password' => 'required|min:6|required_with:password_confirmation|same:password_confirmation',
     
            'password_confirmation' => 'required|min:6',

            'type' => 'required',
     
        ]);
     
        $name = $request->input('name', '');
     
        $email = $request->input('email', '');
     
        $password = $request->input('password', '');

        $type = $request->input('type', 2);
     
        $user = new UserModel();
     
        $user->name = $name;
     
        $user->email = $email;
     
        $user->password = Hash::make($password);

        $user->type = $type;
     
        // lưu danh mục
     
        $user->save();
     
        return redirect("/backend/user/index")->with('status', 'thêm user thành công !');
     
    }

    public function edit($id) {

        $user = UserModel::findOrFail($id);

        // truyền dữ liệu xuống view
     
        $data = [];
     
        $data["user"] = $user;
     
        return view("backend.user.edit", $data);
     
     
     }
     
    
     
     public function update(Request $request, $id) {

         $name = $request->input('name', '');

        $email = $request->input('email', '');

        $password = $request->input('password', '');

        $type = $request->input('type', 2);

        if (strlen($password) > 0) {

            // validate dữ liệu

            $validatedData = $request->validate([

                'name' => 'required',

                'email' => 'required|unique:admins',

                'password' => 'required|min:6|required_with:password_confirmation|same:password_confirmation',

                'password_confirmation' => 'required|min:6',

                'type' => 'required',

            ]);

        } else {

            // validate dữ liệu

            $validatedData = $request->validate([

                'name' => 'required',

                'email' => 'required|unique:admins',

            ]);

        }

        $user = UserModel::findOrFail($id);

        $user->name = $name;

        $user->email = $email;

        $user->type = $type;

        if (strlen($password) > 0) {

            $user->password = Hash::make($password);

        }

        // lưu danh mục

        $user->save();

        return redirect("/backend/user/edit/$id")->with('status', 'cập nhật user thành công !');
     }

     public function delete($id) {
        $user = UserModel::findOrFail($id);
        $data = [];
        $data['user'] = $user;
        return view("backend.user.delete",$data);
    }

    public function destroy($id){
        // lấy đối tượng model dựa trên biến $id
        $user  = UserModel::findOrFail($id);
        $user ->delete();

           return redirect("/backend/user/index")->with('status', 'xóa user thành công !');
   }
     
}
