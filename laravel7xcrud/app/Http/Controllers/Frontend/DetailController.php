<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Frontend\CartModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Backend\ProductsModel;

class DetailController extends Controller
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

    public function index(){
       
        $this->shareKey();
        
        $categories = DB::table("category")->get();
        $slides = DB::table("slide")->get();
        $data = [];
        $data['categories'] = $categories;
        $data['slides'] = $slides;

        return view('site.intro',$data);
    }

    public function detail(Request $request,$id){

        $this->shareKey();
        $categories = DB::table("category")->get();
        $slides = DB::table("slide")->get();
        $product = ProductsModel::findOrFail($id);

        $data = [];
        $data['categories'] = $categories;
        $data['slides'] = $slides;
        $data['product'] = $product;
        return view("site.detail",$data);

    }

}
