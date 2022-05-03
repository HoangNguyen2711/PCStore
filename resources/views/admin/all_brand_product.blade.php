@extends('admin_layout')
@section('admin_content')
        <div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Liệt kê thương hiệu
    </div>

    <div class="table-responsive">
                            <?php
                            $message = Session::get('message');
                            if($message){
                                echo $message;
                                Session::put('message',null);
                            }
                                ?>
      <table class="table table-striped b-t b-light">
        <thead>
          <tr>

            <th>Tên thương hiệu</th>
            <th>Hiển thị</th>

            <th style="width:30px;"></th>
          </tr>
        </thead>
        <tbody>
          @foreach($all_brand_product as $key => $brand_pro)

            <td>{{ $brand_pro -> brand_name }}</td>
            <td><span class="text-ellipsis">
              <?php
              if($brand_pro->brand_status==0) {
                 ?>
               <a href="{{URL::to('/unactive-brand-product/'.$brand_pro->brand_id)}}"><span class="fa-thumb-styling fa fa-thumbs-down"></span>
               </a>
              <?php
              }
              else{
                ?>
                <a href="{{URL::to('/active-brand-product/'.$brand_pro->brand_id)}}"><span class="fa-thum-styling fa fa-thumbs-up"></span>
                </a>
              <?php
              }
              ?>
             
          </span></td>

            <td>
              <a href="{{URL::to('/edit-brand-product/'.$brand_pro->brand_id)}}" class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-pencil-square-o text-success text-active"></i></a>
              <a onclick="return confirm('Bạn có chắc không?')" href="{{URL::to('/delete-brand-product/'.$brand_pro->brand_id)}}" class="active" ui-toggle-class="">
                <i class="fa fa-times text-danger text"></i></a>

            </td>
          </tr>
          @endforeach
        </tbody>
      </table>
    </div>
    <footer class="panel-footer">

    </footer>
  </div>
</div>


@endsection
