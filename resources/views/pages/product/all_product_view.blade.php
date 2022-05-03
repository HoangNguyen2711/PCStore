@extends('layout')
@section('content')

<div class="features_items"><!--features_items-->

    <h2 class="title text-center">Sản phẩm mới</h2>
    @foreach($all_product as $key => $product)
    <div class="col-sm-4">
        <div class="product-image-wrapper">
        <a href="{{URL::to('/chi-tiet-san-pham/'.$product->product_id)}}">
            <div class="single-products">
                <div class="productinfo text-center">
                    <img src="{{URL::to('public/uploads/product/'.$product->product_image)}}" alt="" />
                    <h2>{{number_format($product->product_price).' VND'}}</h2>
                    <p>{{$product->product_name}}</p>

                </div>

            </div>

        </div>
    </div>
    @endforeach
</div>

@endsection