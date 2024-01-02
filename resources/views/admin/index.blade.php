@extends('admin.admin_master')
@section('admin')




    @if(Session::has('error'))
    <div class="alert alert-success alert-dismissible alert-primary fade show" role="alert">
    <strong>{{ Session::get('error') }}</strong>
      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    @endif



<!-- <h3> Login Admin Name : {{ Auth::guard('admin')->user()->name }}</h3>
    <h3> Login Admin Email : {{ Auth::guard('admin')->user()->email }}</h3>-->
        <!-- Content -->

        @include('admin.content_dashboard')
        <!-- / Content -->


@endsection
