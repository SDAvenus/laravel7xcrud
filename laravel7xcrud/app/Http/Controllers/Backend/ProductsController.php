<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Backend\ProductsModel;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class ProductsController extends Controller
{
    public function index(Request $request) {
       //http_build_query()
        //$products = ProductsModel::all();
        $sort = $request->query('product_sort', "");

        $searchKeyword = $request->query('product_name', "");

        $productStatus = (int) $request->query('product_status', "");

        $category_id = (int) $request->query('category_id', 0);

        $allProductStatus = [1,2];

        //$products = DB::table('products')->paginate(10);

        $queryORM = ProductsModel::where('product_name', "LIKE", "%".$searchKeyword."%");

        if (in_array($productStatus, $allProductStatus)) {

            $queryORM = $queryORM->where('product_status',$productStatus);

        }
        
        if ($sort == "price_asc") {

            $queryORM->orderBy('product_price', 'asc');

        }

        if ($sort == "price_desc") {

            $queryORM->orderBy('product_price', 'desc');

        }

        if ($sort == "quantity_asc") {

            $queryORM->orderBy('product_quantity', 'asc');

        }

        if ($sort == "quantity_desc") {

            $queryORM->orderBy('product_quantity', 'desc');

        }

        $products = $queryORM->paginate(10);

        // truyền dữ liệu xuống view

        $data = [];

        $data["products"] = $products;

        // truyền keyword search xuống view

        $data["searchKeyword"] = $searchKeyword;

        $data["productStatus"] = $productStatus;

        $data["category_id"] = $category_id;

        $data["sort"] = $sort;

        $categories = DB::table('category')->get();

        $data["categories"] = $categories;

        return view("backend.products.index", $data);
    }

    public function create() {

        $data = [];

        $categories = DB::table('category')->get();

        $data["categories"] = $categories;

        return view("backend.products.create", $data);
    }
    
    public function delete($id) {
        $product = ProductsModel::findOrFail($id);
        $data = [];
        $data['product'] = $product;
        return view("backend.products.delete",$data);
    }

    public function store(Request $request) {
        //validate dữ liệu
        $validate = $request->validate([
            'product_name' => 'required',
            'category_id' => 'required',
            'product_image' => 'required',
            'product_desc' => 'required',
            'product_quantity' => 'required',
            'product_price' => 'required',
            'product_discount' => 'required',
        ]);

        //lấy giá trị của các dữ liệu submit đi
        $product_name = $request->input('product_name', '');
        $category_id = $request->input('category_id', 0);
        $product_status = $request->input('product_status', 1);
        $product_desc = $request->input('product_desc', '');
        $product_publish = $request->input('product_publish', '');
        $product_quantity = $request->input('product_quantity', 0);
        $product_price = $request->input('product_price', 0); 
        $product_discount = $request->input('product_discount', 0); 
        $pathProductImage = $request->file('product_image')->store('public/productimages');

        $product = new ProductsModel();
        // khi $product_publish không được nhập dữ liệu
        // ta sẽ gán giá trị là thời gian hiện tại theo định dạng Y-m-d H:i:s
        if (!$product_publish) {
            $product_publish = date("Y-m-d H:i:s");
        }

        // gán dữ liệu từ request cho các thuộc tính của biến $product
        // $product là đối tượng khởi tạo từ model ProductsModel
        $product->product_name = $product_name;
        $product->category_id = $category_id;
        $product->product_status = $product_status;
        $product->product_desc = $product_desc;
        $product->product_publish = $product_publish;
        $product->product_quantity = $product_quantity;
        $product->product_price = $product_price;
        $product->product_discount = $product_discount;
        $product->product_image = $pathProductImage;

        // lưu sản phẩm
        $product->save();


        return redirect("/backend/product/index")->with('status','Thêm sản phẩm thành công');
     }

     public function update(Request $request, $id) {
        // validate dữ liệu
        $validatedData = $request->validate([
            'product_name' => 'required',
            'category_id' => 'required',
            'product_publish' => 'required',
            'product_desc' => 'required',
            'product_quantity' => 'required',
            'product_price' => 'required',
            'product_discount' => 'required',
        ]);
        
        //lấy giá trị của các dữ liệu submit đi
        $product_name = $request->input('product_name', '');
        $category_id = $request->input('category_id', 0);
        $product_status = $request->input('product_status', 1);
        $product_desc = $request->input('product_desc', '');
        $product_publish = $request->input('product_publish', '');
        $product_quantity = $request->input('product_quantity', 0);
        $product_price = $request->input('product_price', 0);
        $product_discount = $request->input('product_discount', 0); 

        
        $product = ProductsModel::findOrFail($id);
      
        // gán dữ liệu từ request cho các thuộc tính của biến $product
        // $product là đối tượng khởi tạo từ model ProductsModel
        $product->product_name = $product_name;
        $product->category_id = $category_id;
        $product->product_status = $product_status;
        $product->product_desc = $product_desc;
        $product->product_publish = $product_publish;
        $product->product_quantity = $product_quantity;
        $product->product_price = $product_price;
        $product->product_discount = $product_discount;

        // upload ảnh
        if ($request->hasFile('product_image')){
            // nếu có ảnh mới upload lên và
            // trong biến $product->product_image có dữ liệu
            // có nghĩa là trước đó đã có ảnh trong db
            if ($product->product_image) {
                Storage::delete($product->product_image);
            }

            $pathProductImage = $request->file('product_image')->store('public/productimages');
            $product->product_image = $pathProductImage;
        }

        // lưu sản phẩm
        $product->save();


        return redirect("/backend/product/edit/$id")->with('status', 'cập nhật sản phẩm thành công !');
    }

    public function destroy($id){
         // lấy đối tượng model dựa trên biến $id
            $product = ProductsModel::findOrFail($id);
            $product->delete();

            return redirect("/backend/product/index")->with('status', 'xóa sản phẩm thành công !');
    }

    public function edit($id) {

        $product = ProductsModel::findOrFail($id);

        $categories = DB::table('category')->get();


        // truyền dữ liệu xuống view
    
        $data = [];
     
        $data["product"] = $product;

        $data["categories"] = $categories;
     
        return view("backend.products.edit", $data);
     
     }
}
