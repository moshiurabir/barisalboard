@extends('accountscp.admin_master')
@section('accountscp')

<div class="layout-container">
    <!-- Menu -->

    @include('accountscp.menu')
    <!-- / Menu -->

    <!-- Layout container -->
    <div class="layout-page">
      <!-- Navbar -->
      @include('accountscp.top_navbar')


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

        @include('accountscp.content_dashboard')
        <!-- / Content -->

        <!-- Footer -->
       @include('accountscp.admin_footer')
        <!-- / Footer -->

        <div class="content-backdrop fade"></div>
      </div>
      <!-- Content wrapper -->
    </div>
    <!-- / Layout page -->
  </div>
@endsection
