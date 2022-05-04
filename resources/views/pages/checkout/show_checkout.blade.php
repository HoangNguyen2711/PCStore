@extends('layout')
@section('content')
	<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li class="active">Thanh toán giỏ hàng</li>
				</ol>
			</div>


			<div class="register-req">

                         <?php
                        $cusname = Session::get('customer_name');
                        if($cusname){
                        echo 'Chào mừng ' . $cusname;
                        }
                    ?>

				
			</div><!--/register-req-->

					<div class="col-sm-15 clearfix">
						<div class="bill-to">
							<p>Điền thông tin nhận hàng</p>
							<div class="form-one">
								<form action="{{URL::to('/save-checkout-customer')}}" method="POST">
									{{ csrf_field() }}
									<input type="text" name="shipping_name" placeholder="Họ và tên">
									<input type="text" name="shipping_phone" placeholder="Số điện thoại">
									<input type="text" name="shipping_address" placeholder="Địa chỉ">
									<input type="text" name="shipping_email" placeholder="Email">
									<textarea name="shipping_notes"  placeholder="Ghi chú" rows="16"></textarea>
									<input type="submit" value="Gửi" name="send_order" class="btn btn-primary btn-sm">
								</form>
							</div>

						</div>
					</div>
				
				</div>
			</div>


			

		</div>
	</section> <!--/#cart_items-->


@endsection