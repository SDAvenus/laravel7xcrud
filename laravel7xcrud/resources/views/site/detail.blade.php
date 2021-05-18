@extends('site.layouts.book')

@section('title', 'Chi Tiết Sản Phẩm')

@section('content')

    <!-- Hero Section Begin -->
    <section class="hero hero-normal">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="hero__categories">
                    <div class="hero__categories__all">
                        <i class="fa fa-bars"></i>
                        <span>Danh mục sản phẩm</span>
                    </div>
                    <ul style="display: none">
                        @if($categories)
                            @foreach($categories as $category)
                                <li><a class="text-primary" style="font-size:18px" href='{{ url("/category/$category->id") }}'>{{ $category->name }}</a></li>
                            @endforeach
                        @endif
                    </ul>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="hero__search">
                    <div class="hero__search__form">
                        <form name="search" method="get" action='{{ url("/search") }}'>
                            <input type="text" name="keyword" placeholder="Bạn muốn tìm gì ?" class="text-primary">
                            <button type="submit" class="site-btn">TÌM KIẾM</button>
                        </form>
                    </div>
                    <div class="hero__search__phone">
                        <div class="hero__search__phone__icon">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="hero__search__phone__text">
                            <h5 class="text-danger">0123.456.789</h5>
                            <span class="text-danger">Hỗ trợ 24/7</span>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>
    <!-- Hero Section End -->

    <!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-xs-12">
                @include("site.slide")
            </div>
        </div>
    </div>
</section>
    <!-- Breadcrumb Section End -->

    <!-- Product Details Section Begin -->
    <div class="container ">
    <div class="row">
      <div class="col-lg-12 my-4">
        <nav aria-label="breadcrumb">
          <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/')}}" class="text-success">Trang Chủ</a></li>
            <li class="breadcrumb-item"><a href="{{url('/product/$product->$id')}}" class="text-success">Sản phẩm</a></li>
            <li aria-current="page" class="breadcrumb-item active"><a href="{{url('/detail/$product->id')}}">{{$product->product_name}}</a></li>
          </ul>
        </nav>
      </div>

      <div class="col-lg-9">
      	<div class="row">
      		<div class="col-md-6">
                <?php
                    $product->product_image = str_replace("public/", "", $product->product_image);
                ?>
      			<img class="d-block w-100" src='{{ asset("storage/$product->product_image") }}' alt="Sample">
      		</div>
      		<div class="col-md-6">
      		  <div class="box">
                <h2 class="text-primary">{{$product->product_name}}</h2>
                <h3>Giá bán </h3>
                <h4 class="price text-danger">{{$product->product_price}}</h4>
                <h3>Tình trạng</h3>
                 @if($product->product_status == 1)
                    <p>Còn hàng</p>
                 @else
                    <p>Hết hàng</p>
                @endif
                <p class="text-center buttons"><a href="{{url('/cart')}}" class="addtocart btn btn-primary" data-id="{{ $product->id }}"><i class="fa fa-shopping-cart"></i> Add to cart </a></p>   
            </div>
          </div>
          <div class="box col-md-8" >
            <p></p>
            <h4 style="font-weight: bold;">Thông tin sản phẩm:</h4>
             <p>Đã được chứng nhận và đảm bảo vệ sinh an toàn thực phẩm có đủ quyền cung cấp thực phẩm sạch, các loại nông sản là các đặc sản từ mọi miền trên toàn quốc</p>
          </div>
          <div class="box col-md-4">
           	<h3 class="text-success">Tồn Kho</h3>
           	<h4 class="text-danger" >Định Lượng :<span style="font-weight: bold;">{{$product->product_quantity}} KG</span> </h4>
          </div>
        </div>
      </div>
    </div>
  </div>

<!-- alert -->
  <div id="aftercart" class="modal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Thông báo giỏ hàng</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>Thêm sản phẩm vào giỏ hàng thành công! Vui lòng
                    chọn hành động để tiếp tục</p>

                <a href='{{ url("/cart") }}' class="btn btn-success">Đến trang giỏ hàng</a>

                <a href='{{ url("/payment") }}' class="btn btn-info">Đến trang thanh toán</a>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Tiếp tục mua sắm</button>
            </div>
        </div>
    </div>
   
</div>

  @endsection

  @section("appentjs")
    <script>

        $(document).ready(function () {

            $(".addtocart").on("click", function (e) {
                e.preventDefault();

                var id = $(this).data("id");
                id = parseInt(id);

                var quantity = 1;


                if (id > 0) {
                    $.ajax({
                        method: "POST",
                        url: "{{ url('/cart/add') }}",
                        data: { id: id,quantity: quantity,_token: "{{ csrf_token() }}" }
                    }).done(function( product ) {

                        $('#aftercart').modal();
                    });
                } else {
                    alert("có lỗi hệ thống vui lòng liên hệ admin");
                }
                console.log(id);
            });
        });
    </script>
@endsection


