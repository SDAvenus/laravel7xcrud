@extends('backend.layouts.main')

@section('title', 'Cập nhật admin')

@section('content')

   <h1>Cập nhật người dùng</h1>

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

   <form name="user" action='{{ url("/backend/user/update/$user->id") }}' method="post" enctype="multipart/form-data">

       @csrf

       <div class="form-group">

           <label for="name">Tên:</label>

           <input type="text" name="name" class="form-control" id="name" value="{{ $user->name }}">

       </div>

       <div class="form-group">

           <label for="email">Email:</label>

           <input type="email" name="email" class="form-control" id="email" value="{{ $user->email }}">

       </div>

      
       <div class="form-group">

           <label for="password">Mật khẩu mới:</label>

           <input type="text" name="password" class="form-control" id="password" value="">

       </div>

       <div class="form-group">

           <label for="password_confirmation">Nhập lại mật khẩu mới:</label>

           <input type="text" name="password_confirmation" class="form-control" id="password_confirmation" value="">

       </div>

       <button type="submit" class="btn btn-info">Cập nhật thông tin User</button>

   </form>
@endsection