@extends('admin_layout')
@section('admin_content')
<div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Thông tin người mua
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
            <th>Tên người đặt</th>
            <th>Số điện thoại</th>

            <th style="width:30px;"></th>
          </tr>
        </thead>
        <tbody>
        
          <tr>
    
            <td>{{$order_by_id->customer_name}}</td>
            <td>{{$order_by_id->customer_phone}}</td>



          </tr>
        
        </tbody>
      </table>
    </div>

  </div>
</div>

<br></br>

<div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Thông tin vận chuyển
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
            <th>Tên người nhận hàng</th>
            <th>Địa chỉ</th>
            <th>Số điện thoại</th>


            <th style="width:30px;"></th>
          </tr>
        </thead>
        <tbody>
         
           </tr>
            <td>{{$order_by_id->shipping_name}}</td>
            <td>{{$order_by_id->shipping_address}}</td>
            <td>{{$order_by_id->shipping_phone}}</td>



          </tr>
  
        </tbody>
      </table>
    </div>

  </div>
</div>

<br></br>

<div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Chi tiết đơn hàng
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

            <th>Tên sản phẩm</th>
            <th>Số lượng</th>
            <th>Địa chỉ</th>
            <th>Tổng tiền</th>

            <th style="width:30px;"></th>
          </tr>
        </thead>
        <tbody>
         
            
            <td>{{$order_by_id->product_name}}</td>
            <td>{{$order_by_id->product_sales_quantity}}</td>
            <td>{{$order_by_id->shipping_address}}</td>
            <td>{{$order_by_id->order_total}}</td>


          </tr>
  
        </tbody>
      </table>
    </div>
    <footer class="panel-footer">
      <div class="row">
        


      </div>
    </footer>
  </div>
</div>


@endsection
