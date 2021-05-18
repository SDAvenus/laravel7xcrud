@extends('backend.layouts.main')

@section('title', 'Liệt kê user')

@section('content')

   <h1>Liệt kê user</h1>

   @if (session('status'))

       <div class="alert alert-success">

           {{ session('status') }}

       </div>

   @endif

   @if ($errors->any())

       <div class="alert alert-danger">

           <ul>

               @foreach ($errors->all() as $error)

                   <li>{{ $error }}</li>

               @endforeach

           </ul>

       </div>

   @endif

   <div style="padding: 10px; border: 1px solid #4e73df; margin-bottom: 10px">

       <form name="search_user" method="get" action='{{ htmlspecialchars($_SERVER["REQUEST_URI"]) }}' class="form-inline">

           <input name="name" value="{{ $searchKeyword }}" class="form-control" style="width: 350px; margin-right: 20px" placeholder="Nhập tên người dùng bạn muốn tìm ..." autocomplete="off">

           <select name="sort" class="form-control" style="width: 150px; margin-right: 20px">

               <option value="">Sắp xếp</option>

               <option value="name_asc" {{ $sort == "name_asc" ? " selected" : "" }}>Tên tăng dần</option>

               <option value="name_desc" {{ $sort == "name_desc" ? " selected" : "" }}>Tên giảm dần</option>

           </select>

           <div style="padding: 10px 0">

               <input type="submit" name="search" class="btn btn-success" value="Lọc kết quả">

           </div>

           <div style="padding: 10px 0">

               <a href="#" id="clear-search" class="btn btn-warning">Clear filter</a>

           </div>

           <input type="hidden" name="page" value="1">

       </form>

   </div>


   {{ $user->links() }}

   @if (session('status'))

       <div class="alert alert-success">

           {{ session('status') }}

       </div>

   @endif

   <div style="padding: 20px">

       <a href='{{ url("/backend/user/create") }}' class="btn btn-info">Thêm người dùng</a>

   </div>

   <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">

       <thead>

       <tr>

           <th>Id</th>

           <th>tên</th>

           <th>email</th>

           <th>hành động</th>

       </tr>

       </thead>

       <tfoot>

       <tr>

           <th>Id</th>

           <th>tên</th>

           <th>email</th>

           <th>hành động</th>

       </tr>

       </tfoot>

       <tbody>

       @if(isset($user) && !empty($user))

           @foreach ($user as $us)

               <tr>

                   <td>{{ $us->id }}</td>

                   <td>{{ $us->name }}</td>

                   <td>{{ $us->email }}</td>

                   <td>

                       <a href='{{ url("/backend/user/edit/$us->id") }}' class="btn btn-warning">Sửa </a>

                       <a href='{{ url("/backend/user/delete/$us->id") }}' class="btn btn-danger">Xóa</a>

                   </td>

               </tr>

           @endforeach

       @else

           Chưa có bản ghi nào trong bảng này

       @endif

       </tbody>

   </table>

   {{ $user->links() }}

@endsection

@section('appendjs')

   <script type="text/javascript">

       $(document).ready(function () {

           $("#clear-search").on("click", function (e) {

               e.preventDefault();

               $("input[name='name']").val('');

               $("select[name='sort']").val('');

               $("form[name='search_admin']").trigger("submit");

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

               $("form[name='search_admin']").trigger("submit");

           });

       });

   </script>

@endsection