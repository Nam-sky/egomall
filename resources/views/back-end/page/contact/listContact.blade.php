@extends('back-end.master')
@section('title')
    Danh sách contact
@endsection
@section('main')
    <div class="container pt-5">
        <h2 class="text-center font-weight-bold text-danger border-bottom mb-5">Danh sách contact</h2>
        <div class="col-sm-12 mb-2">
            <!-- <form action="{{route('contact.index')}}" method="get">
                <div class="d-flex">
                    <input class="form-control" id="search" name="search" type="text" placeholder="Tìm kiếm theo: Mã đơn hàng, Tên khách hàng hoặc Số điện thoại">
                    <button type="submit" class="btn btn-danger"><svg style="fill: #ffff;"  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 40 40" width="20" height="20"><path d="M37.613,36.293l-9.408-9.432a15.005,15.005,0,1,0-1.41,1.414L36.2,37.707A1,1,0,1,0,37.613,36.293ZM3.992,17A12.967,12.967,0,1,1,16.959,30,13,13,0,0,1,3.992,17Z"></path></svg></i></button>
                </div>
            </form> -->
        </div>
        <div class="table-responsive">
            <table class="table">
                <thead>
                <tr class="text-center">
                    <th scope="col">STT</th>
                    <th scope="col">Tên liên hệ</th>
                    <th scope="col">Số điện thoại</th>
                    <th scope="col">Email</th>
                    <th scope="col">Nội dung</th>
                    <th scope="col">Ngày liên hệ</th>
                    <th scope="col">Hành động</th>
                </tr>
                </thead>
                <tbody>
                <?php $stt = 1; ?>
                @foreach($contacts as $contact)
                    <tr class="text-center">
                        <th scope="row">{{$stt++}}</th>
                        <td>{{$contact->name}}</td>
                        <td>{{$contact->phone}}</td>
                        <td>{{$contact->email}}</td>
                        <td>{{$contact->message}}</td>
                        <td>{{$contact->created_at}}</td>
                        <td>
                           <!-- <a class="btn btn-danger" onclick="return confirm('Bạn có chắc chắn muốn xóa bài viết ?');" onclick="remove({{$contact->id}})" href="admin/destroy-contact/{{$contact->id}}">Xóa</a> -->
                           <button class="btn btn-danger" onclick="remove({{$contact->id}})">Xóa</button>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
        <div aria-label="Page navigation">
            {{$contacts->links()}}
        </div>
    </div>
    @if (session('message'))
        <script>
            $(document).ready(function(){
                swal("Thành công!", "{{session('message')}}", "success");
            });
        </script>
    @endif
    <script>
        function remove(id){
            $.ajax({
                type:'get',
                url: 'admin/destroy-contact',
                data: {
                    id : id,
                },
                success: function (data){
                    swal("Thành công!", 'data.success', "success");
                    setTimeout(function () { location.reload(true); }, 1000);
                }
            })
        }
    </script>
@endsection
