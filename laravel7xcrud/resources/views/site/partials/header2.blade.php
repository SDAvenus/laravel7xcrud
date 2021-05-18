<!-- Header Section Begin -->
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__left">
                        <ul>
                            <li class="text-info"><i class="fa fa-envelope"></i><a href="{{url('/')}}">FreshFood.com</a></li>
                            <li class="text-info"><i class="fa fa-envelope"></i><a href="{{url('/contact')}}">Địa Chỉ: Ngã 3 Đán-TP Thái Nguyên</a></li>
                            <li class="text-danger">Miễn phí giao hàng cho đơn từ 500.000 VND</li>
                            <li>
                                 <div class="humberger__menu__widget">
                                    <div class="header__top__right__language">
                                    <img src="{{asset('fe-assets/img/language.png')}}" alt="">
                                    <div>Tiếng Việt</div>
                                    <span class="arrow_carrot-down"></span>
                                    <ul>
                                        <li><a href="#">Spanis</a></li>
                                        <li><a href="#">English</a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
             
                @if(Auth::check())
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__right">
                        <span class="text-success fa fa-user">HELLO:</span><span class="text-danger"><b>{{Auth::user()->name}}</b></span> &nbsp;  &nbsp; 
                        <a href="{{url('/userlogout')}}" class="btn btn-success" >Đăng Xuất</a> 
                     </div>
                </div>
                @else
                  
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__right">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-pinterest-p"></i></a>
                        <li style="list-style:none">
                            <div class="humberger__menu__widget">
                                <div class="header__top__right__language">
                                    <img src="{{asset('fe-assets/img/icon.png')}}" alt="" width="24px" height="24px">
                                    <div class="text-primary">LOGIN</div>
                                    <span class="arrow_carrot-down"></span>
                                    <ul>
                                        <li><a href="{{url('/login')}}">User</a></li>
                                        <li><a href="{{url('/backend')}}">Admin</a></li>
                                    </ul>
                            </div>
                        </li>
                     </div>
                </div>
                @endif
            </div>
           
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-9">
                <nav class="navbar navbar-expand-sm navbar-dark">
                    <!-- Brand/logo -->
                    <a class="navbar-brand" href="{{url('/')}}">
                        <img src='{{asset("/fe-assets/img/logo1.png")}}' alt="logo" style="width:210px; height:120px">
                    </a>
                    <!-- Links -->
                    <ul class="navbar-nav">
                        <li class="nav-item">
                        <a class="nav-link" href="{{url('/')}}">TRANG CHỦ</a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link" href="{{url('/product/$product->id')}}">SẢN PHẨM</a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link" href="{{url('/intro')}}">GIỚI THIỆU</a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link" href="{{url('/blog')}}">TIN TỨC</a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link" href="{{url('/contact')}}">LIÊN HỆ</a>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3">
                <div class="header__cart">
                    <ul>
                        <li><a href="{{ url("/cart") }}"><i class="fa fa-shopping-bag"></i> <span>{{ $totalQttCart }}</span></a></li>
                    </ul>
                    <div class="header__cart__price">Tổng tiền: <span>$ {{ $totalPriceCart }}</span></div>
                </div>
            </div>
        </div>
        <div class="humberger__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
</header>
<!-- Header Section End -->
