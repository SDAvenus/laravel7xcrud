<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Backend\SlideModel;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class SlideController extends Controller
{
    //
    public function index(){
        $slides = SlideModel::all();
        $slides = DB::table('slide')->paginate(5);
        $data = [];
        $data['slides'] = $slides;
        return view("backend.slide.index",$data);
    }

    public function create(){
        return view("backend.slide.create");
    }

    public function store(Request $request){
        $validate = $request->validate([
            'slide_name' => 'required',
           'slide_desc' => 'required',
           'slide_image' => 'required',
        ]);

        $slide_name = $request ->input('slide_name','');
        $pathSlide = $request->file('slide_image')->store('public/productimages');
        $slide_desc = $request ->input('slide_desc','');

        $slide = new SlideModel();

        $slide->slide_name = $slide_name;
        $slide->slide_desc = $slide_desc;
        $slide->slide_image = $pathSlide;



        $slide->save();
        return redirect("backend/slide/index")->with('status','Thêm Slide thành công');
    }

    public function edit($id){
        $slide = SlideModel::findOrfail($id);
        $data = [];
        $data['slide'] = $slide;
        return view("backend.slide.edit",$data);
    }

    public function update(Request $request, $id){
        $validate = $request->validate([
            'slide_name' => 'required',
           'slide_desc' => 'required',
           'slide_image' => 'required',
        ]);

        $slide_name = $request ->input('slide_name','');
        $slide_image = $request ->input('slide_image','');
        $slide_desc = $request ->input('slide_desc','');

        $slide = SlideModel::findOrfail($id);

        $slide->slide_name = $slide_name;
        $slide->slide_desc = $slide_desc;
          // upload ảnh
         if ($request->hasFile('slide_image')){
            if ($slide->slide_image) {
                Storage::delete($slide->slide_image);
        
            }
             $pathSlide = $request->file('slide_image')->store('public/productimages');
             $slide->slide_image = $pathSlide;
        }



        $slide->save();
        return redirect("backend/slide/edit/$id")->with('status',"Cập nhật thành công");
    }

    public function delete($id){
        $slide = SlideModel::findOrFail($id);
        $data = [];
        $data['slide'] = $slide;
        return view("backend.slide.delete",$data);
    }
    

    public function destroy($id){
        $slide = SlideModel::findOrFail($id);
        $slide->delete();

        return redirect("/backend/slide/index")->with('status', 'xóa sản phẩm thành công !');
    }
}
