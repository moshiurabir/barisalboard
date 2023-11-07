@extends('admin.admin_master')
@section('admin')

<div class="layout-container">
    <!-- Menu -->

    @include('admin.menu')
    <!-- / Menu -->

    <!-- Layout container -->
    <div class="layout-page">
      <!-- Navbar -->
      @include('admin.top_navbar')


      <!-- / Navbar -->

      <!-- Content wrapper -->
      <div class="content-wrapper">

        @if(Session::has('error'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
       <strong>{{ Session::get('error') }}</strong>
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    @endif
<!-- <h3> Login Admin Name : {{ Auth::guard('admin')->user()->name }}</h3>
    <h3> Login Admin Email : {{ Auth::guard('admin')->user()->email }}</h3>-->
        <!-- Content -->

        @include('admin.content_dashboard')
        <!-- / Content -->

        <!-- Footer -->
       @include('admin.admin_footer')
        <!-- / Footer -->

        <div class="content-backdrop fade"></div>
      </div>
      <!-- Content wrapper -->
    </div>
    <!-- / Layout page -->
  </div>
@endsection
