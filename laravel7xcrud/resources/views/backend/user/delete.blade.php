@extends('backend.layouts.main')

@section('title', 'Xóa user')

@section('content')

   <h1>Xóa user</h1>

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
   <form name="user" action='{{ url("/backend/user/destroy/$user->id") }}' method="post">

       @csrf

       <div class="form-group">

           <label for="id">ID</label>

           <p>{{ $user->id }}</p>

       </div>

       <div class="form-group">

           <label for="name">Tên</label>

           <p>{{ $user->name }}</p>

       </div>

       <div class="form-group">

           <label for="email">Email</label>

           <p>{{ $user->email }}</p>

       </div>

       <button type="submit" class="btn btn-danger">Xác nhận xóa!</button>

   </form>

@endsection