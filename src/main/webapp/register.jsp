<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>LAB APPOINTMENT SYSTEM</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="css/materialdesignicons.min.css">
    <link rel="stylesheet" href="css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="css/stylee.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="images/favicon.png" />
  </head>
  <body>
    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="row w-100 m-0">
          <div class="content-wrapper full-page-wrapper d-flex align-items-center auth login-bg">
            <div class="card col-lg-4 mx-auto">
              <div class="card-body px-5 py-5">
                <h3 class="card-title text-left mb-3">Register</h3>
                <form action="Register" method="post">
                  <div class="form-group">
                    <label  >User Name</label>
                    <input type="text" name="username" placeholder="Name" class="form-control p_input" required>
                  </div>
                  <div class="form-group">
                    <label   >Email</label>
                    <input type="email" name="email" placeholder="Email" class="form-control p_input" required>
                  </div>
                  <div class="form-group">
                    <label >NIC</label>
                    <input type="text" name="nic" placeholder="Nic" class="form-control p_input" required>
                  </div>
                  <div class="form-group">
                    <label  >Password</label>
                    <input type="password" name="password" placeholder="Password" class="form-control p_input" required>
                  </div>
                  <div class="text-center">
                    <button type="submit" class="btn btn-primary btn-block enter-btn">Login</button>
                  </div>
                  
                 
                  
                </form>
                 <p class="sign-up text-center">Already have an Account?<a href="login.jsp"> Sign Up</a></p>
              </div>
            </div>
          </div>
          <!-- content-wrapper ends -->
        </div>
        <!-- row ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="javaScript/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="javaScript/off-canvas.js"></script>
    <script src="javaScript/hoverable-collapse.js"></script>
    <script src="javaScript/misc.js"></script>
    <script src="javaScript/settings.js"></script>
    <script src="/javaScript/todolist.js"></script>
    <!-- endinject -->
  </body>
</html>