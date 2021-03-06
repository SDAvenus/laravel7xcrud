@extends('site.layouts.book2')

@section('title', 'Trang Sản Phẩm')

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
                            <input type="text" name="keyword" placeholder="Bạn muốn tìm gì ?" class="text-info">
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

<!-- End SideBar -->

@include("site.rateproduct")

<section>
    <div class="container ">
        <div class="row">
             <div class="col-lg-12 col-md-12">
                 <div class="product__discount">
                    <div class="section-title">
                        <h2 style="padding-top:80px;" >TẤT CẢ SẢN PHẨM</h2>
                    </div>
                 </div>
             </div>
                    @if($products)
                        @foreach($products as $product)
                            <?php
                            $product->product_image = str_replace("public/", "", $product->product_image);
                            ?>
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg"  data-setbg='{{ asset("storage/$product->product_image") }}'>
                                        <ul class="product__item__pic__hover">
                                            <li><a  href="#" class="addtocart" data-id="{{ $product->id }}"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>

                                    <div class="product__item__text">
                                        <h6><a class="text-info" href='{{ url("/detail/$product->id") }}'>{{ $product->product_name }}</a></h6>
                                        <h5 >${{ $product->product_price }}</h5>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    @endif
                </div>
                {{ $products->links() }}
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
