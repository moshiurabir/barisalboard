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



        <!-- Content -->


dsvtsdtver




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
