@extends("backend.layouts.main")

@section("title","Xóa sản phẩm")

@section("content")
    <h1>Xóa Slide</h1>
<form name="product" action='{{url("/backend/slide/destroy/$slide->id")}}' method="post">
@csrf
<div class="form-group">
    <label for="slide_name">ID </label>
    <p>{{$slide->id}}</p>
</div>

<div class="form-group">
    <label for="slide_name">Tên</label>
    <p>{{$slide->slide_name}}</p>
</div>

<button type="submit" class="btn btn-danger">Xác nhận xóa Slide</button>
</form>
@endsection