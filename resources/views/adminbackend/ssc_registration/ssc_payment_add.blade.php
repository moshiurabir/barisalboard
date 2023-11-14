@extends('admin.admin_master')
@section('admin')



<!-- <h3> Login Admin Name : {{ Auth::guard('admin')->user()->name }}</h3>
    <h3> Login Admin Email : {{ Auth::guard('admin')->user()->email }}</h3>-->
        <!-- Content -->
        <h4 class="py-3 mb-4"><span class="text-muted fw-light">Tables /</span> Basic Tables</h4>



            <div class="col-xxl">
                <div class="card mb-4">
                  <div class="card-header d-flex align-items-center justify-content-between">
                    <h5 class="mb-0">Please Enter Number of Student You Want to Registration</h5>
                    <small class="text-muted float-end"> </small>
                  </div>
                  <div class="card-body">
                    <form>

                      <div class="row mb-3">
                        <label class="col-sm-2 col-form-label" for="basic-default-phone">Number of Student :</label>
                        <div class="col-sm-10">
                          <input
                            type="text"
                            id="basic-default-phone"
                            class="form-control phone-mask"
                            placeholder=""
                            aria-label=""
                            aria-describedby="basic-default-phone" />
                        </div>
                      </div>

                      <div class="row justify-content-end">
                        <div class="col-sm-10">
                          <button type="submit" class="btn btn-primary">Send</button>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>




      <!--/ Striped Rows -->


        <!-- / Content -->


@endsection
