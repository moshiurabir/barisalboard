@extends('boardcp.admin_master')
@section('boardcp')

<div class="layout-container">
    <!-- Menu -->

    @include('boardcp.menu')
    <!-- / Menu -->

    <!-- Layout container -->
    <div class="layout-page">
      <!-- Navbar -->
      @include('boardcp.top_navbar')


      <!-- / Navbar -->

      <!-- Content wrapper -->
      <div class="content-wrapper">

        @if(Session::has('error'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
       <strong>{{ Session::get('error') }}</strong>
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    @endif

        <!-- Content -->

        @include('boardcp.content_dashboard')
        <!-- / Content -->

        <!-- Footer -->
       @include('boardcp.admin_footer')
        <!-- / Footer -->

        <div class="content-backdrop fade"></div>
      </div>
      <!-- Content wrapper -->
    </div>
    <!-- / Layout page -->
  </div>
@endsection
