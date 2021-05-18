<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Backend\ProductsModel;
use App\Models\Frontend\CartModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomepageController extends Controller
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

    public function index() {

        $this->shareKey();

        $products = DB::table('products')->get();

        $categories = DB::table("category")->get();
        
        //sản phẩm giảm giá
        foreach ($categories as $category){
        $discountProducts = DB::table("products")->where("category_id",$category->id)->limit(1)->orderBy("id","desc")->get();
            foreach($discountProducts as $pro){
                $products[] = $pro;
            }
        }
        
        //dd($categories);

        $data = [
            "categories" => $categories
        ];

        $products = [];

        $slides = DB::table("slide")->get();

        //sản phẩm nổi bật
        foreach ($categories as $category) {

            $productsInCat = DB::table("products")->where("category_id",$category->id)->limit(3)->orderBy("product_price")->get();
            foreach($productsInCat as $product) {
                $products[] = $product;
            }

        }

        $data["products"] = $products;

        //$data["pro"] = $pro;

        $data["slides"] = $slides;

        $data["discountProducts"] = $discountProducts;

        return view("site.homepage", $data);
    }

    public function blog(){

        $this->shareKey();

        $categories = DB::table("category")->get();

        $slides = DB::table("slide")->get();

        $data = [];

        $data['categories'] = $categories;

        $data['slides'] = $slides;

        return view('site.blog',$data);
    }

    public function contact(){

        $this->shareKey();

        $categories = DB::table("category")->get();

        $slides = DB::table("slide")->get();

        $data = [];

        $data['categories'] = $categories;

        $data['slides'] = $slides;

        return view('site.contact',$data);
    }
}
