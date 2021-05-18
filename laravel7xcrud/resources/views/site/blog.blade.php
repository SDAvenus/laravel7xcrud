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
                            <input type="text" name="keyword" placeholder="Bạn muốn tìm gì ?">
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

<div class="container">
    <div class="row">
        <div class="col">
            <section class="breadcrumb-section set-bg" data-setbg="{{asset('fe-assets/img/breadcrumb.jpg')}}">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <div class="breadcrumb__text">
                                <h2>LIÊN HỆ</h2>
                                <div class="breadcrumb__option">
                                    <a href="{{url('/')}}">Home</a>
                                    <span>Contact Us</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
&nbsp; 
<div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-xs-12">
                <div class="title_head margin-top-20 margin-bottom-20 text-center">
                    <h2 class="title_center_page">
                        <span class="text-danger">TIN TỨC</span>
                    </h2>
                </div>
            </div>
        </div>

        <div class="row">
		    <div class="col-sm-12 col-md-12 col-xs-12">
					<h3 class="text-dark">Rau xanh tăng giá mạnh vì trời mưa, người dân nội thành lao đao</h3>
					<div class="article-details">
						<div class="article-content" itemprop="description">
							<div class="rte">
								<p data-field="sapo">Khoảng gần một tuần nay, do ảnh hưởng của những cơn mưa lớn kéo dài liên tiếp nên nguồn cung rau xanh cho các chợ bắt đầu khan hiếm, giá tăng mạnh, thậm chí nhiều loại giá tăng gần gấp đôi.</p>
                                <p>Khảo sát của người viết tại một số chợ đầu mối, chợ truyền thống trên địa bàn Hà Nội như chợ Đình Công, chợ Cầu Giấy, Phùng Khoang, chợ Hôm, Chợ Dịch Vọng, chợ Nhổn… giá các loại rau, củ đã tăng phổ biến 20 -30% so với 1-2 tuần trước.</p>
                                <p style="text-align: center;"><img data-thumb="large" original-height="400" original-width="700" src="//bizweb.dktcdn.net/thumb/large/100/263/497/files/fruits-and-vegetables.jpg?v=1507794219921" /></p>
                                <p>Cụ thể, tại chợ Dịch Vọng, rau dền, mồng tơi giá 8.000 đồng/mớ, tăng 2.000 đồng/mớ; rau muống tăng 3000 đồng/mớ lên 10.000 đồng/mớ; rau ngót cũng tăng 1.000 đồng/mớ lên 7.000 đồng/mớ; cải xanh tăng từ 5.000 đồng lên 8.000 đồng/mớ; bắp cải tăng 3.000 đồng/kg lên 15.000 đồng/kg; cải thảo tăng 5.000 đồng/kg lên 16.000 đồng/kg, mướp đắng tăng 10.000 đồng/kg lên 16.000 đồng/kg. Hành lá tăng giá mạnh nhất lên 60.000/kg.</p>
                                <p>Một số loại củ quả như cà chua còn có giá tăng gấp đôi, từ 20.000 đồng/kg lên 40.000 đồng/kg, cà rốt có giá từ 25.000 – 30.000 đồng/kg; su hào 8.000 đồng /củ…so với trước đợt bão.</p>
                                <p>Chị Nguyễn Thị Thanh, tiểu thương bán rau ở chợ Dịch Vọng cho biết, giá rau củ tặng mạnh do thời tiết mưa to gây ngập úng khiến nguồn cung rau củ giảm. Bên cạnh đó, đây là thời điểm cuối mùa vụ của một số loại rau củ như các loại rau muống, mồng tơi, mướp ngọt…cũng khiến cho nguồn cung ứng rau thiếu hụt.</p>
                                <p>“Như hôm nay ra chợ đầu mối nhập rau mà mỗi loại chỉ nhập được 5-10kg, bán đến tầm 8 giờ sáng rau ở sạp đã gần hết. Đến chiều, tôi đang không biết lấy hàng đâu bán cho khách”, chị Thanh chia sẻ.</p>
                                <p>Tại nhiều vùng trồng rau ngoại thành Hà Nội như Vân Nội, Song Phương, Tây Tựu... do mưa lớn kéo dài nên rau ít nhiều bị ngập úng, hư hại.</p>
                                <p>Bà Trần Thị Mai, tại xã Tây Tựu –Từ Liêm chuyên trồng sản xuất rau xanh bán buôn cho các chợ đầu mối cho biết, nhà bà trồng 6 sào rau xanh đủ các nhưng mấy ngày gần đây do mưa to ảnh hưởng nên làm cho rau trong vườn phát triển chậm và dập nát hết các luống rau mới gieo trồng.</p>
								</div>
							</div>
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
			