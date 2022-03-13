@extends('admin_layout')
@section('admin_content')
<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Thêm sản phẩm
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <form role="form">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Tên sản phẩm</label>
                                    <input type="email" name="category_product_name" class="form-control" id="exampleInputEmail1" placeholder="Tên danh mục">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Mô tả sản phẩm</label>
                                    <textarea style="resize: none;" row="5" class="form-control" name="category_product_desc" id="exampleInputPassword1" placeholder="Mô tả sản phẩm"></textarea>
                                </div>
                                <div class="form-group">
                                <label for="exampleInputEmail1">Hiển thị</label>
                                    <select class="form-control input-sm m-bot15">
                                    <option>Ẩn</option>
                                    <option>Hiển thị</option>
                                    
                                    </select>
                                </div>
                                
                                <button type="submit" name="add_category_product" class="btn btn-info">Submit</button>
                            </form>
                            </div>

                        </div>
                    </section>

            </div>
@endsection
