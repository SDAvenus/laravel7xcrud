<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Backend\ProductsModel;
use App\Models\Frontend\CartModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class ProductController extends Controller
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

    public function index($id) {

        $this->shareKey();
        $products = DB::table('products')->get();
        $products = ProductsModel::paginate(9);
        $slides = DB::table("slide")->get();
        $product = ProductsModel::find($id);
        $categories = DB::table("category")->get();

        $data = [
           "product" =>  $product,
           "categories" =>  $categories,
           "products" => $products,
           "slides" => $slides,
        ];

        return view("site.product", $data);
    }
}
