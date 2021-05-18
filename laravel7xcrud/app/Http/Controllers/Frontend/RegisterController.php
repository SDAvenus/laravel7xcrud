<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Hash;
use App\User;
use Auth;
class RegisterController extends Controller
{
    //
    public function getregister(){
        return view('site.register');
    }

    public function postregister(Request $request){

        $this->validate($request,
	        [
	            'name' => 'required|string|max:255',
				'email' => 'required|string|email|max:255|unique:users,email',
				'password' => 'required|min:6',
				'repassword' => 'required|same:password'
	        ],
	        [
	            'name.required' => 'Họ và tên là trường bắt buộc',
				'name.max' => 'Họ và tên không quá 255 ký tự',

				'email.required' => 'Email là trường bắt buộc',
				'email.email' => 'Email không đúng định dạng',
				'email.max' => 'Email không quá 255 ký tự',
				'email.unique' => 'Email đã tồn tại',

				'password.required' => 'Mật khẩu là trường bắt buộc',
				'password.min' => 'Mật khẩu phải chứa ít nhất 6 ký tự',

				'repassword.require' => 'Bạn chưa nhập lại mật khẩu',
				'repassword.same' => 'Mật khẩu nhập lại chưa khớp',
				
            ]);
            
        $users = new User();
		$users->name = $request->name;
		$users->email = $request->email;
		$users->password = Hash::make($request->password);
		$users->save();

		return redirect('/register')->with('status','Đăng kí thành công');
	}

    
}
