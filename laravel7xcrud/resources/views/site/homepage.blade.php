@extends('site.layouts.book')

@section('title', 'Trang chủ')

@section('content')

<!-- Hero Section Begin -->
<section class="hero">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="hero__categories">
                    <div class="hero__categories__all">
                        <i class="fa fa-bars"></i>
                        <span>Danh mục sản phẩm</span>
                    </div>
                    <ul>
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
                            <input class="text-primary" type="text" name="keyword" placeholder="Bạn muốn tìm gì ?">
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
                <!-- Slide -->
                @include("site.slide")
                <!-- end slide -->
            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->
<!-- Categories Section Begin -->
<section class="categories">
    <div class="container">
        <div class="row">
            <div class="categories__slider owl-carousel">
                @if($categories)
                    @foreach($categories as $category)
                        <?php
                        $category->image = str_replace("public/", "", $category->image);
                        ?>
                        <div class="col-lg-3">
                            <div class="categories__item set-bg" data-setbg='{{ asset("storage/$category->image") }}'>
                                <h5><a class="text-success" href='{{ url("/category/$category->id") }}'>{{ $category->name }}</a></h5>
                            </div>
                        </div>
                    @endforeach
                @endif
            </div>
        </div>
    </div>
</section>
<!-- Categories Section End -->

<section class="featured spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="product__discount">
                    <div class="section-title">
                        <h2>SẢN PHẨM MỚI</h2>
                    </div>
                    <div class="row">
                        <div class="product__discount__slider owl-carousel">

                            @if($products)
                                @foreach($products as $pro)
                                    <?php
                                    $pro->product_image = str_replace("public/", "", $pro->product_image);
                                    ?>
                                    <div class="col-lg-4">
                                        <div class="product__discount__item">
                                            <div class="product__discount__item__pic set-bg"
                                                 data-setbg='{{ asset("storage/$pro->product_image") }}'>
                                                <div class="product__discount__percent">New</div>
                                                <ul class="product__item__pic__hover">
                                                    <li><a href="#" class="addtocart" data-id="{{ $pro->id }}"><i class="fa fa-shopping-cart"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="product__discount__item__text">
                                                
                                                <h5><a class="text-info" href='{{ url("/detail/$pro->id") }}'>{{ $pro->product_name }}</a></h5>
                                                <div class="product__item__price text-danger ">${{ $pro->product_price }} </div>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
   
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="section-title">
                    <h2>SẢN PHẨM NỔI BẬT</h2>
                </div>
                <div class="featured__controls">
                    <ul>
                        <li class="active text-info" data-filter="*">Tất cả</li>
                        @if($categories)
                            @foreach($categories as $category)
                           
                                    <li data-filter=".cat{{ $category->id }}" class="text-info">{{ $category->name }}</li>
                            @endforeach
                        @endif
                    </ul>
                </div>
                
            </div>
            
        </div>
      
        <div class="row featured__filter">

            @foreach($products as $product)
                <?php
                    $product->product_image = str_replace("public/", "", $product->product_image);
                ?>
            <div class="col-lg-3 col-md-4 col-sm-6 mix cat{{ $product->category_id }}">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg='{{ asset("storage/$product->product_image") }}'>
                   <ul class="featured__item__pic__hover">
                            <li><a href="#" class="addtocart" data-id="{{ $product->id }}"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href='{{ url("/detail/$product->id")}}' class="text-info">{{ $product->product_name }}</a></h6>
                        <h5>{{ $product->product_price }}</h5>
                    </div>
                </div>
            </div>
            @endforeach       
        </div>
     
    </div>
    
</section>

 <!-- Banner Begin -->
 <div class="banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="{{asset('fe-assets/img/banner/banner-1.jpg')}}" alt="">
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img  src="{{asset('fe-assets/img/banner/banner-2.jpg')}}" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
 <!-- Banner End -->

<!-- -->

<!-- Featured Section End -->

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
