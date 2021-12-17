<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <title>EGM - User Login</title>

  <!-- Bootstrap v4.4.1 -->
  <link rel="stylesheet" type="text/css" href="assets/vendor/bootstrap/css/bootstrap.min.css">

  <!-- favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="assets/img/logos/favicon.jpg">
</head>

<body class="bg-light">
  <div class="container">
    <div class="row">
      <a href="landingpage.html"><div class="col-md-4 offset-md-4">
        <div class="text-center mt-5">
          <img class="mb-2" src="assets/img/logos/logo.jpg" alt="" width="100" height="100">
        </div></a>
        <h1 class="text-center">User Login</h1>
        <hr>
        <form id="login_form">
          <span id="login_error_message"></span>
          <div class="mb-3">
            <label for="username">Username *</label>
            <input type="text" class="form-control" id="username" name="username" placeholder="Enter username"
              maxlength="50">
            <div id="username_error_message" class="text-danger"></div>
          </div>
          <div class="mb-3">
            <label for="password">Password *</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Enter password"
              maxlength="50">
            <div id="password_error_message" class="text-danger"></div>
          </div>
          <hr class="mb-4">
          <input type="hidden" name="action" id="action" value="login_user">
          <button class="btn btn-primary btn-lg btn-block" type="submit">Login</button>
          <div class="mt-2">
            <p><a href="register.html">Do not have an account yet? Register.</a></p>
          </div>
          <div class="col-sm-4"></div>
        </form>
    </div>
    </div>
  </div>


  <script src="assets/vendor/jquery/jquery-3.6.0.min.js"></script>

  <script>
    $(document).ready(function () {

      $(document).keypress(function (e) {
        if (e.which == 13) {
          loginUser();
        }
      });

      $('#login_form').on('submit', function (event) {
        event.preventDefault();
        loginUser();
      });

      var error_username = false;
      var error_password = false;

      $("#username").focusout(function () {
        check_username();
      });
      $("#password").focusout(function () {
        check_password();
      });

      function check_username() {

        if ($.trim($('#username').val()) == '') {
          $("#username_error_message").html("Username is a required field.");
          $("#username_error_message").show();
          $("#username").addClass("is-invalid");
          error_username = true;
        } else {
          $("#username_error_message").hide();
          $("#username").removeClass("is-invalid");
        }
      }

      function check_password() {

        if ($.trim($('#password').val()) == '') {
          $("#password_error_message").html("Password is a required field.");
          $("#password_error_message").show();
          $("#password").addClass("is-invalid");
          error_password = true;
        } else {
          $("#password_error_message").hide();
          $("#password").removeClass("is-invalid");
        }
      }

      function loginUser() {

        error_username = false;
        error_password = false;

        check_username();
        check_password();

        if (error_username == false && error_password == false) {
          data = $('#login_form').serialize();
          $.ajax({
            type: "POST",
            data: data,
            url: "profile_action.php",
            dataType: "json",
            success: function (data) {
              if (data.status == 'inactive') {
                $('#login_error_message').html('<div class="alert alert-danger">' + data.error + '</div>');
              } else if (data.status == 'success') {
                window.location = "index.php";
              } else if (data.status == 'error') {
                $('#login_error_message').html('<div class="alert alert-danger">' + data.error + '</div>');
              }
            },
            error: function () {
              alert("Oops! Something went wrong.");
            }
          });
        } else {
          $('#login_error_message').html('<div class="alert alert-danger">Incorrect username or password.</div>');
        }
      }
    });
  </script>
</body>

</html>