@extends('front-end.master')
@section('title')
    Gửi liên hệ
@endsection
@section('main')
    <h2 class="text-center font-weight-bold p-4">Liên hệ với chúng tôi</h2>
    <hr>
    <div class="container">
        <form method="post" data-url="{{route('contact.store')}}" id="form_contact">
            @csrf
            <div class="form-group">
                <label for="name">Họ & tên:</label>
                <input type="text" class="form-control" id="name" placeholder="Họ và tên của bạn" name="name" required required>
            </div>
            <div class="row">
                <div class="form-group col-sm-6">
                    <label for="email">Email:</label>
                    <input type="text" class="form-control" id="email" placeholder="Email của bạn" name="email" required>
                </div>
                <div class="form-group col-sm-6">
                    <label for="phone">Phone:</label>
                    <input type="text" class="form-control" id="phone" placeholder="Số điện thoại của bạn" name="phone" required>
                </div>
            </div>
            <div class="form-group">
                <label for="message">Nội dung:</label>
                <textarea class="form-control" rows="5" name="message" id="message" placeholder="Nội dung bạn muốn gửi"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Gửi liên hệ</button>
        </form>
    </div>
    <script>
     $(document).ready(function(){
        $("#form_contact").submit(function( event ) {
            var data = $("#form_contact").serialize();
            var url = $(this).attr('data-url');
            event.preventDefault();
            $.ajax({
                type:'post',
                url: url,
                data: data,
                success: function (result){
                    swal("Thành công!", result.success, "success");
                    $("#form_contact")[0].reset()
                }
            })
        });
    });
    </script>
@endsection
