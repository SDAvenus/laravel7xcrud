@extends("backend.layouts.main")

@section("title","Danh sách sản phẩm")

@section("content")
    <h1 class="text-danger">Danh sách Slide</h1>

    @if(session('status'))
        <div class="alert alert-success">
            {{session('status')}}
    </div>
    @endif
    <div style="padding:20px">
        <a href='{{url("backend/slide/create")}}' class="btn btn-info">Thêm Slide</a>
    </div> 
    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Tên</th>
                                            <th>Ảnh</th>
                                            <th>Mô tả</th>
                                            <th>Hành động</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>ID</th>
                                            <th>Tên</th>
                                            <th>Ảnh</th>
                                            <th>Mô tả</th>
                                            <th>Hành động</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    @if(isset($slides) && !empty($slides))
                                     @foreach($slides as $slide)
                                        <tr>
                                            <td>{{$slide->id}}</td>
                                            <td>{{$slide->slide_name}}</td> 
                                            <td>
                                            @if ($slide->slide_image)
                                                <?php
                                                $slide->slide_image = str_replace("public/", "", $slide->slide_image);
                                                ?>
                                                <div>
                                                    <img src='{{ asset("storage/$slide->slide_image") }}' style="width: 200px; height: auto" />
                                                </div>
                                            @endif
                                            </td>
                                            <td>{{$slide->slide_desc}}</td>
                                            <td>
                                                <a href='{{url("backend/slide/edit/$slide->id")}}' class="btn btn-warning">Sửa</a>
                                                <a href='{{url("backend/slide/delete/$slide->id")}}'  class="btn btn-danger">Xóa</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                    @else
                                        Chưa có bản ghi nào
                                    @endif
                                    </tbody>
                                </table>
                     {{$slides->links()}}        
@endsection

@section('appendjs')

   <script type="text/javascript">

       $(document).ready(function () {

           $("#clear-search").on("click", function (e) {

               e.preventDefault();

               $("input[name='product_name']").val('');

               $("form[name='search_product']").trigger("submit");

           });

       });

       $("a.page-link").on("click", function (e) {

            e.preventDefault();

            var rel = $(this).attr("rel");

            if (rel == "next") {

                var page = $("body").find(".page-item.active > .page-link").eq(0).text();

                console.log(" : " + page);

                page = parseInt(page);

                page += 1;

            } else if(rel == "prev") {

                var page = $("body").find(".page-item.active > .page-link").eq(0).text();

                console.log(page);

                page = parseInt(page);

                page -= 1;

            } else {

                var page = $(this).text();

            }

            console.log(page);

            page = parseInt(page);

            $("input[name='page']").val(page);

            $("form[name='search_product']").trigger("submit");

            });

            $("#clear-search").on("click", function (e) {

                e.preventDefault();

                $("input[name='product_name']").val('');

                $("select[name='product_status']").val('');

                $("select[name='product_sort']").val('');

                $("form[name='search_category']").trigger("submit");

             });

   </script>

@endsection