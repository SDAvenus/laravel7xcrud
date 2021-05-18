@extends("backend.layouts.main")

@section("title","Thêm Slide")

@section("content")
<h1>Thêm Slide</h1>
@if($errors->any())
<div class="alert alert-danger">
    <ul>
        @foreach($errors->all() as $error)
            <li> {{$error}} </li>
        @endforeach
    </ul>
</div>
@endif
<form name="product" action='{{url("backend/slide/store")}}' method="post"  enctype="multipart/form-data">
@csrf
    <div class="form-group">
        <label for="slide_name">Tên:</label>
        <input type="text" name="slide_name" class="form-control" id="slide_name" value="{{ old('slide_name', '') }}">
    </div>
  
    <div class="form-group">
        <label for="slide_image">Ảnh:</label>
        <input type="file" name="slide_image" class="form-control" id="slide_image">
    </div>

    <div class="form-group">
        <label for="slide_desc">Mô tả:</label>
        <textarea name="slide_desc" class="form-control" rows="10" id="slide_desc">{{ old('slide_desc', "") }}</textarea>
    </div>

    <button type="submit" class="btn btn-info">Thêm Slide</button>
</form>
@endsection

@section('appendjs')

<link rel="stylesheet" href='{{ asset("/asset/js/demo/bootstrap-datetimepicker.min.css") }}' />

<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.21.0/moment.min.js" type="text/javascript"></script>

<script src='{{ asset("/asset/js/demo/bootstrap-datetimepicker.min.js") }}'></script>

<script type="text/javascript">

   $(function () {

       $('#product_publish').datetimepicker({
            format:"YYYY-MM-DD HH:mm:ss",
            icons: {

                time: 'far fa-clock',

                date: 'far fa-calendar',

                up: 'fas fa-arrow-up',

                down: 'fas fa-arrow-down',

                previous: 'fas fa-chevron-left',

                next: 'fas fa-chevron-right',

                today: 'fas fa-calendar-check',

                clear: 'far fa-trash-alt',

                close: 'far fa-times-circle'

            }
       });

   });

</script>

<script src='{{ asset("/asset/js/tinymce/tinymce.min.js") }}'></script>
<script>

   tinymce.init({

       selector: '#product_desc'

   });

</script>
@endsection