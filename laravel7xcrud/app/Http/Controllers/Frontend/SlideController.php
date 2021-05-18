<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Backend\ProductsModel;
use App\Models\Backend\SlideModel;
use App\Models\Frontend\CartModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SlideController extends Controller
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
       
        
        $slides = DB::table("slide")->get();
       
      

        $data["slides"] = $slides;
        

        return view("site.slide", $data);
    }
}
