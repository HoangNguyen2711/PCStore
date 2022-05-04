@extends('admin_layout')
@section('admin_content')
<h3>QUẢN LÝ CỬA HÀNG<h3>
	<?php
        $message = Session::get('message');
        if($message){
            echo $message;
            Session::put('message',null);
        }
    ?>
@endsection