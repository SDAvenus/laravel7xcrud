@extends('site.layouts.book2')

@section('title', 'Giới Thiệu')

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

<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-xs-12">
                <div class="title_head margin-top-20 margin-bottom-20 text-center">
                    <h2 class="title_center_page">
                        <span class="text-danger">GIỚI THIỆU</span>
                    </h2>
                </div>
                <div class="content_page rte margin-bottom-60">
                    <p class="text-dark">
                        <strong>ĐÔI NÉT VỀ FRESHFOOD</strong><br/>
                        Trải qua hơn 8 năm hình thành và phát triển Thực Phẩm Sạch FreshFood đã có những bước phát triển không ngừng trong việc cung cấp các sản phẩm thực phẩm sạch nhập khẩu đến tận tay người tiêu dùng với các nhóm sản phẩm chính:<br />
                            -&nbsp;&nbsp; &nbsp;Rau Củ<br />
                            -&nbsp;&nbsp; &nbsp;Gạo<br />
                            -&nbsp;&nbsp; &nbsp;Trái Cây<br />
                            -&nbsp;&nbsp; &nbsp;Cà Phê&nbsp;<br />
                            -&nbsp;&nbsp; &nbsp;Hạt&nbsp;<br />
                            Với cam kết chỉ phân phối những hàng hóa được cung cấp từ những nhà sản xuất có uy tín và đã được cơ quan y tế có thẩm quyền cấp chứng nhận và đảm bảo vệ sinh an toàn thực phẩm có đủ quyền cung cấp thực phẩm sạch, các loại nông sản là các đặc sản từ mọi miền trên toàn quốc, các thực phẩm sử dụng hàng ngày, chúng tôi luôn chủ động trong việc kiểm soát chất lượng đầu vào và đầu ra thực phẩm một cách toàn diện nhất nhằm đem đến tay người tiêu dùng sản phẩm chất lượng tốt nhất.&nbsp;<br />
                          
                            <strong>ĐỊNH HƯỚNG PHÁT TRIỂN</strong><br />
                            •&nbsp;&nbsp; &nbsp;Phát huy và nâng cao thế mạnh sẵn có của công ty về quản lý, sản xuất,…lên một tầm cao mới để đáp ứng với những nhu cầu ngày càng cao của khách hàng cũng như để sẵn sàng góp phần nâng cao đời sống của người dân.&nbsp;<br />
                            •&nbsp;&nbsp; &nbsp;Giữ vững và ngày càng tăng tốc độ phát triển trên mọi chỉ tiêu: doanh số, thị phần, nhân lực, giá trị thương hiệu, chất lượng sản phẩm, số lượng sản phẩm&nbsp;<br />
                            •&nbsp;&nbsp; &nbsp;Phát huy và nâng cao thế mạnh sẵn có của công ty về quản lý, sản xuất,…lên một tầm cao mới để đáp ứng với những nhu cầu ngày càng cao của khách hàng cũng như để sẵn sàng góp phần nâng cao đời sống của người dân.&nbsp;<br />
                            Với mong muốn được phục vụ các khách hàng ngày càng chu đáo hơn, chúng tôi luôn sẵn sàng tiếp nhận và biết ơn mọi sự góp ý của khách hàng.&nbsp;</p>

                            <strong>TRIẾT LÝ CỦA CHÚNG TÔI</strong><br />
                            •&nbsp;&nbsp; &nbsp; Sức khỏe khách hàng luôn được đặt lên hàng đầu. &nbsp;<br />
                            •&nbsp;&nbsp; &nbsp;Khách hàng là giá trị cơ bản nhất của công ty để tồn tại và phát triển bền vững.&nbsp;<br />
                            •&nbsp;&nbsp; &nbsp;Mang lại cho khách hàng những món ăn bỗ dưỡng nhất, đảm bảo vệ sinh an toàn thực phẩm cao nhất với giá thành tốt nhất và một dịch vụ chuyên nghiệp nhất.&nbsp;<br />
                            <br>
                            <strong>CAM KẾT CỦA CHÚNG TÔI</strong><br/>
                             Chúng tôi cam kết 100% các sản phẩm có nguồn gốc xuất xứ rõ ràng, sạch, an toàn và đảm bảo chất lượng ngon nhất giao đến tận tay người tiêu dùng, để san sẻ sự vất vả của các mẹ, các chị&nbsp;<br />
                     </p>
				</div>
			</div>
		</div>
	</div>
</section>


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
