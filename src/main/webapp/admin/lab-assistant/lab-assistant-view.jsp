<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>LAP APPOINTMENT SYSTEM</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../../vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../../vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="../../vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="../../vendors/select2/select2.min.css">
    <link rel="stylesheet" href="../../vendors/select2-bootstrap-theme/select2-bootstrap.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="../../css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="../../images/favicon.png" />
  </head>
  <body>
    <div class="container-scroller">
      <!-- partial:../../partials/_navbar.jsp -->
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:../../partials/_sidebar.jsp -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item nav-category">Main</li>
            <li class="nav-item">
              <a class="nav-link" href="../index.jsp">
                <span class="icon-bg"><i class="mdi mdi-cube menu-icon"></i></span>
                <span class="menu-title">Dashboard</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#ui-doctor" aria-expanded="false" aria-controls="ui-doctor">
                <span class="icon-bg"><i class="mdi mdi-doctor menu-icon"></i></span>
                <span class="menu-title">Doctors</span>
                <i class="menu-arrow"></i>
              </a>
              <div class="collapse" id="ui-doctor">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="../../admin/doctor/doctor-view.jsp">View Doctors</a></li>
                  
                  </ul>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#ui-lab-assistant" aria-expanded="false" aria-controls="ui-lab-assistant">
                <span class="icon-bg"><i class="mdi mdi-microscope menu-icon"></i></span>
                <span class="menu-title">Lab Assistants</span>
                <i class="menu-arrow"></i>
              </a>
              <div class="collapse" id="ui-lab-assistant">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="../../admin/lab-assistant/lab-assistant-view.jsp">View Lab Assistants</a></li>
                 
                </ul>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#ui-lab-test" aria-expanded="false" aria-controls="ui-lab-test">
                <span class="icon-bg"><i class="mdi mdi-test-tube menu-icon"></i></span>
                <span class="menu-title">Lab Tests</span>
                <i class="menu-arrow"></i>
              </a>
              <div class="collapse" id="ui-lab-test">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="../../admin/lab-test/lab-test-register-view.jsp">Test Register</a></li>
                  <li class="nav-item"> <a class="nav-link" href="../../admin/lab-test/lab-test-type-view.jsp">Test Type</a></li>
                  <li class="nav-item"> <a class="nav-link" href="../../admin/lab-test/lab-test-result-view.jsp">Test Result</a></li>
                </ul>
              </div>
            </li>

            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#ui-patient" aria-expanded="false" aria-controls="ui-patient">
                <span class="icon-bg"><i class="mdi mdi-account menu-icon"></i></span>
                <span class="menu-title">Patients</span>
                <i class="menu-arrow"></i>
              </a>
              <div class="collapse" id="ui-patient">
                <ul class="nav flex-column sub-menu">           
                  <li class="nav-item"> <a class="nav-link" href="../../admin/patient/patient-view.jsp">View Patient</a></li> 
                </ul>
              </div>
            </li>
          </ul>
        </nav>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:../../partials/_sidebar.jsp -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item nav-category">Main</li>
            <li class="nav-item">
              <a class="nav-link" href="../index.jsp">
                <span class="icon-bg"><i class="mdi mdi-cube menu-icon"></i></span>
                <span class="menu-title">Dashboard</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#ui-doctor" aria-expanded="false" aria-controls="ui-doctor">
                <span class="icon-bg"><i class="mdi mdi-doctor menu-icon"></i></span>
                <span class="menu-title">Doctors</span>
                <i class="menu-arrow"></i>
              </a>
              <div class="collapse" id="ui-doctor">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="../../admin/doctor/doctor-view.jsp">View Doctors</a></li>
                  
                  </ul>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#ui-lab-assistant" aria-expanded="false" aria-controls="ui-lab-assistant">
                <span class="icon-bg"><i class="mdi mdi-microscope menu-icon"></i></span>
                <span class="menu-title">Lab Assistants</span>
                <i class="menu-arrow"></i>
              </a>
              <div class="collapse" id="ui-lab-assistant">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="../../admin/lab-assistant/lab-assistant-view.jsp">View Lab Assistants</a></li>
                 
                </ul>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#ui-lab-test" aria-expanded="false" aria-controls="ui-lab-test">
                <span class="icon-bg"><i class="mdi mdi-test-tube menu-icon"></i></span>
                <span class="menu-title">Lab Tests</span>
                <i class="menu-arrow"></i>
              </a>
              <div class="collapse" id="ui-lab-test">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="../../admin/lab-test/lab-test-register-view.jsp">Test Register</a></li>
                  <li class="nav-item"> <a class="nav-link" href="../../admin/lab-test/lab-test-type-view.jsp">Test Type</a></li>
                  <li class="nav-item"> <a class="nav-link" href="../../admin/lab-test/lab-test-result-view.jsp">Test Result</a></li>
                </ul>
              </div>
            </li>

            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#ui-patient" aria-expanded="false" aria-controls="ui-patient">
                <span class="icon-bg"><i class="mdi mdi-account menu-icon"></i></span>
                <span class="menu-title">Patients</span>
                <i class="menu-arrow"></i>
              </a>
              <div class="collapse" id="ui-patient">
                <ul class="nav flex-column sub-menu">           
                  <li class="nav-item"> <a class="nav-link" href="../../admin/patient/patient-view.jsp">View Patient</a></li> 
                </ul>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#ui-lab-assistant" aria-expanded="false" aria-controls="ui-lab-assistant">
                <span class="icon-bg"><i class="mdi mdi-account-check menu-icon"></i></span>
                <span class="menu-title">Test Booking</span>
                <i class="menu-arrow"></i>
              </a>
              <div class="collapse" id="ui-lab-assistant">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="../../admin/booking/test-booking-view.jsp">View Test Booking</a></li>
                 
                </ul>
              </div>
            </li>
          </ul>
        </nav>
        <!-- partial -->
        <div class="main-panel">
            <div class="content-wrapper">
                <div class="page-header">
                  <h3 class="page-title"> Lab Assistants </h3>
                  <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item" style="font-size: 30px;"><a href="lab-assistant-create.jsp"><i class="mdi mdi-account-plus"></i></a></li>

                    
                    </ol>
                  </nav>
                </div>
                <div class="row">
              
                  <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                      <div class="card-body">
                        <!-- <h4 class="card-title">Striped Table</h4>
                        <p class="card-description"> Add class <code>.table-striped</code> -->
                        </p>
                        <table class="table table-striped">
                          <thead>
                            <tr>
                              <th>#</th>
                                        <th>Name</th>
                                        <th>Email Address</th>
                                        <th>NIC</th>
                                        <th>Actions</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <th scope="row">1</th>
                                        
                                        <td>Jathaf</td>
                                        <td>jhon@email.com</td>
                                        <td>200023100010</td>
                                        
                              <td>
                                <a onclick="return confirm('Do you want to edit this')"
                                href="">
                                <i class="mdi mdi-pencil text-success"
                                    style="font-size: 24px;"></i>
                            </a>
      
      
                            <a onclick="return confirm('Are You Sure To Delete This')"
                                href="">
                                <i class="mdi mdi-delete text-danger"
                            style="font-size: 24px;"></i>
                            </a>
                              </td>
                            </tr>
                            <tr>
                              <th scope="row">1</th>
                                        
                              <td>Jathaf</td>
                              <td>jhon@email.com</td>
                              <td>200023100010</td>
                              <td>
                                <a onclick="return confirm('Do you want to edit this')"
                                href="">
                                <i class="mdi mdi-pencil text-success"
                                    style="font-size: 24px;"></i>
                            </a>
      
      
                            <a onclick="return confirm('Are You Sure To Delete This')"
                                href="">
                                <i class="mdi mdi-delete text-danger"
                            style="font-size: 24px;"></i>
                            </a>
                              </td>
                            </tr>
                            <tr>
                              <th scope="row">1</th>
                                        
                              <td>Jathaf</td>
                              <td>jhon@email.com</td>
                              <td>200023100010</td>
                              <td>
                                <a onclick="return confirm('Do you want to edit this')"
                                href="">
                                <i class="mdi mdi-pencil text-success"
                                    style="font-size: 24px;"></i>
                            </a>
      
      
                            <a onclick="return confirm('Are You Sure To Delete This')"
                                href="">
                                <i class="mdi mdi-delete text-danger"
                            style="font-size: 24px;"></i>
                            </a>
                              </td>
                            </tr>
                            <th scope="row">1</th>
                                        
                            <td>Jathaf</td>
                            <td>jhon@email.com</td>
                            <td>200023100010</td>
                              <td>
                                <a onclick="return confirm('Do you want to edit this')"
                                href="">
                                <i class="mdi mdi-pencil text-success"
                                    style="font-size: 24px;"></i>
                            </a>
      
      
                            <a onclick="return confirm('Are You Sure To Delete This')"
                                href="">
                                <i class="mdi mdi-delete text-danger"
                            style="font-size: 24px;"></i>
                            </a>
                              </td>
                            </tr>
                            <tr>
                              <th scope="row">1</th>
                                        
                              <td>Jathaf</td>
                              <td>jhon@email.com</td>
                              <td>200023100010</td>
                              <td>
                                <a onclick="return confirm('Do you want to edit this')"
                                href="">
                                <i class="mdi mdi-pencil text-success"
                                    style="font-size: 24px;"></i>
                            </a>
      
      
                            <a onclick="return confirm('Are You Sure To Delete This')"
                                href="">
                                <i class="mdi mdi-delete text-danger"
                            style="font-size: 24px;"></i>
                            </a>
                              </td>
                            </tr>
                            <tr>
                              <th scope="row">1</th>
                                        
                              <td>Jathaf</td>
                              <td>jhon@email.com</td>
                              <td>200023100010</td>
                              <td>
                                <a onclick="return confirm('Do you want to edit this')"
                                href="">
                                <i class="mdi mdi-pencil text-success"
                                    style="font-size: 24px;"></i>
                            </a>
      
      
                            <a onclick="return confirm('Are You Sure To Delete This')"
                                href="">
                                <i class="mdi mdi-delete text-danger"
                            style="font-size: 24px;"></i>
                            </a>
                              </td>
                            </tr>
                            <tr>
                              <th scope="row">1</th>
                                        
                              <td>Jathaf</td>
                            <td>jhon@email.com</td>
                            <td>200023100010</td>
                              <td>
                                <a onclick="return confirm('Do you want to edit this')"
                                href="">
                                <i class="mdi mdi-pencil text-success"
                                    style="font-size: 24px;"></i>
                            </a>
      
      
                            <a onclick="return confirm('Are You Sure To Delete This')"
                                href="">
                                <i class="mdi mdi-delete text-danger"
                            style="font-size: 24px;"></i>
                            </a>
                              </td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                    </div>
                  </div>
                  
                </div>
              </div>
          <!-- content-wrapper ends -->
          <!-- partial:../../partials/_footer.jsp -->
          
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="../../vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="../../vendors/select2/select2.min.js"></script>
    <script src="../../vendors/typeahead.js/typeahead.bundle.min.js"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="../../js/off-canvas.js"></script>
    <script src="../../js/hoverable-collapse.js"></script>
    <script src="../../js/misc.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <script src="../../js/file-upload.js"></script>
    <script src="../../js/typeahead.js"></script>
    <script src="../../js/select2.js"></script>
    <!-- End custom js for this page -->
  </body>
</html>