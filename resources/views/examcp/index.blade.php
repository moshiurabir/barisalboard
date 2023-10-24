@extends('examcp.admin_master')
@section('examcp')

<div class="layout-container">
    <!-- Menu -->

    @include('examcp.menu')
    <!-- / Menu -->

    <!-- Layout container -->
    <div class="layout-page">
      <!-- Navbar -->
      @include('examcp.top_navbar')


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

        @include('examcp.content_dashboard')
        <!-- / Content -->

        <!-- Footer -->
       @include('examcp.admin_footer')
        <!-- / Footer -->

        <div class="content-backdrop fade"></div>
      </div>
      <!-- Content wrapper -->
    </div>
    <!-- / Layout page -->
  </div>
@endsection
