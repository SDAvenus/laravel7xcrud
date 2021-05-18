<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use User;
use App\Models\Backend\ProductsModel;
use App\Models\Frontend\CartModel;
use Illuminate\Support\Facades\DB;

class LoginController extends Controller
{
    //

    public function shareKey()
    {
        $cart = new CartModel();
        $totalQttCart = $cart->getTotalQuantity();
        $totalPriceCart = $cart->getTotalPrice();
        view()->share('totalQttCart', $totalQttCart);
        view()->share('totalPriceCart', $totalPriceCart);
    }

    public function getLogin(){
        $this->shareKey();
        $products = DB::table('products')->get();
        $products = ProductsModel::paginate(9);
        $slides = DB::table("slide")->get();
        $categories = DB::table("category")->get();

        $data = [
           "categories" =>  $categories,
           "products" => $products,
           "slides" => $slides,
        ];
        return view('site.login',$data);
       
    }

    public function postLogin(Request $request){
        $this->validate($request,
        [
            'email'=>'required|email',
            'password'=>'required|min:6|max:20',
        ],

        [
            'email.required'=>"Vui lòng nhập email",
            'email.email'=>"Email không đúng định dạng",
            'password.require'=>"Vui lòng nhập password",
            'password.min'=>"Password ít nhất 6 ký tự",
            'password.max'=>"Password không quá 20 ký tự",
        ]);
        $arr = [
            'email' => $request->email,
            'password' => $request->password,
        ];

        
            if(Auth::attempt($arr)){
                //đăng nhập đúng
                return redirect('/')->with('thongbao','Đăng nhập thành công');
                
            }
            else{
                //đăng nhập sai
                return redirect()->back()->with('thongbao1','Sai tên đăng nhập hoặc mật khẩu');
            }
     
    }

    public function userLogout(){
        Auth::logout();
        return redirect('/');
    }
}
