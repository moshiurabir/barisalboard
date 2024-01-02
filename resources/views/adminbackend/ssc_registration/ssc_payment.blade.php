@extends('admin.admin_master')
@section('admin')


@if(Session::has('success'))
<div class="alert alert-success alert-dismissible alert-primary fade show" role="alert">
<strong>{{ Session::get('success') }}</strong>
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
@endif
<!-- <h3> Login Admin Name : {{ Auth::guard('admin')->user()->name }}</h3>
    <h3> Login Admin Email : {{ Auth::guard('admin')->user()->email }}</h3>-->
        <!-- Content -->
        <h4 class="py-3 mb-4"><span class="text-muted fw-light">Tables /</span> Basic Tables</h4>

       <!-- Striped Rows -->
       <div class="card">
        <div class="demo-vertical-spacing card-header">

          <a href="/admin/sscpayment/create" class="btn btn-primary float-end" role="button" aria-pressed="true">Add New Payment</a>
        <h5 class="card-header" >SSC eSIF Payment board </h5>




          <table class="table table-striped">
            <thead>
              <tr>
                <th>Project</th>
                <th>Client</th>
                <th>Users</th>
                <th>Status</th>
                <th>Actions</th>
              </tr>
            </thead>
            <tbody class="table-border-bottom-0">
              <tr>
                <td>
                  <i class="fab fa-angular fa-lg text-danger me-3"></i>
                  <span class="fw-medium">Angular Project</span>
                </td>
                <td>Albert Cook</td>
                <td>
                  <ul class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
                    <li
                      data-bs-toggle="tooltip"
                      data-popup="tooltip-custom"
                      data-bs-placement="top"
                      class="avatar avatar-xs pull-up"
                      title="Lilian Fuller">
                      <img src="../assets/img/avatars/5.png" alt="Avatar" class="rounded-circle" />
                    </li>
                    <li
                      data-bs-toggle="tooltip"
                      data-popup="tooltip-custom"
                      data-bs-placement="top"
                      class="avatar avatar-xs pull-up"
                      title="Sophia Wilkerson">
                      <img src="../assets/img/avatars/6.png" alt="Avatar" class="rounded-circle" />
                    </li>
                    <li
                      data-bs-toggle="tooltip"
                      data-popup="tooltip-custom"
                      data-bs-placement="top"
                      class="avatar avatar-xs pull-up"
                      title="Christina Parker">
                      <img src="../assets/img/avatars/7.png" alt="Avatar" class="rounded-circle" />
                    </li>
                  </ul>
                </td>
                <td><span class="badge bg-label-primary me-1">Active</span></td>
                <td>
                  <div class="dropdown">
                    <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                      <i class="bx bx-dots-vertical-rounded"></i>
                    </button>
                    <div class="dropdown-menu">
                      <a class="dropdown-item" href="javascript:void(0);"
                        ><i class="bx bx-edit-alt me-1"></i> Edit</a
                      >
                      <a class="dropdown-item" href="javascript:void(0);"
                        ><i class="bx bx-trash me-1"></i> Delete</a
                      >
                    </div>
                  </div>
                </td>
              </tr>

            </tbody>
          </table>




       </div>
       <div class="demo-inline-spacing">
        <nav aria-label="Page navigation">
          <ul class="pagination justify-content-end">
            <li class="page-item prev">
              <a class="page-link" href="javascript:void(0);"
                ><i class="tf-icon bx bx-chevrons-left"></i
              ></a>
            </li>
            <li class="page-item active">
              <a class="page-link" href="javascript:void(0);">1</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="javascript:void(0);">2</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="javascript:void(0);">3</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="javascript:void(0);">4</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="javascript:void(0);">5</a>
            </li>
            <li class="page-item next">
              <a class="page-link" href="javascript:void(0);"
                ><i class="tf-icon bx bx-chevrons-right"></i
              ></a>
            </li>
          </ul>
        </nav>
      </div>



      </div>
      <!--/ Striped Rows -->


        <!-- / Content -->


@endsection
