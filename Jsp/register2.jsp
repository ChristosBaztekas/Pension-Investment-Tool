<!DOCTYPE jsp>
<jsp>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>EGM - Register</title>

    <!-- Bootstrap v4.4.1 -->
    <link rel="stylesheet" type="text/css" href="assets/vendor/bootstrap/css/bootstrap.min.css">

    <!-- favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/logos/favicon.jpg">

</head>

<body class="bg-light">

    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <a href="landingpage.jsp"><div class="text-center mt-2">
                    <img class="mb-2" src="assets/img/logos/logo.jpg" alt="" width="100" height="100">
                </div></a>
                <h1 class="text-center">Register</h1>
                <hr>
                <form id="register_form" method="post" action="registerController.jsp">
                    <p class="lead">You can register an account here to login.</p>
                    <div id="alert_error_message" class="alert alert-danger collapse" role="alert">
                        <i class="fa fa-exclamation-triangle"></i>
                        Please check in on some of the fields below.
                    </div>
                    <div id="alert_sucess_message" class="alert alert-success collapse" role="alert">
                        New user successfully created. <a href="login.jsp" class="alert-link">Click here to login.</a>
                    </div>
                    <div class="mb-3">
                        <label for="fullname">Full Name *</label>
                        <input type="text" class="form-control" id="fullname" name="fullname" maxlength="50"
                            placeholder="Enter full name">
                        <div id="fullname_error_message" class="text-danger"></div>
                    </div>
                    <div class="mb-3">
                        <label for="username">Username *</label>
                        <input type="text" class="form-control" id="username" name="username" maxlength="50"
                            placeholder="Enter username">
                        <div id="username_error_message" class="text-danger"></div>
                    </div>
                    <div class="mb-3">
                        <label for="email">Email *</label>
                        <input type="email" class="form-control" id="email" name="email" maxlength="100"
                            placeholder="Enter email">
                        <div id="email_error_message" class="text-danger"></div>
                    </div>
                    <div class="mb-3">
                        <label>Gender *</label>
                        <select name="gender" id="gender" class="form-select">
                            <option value="" hidden>Gender</option>
                            <option>Male</option>
                            <option>Female</option>
                        </select>
                        <div id="gender_error_message" class="text-danger"></div>
                    </div>
                    <div class="mb-3">
                        <label for="password">Password *</label>
                        <input type="password" class="form-control" id="password" name="password" maxlength="50"
                            placeholder="Enter password">
                        <div id="password_error_message" class="text-danger"></div>
                    </div>
                    <div class="mb-3">
                        <label for="confirm_password">Confirm Password *</label>
                        <input type="password" class="form-control" id="confirm_password" name="confirm_password"
                            maxlength="50" placeholder="Enter confirm password">
                        <div id="confirm_password_error_message" class="text-danger"></div>
                    </div>
                    <hr class="mb-4">
                    <input type="hidden" name="action" id="action" value="register_user">
                    <button class="btn btn-primary btn-lg btn-block" type="submit">Register</button>
                    <div class="mt-2">
                        <p><a href="login.jsp">Already registered? Click here to login.</a></p>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- JQuery-3.4.1 -->
    <script src="assets/vendor/jquery/jquery-3.6.0.min.js"></script>

    <script>
        $(document).ready(function () {

            $(document).keypress(function (e) {
                if (e.which == 13) {
                    registerUser();
                }
            });

            $('#register_form').on('submit', function (event) {
                event.preventDefault();
                registerUser();
            });

            var error_fullname = false;
            var error_username = false;
            var error_email = false;
            var error_gender = false;
            var error_password = false;
            var error_confirm_password = false;

            $("#fullname").focusout(function () {
                check_fullname();
            });

            $("#username").focusout(function () {
                check_username();
            });

            $("#email").focusout(function () {
                check_email();
            });

            $("#gender").focusout(function () {
                check_gender();
            });

            $("#password").focusout(function () {
                check_password();
            });

            $("#confirm_password").focusout(function () {
                check_confirm_password();
            });

            function check_fullname() {
                if ($.trim($('#fullname').val()) == '') {
                    $("#fullname_error_message").jsp("Fullname is a required field.");
                    $("#fullname_error_message").show();
                    $("#fullname").addClass("is-invalid");
                    error_fullname = true;
                } else {
                    $("#fullname_error_message").hide();
                    $("#fullname").removeClass("is-invalid");
                }
            }

            function check_username() {
                if ($.trim($('#username').val()) == '') {
                    $("#username_error_message").jsp("Username is a required field.");
                    $("#username_error_message").show();
                    $("#username").addClass("is-invalid");
                    error_username = true;
                } else {
                    $("#username_error_message").hide();
                    $("#username").removeClass("is-invalid");
                }
            }

            function check_email() {
                var pattern = new RegExp(/^[+a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i);
                var email_length = $("#email").val().length;

                if ($.trim($('#email').val()) == '') {
                    $("#email_error_message").jsp("Email is a required field.");
                    $("#email_error_message").show();
                    $("#email").addClass("is-invalid");
                } else if (!(pattern.test($("#email").val()))) {
                    $("#email_error_message").jsp("Invalid email address");
                    $("#email_error_message").show();
                    error_email = true;
                    $("#email").addClass("is-invalid");
                } else {
                    $("#email_error_message").hide();
                    $("#email").removeClass("is-invalid");
                }
            }

            function check_gender() {
                if ($.trim($('#gender').val()) == '') {
                    $("#gender_error_message").jsp("Gender is a required field.");
                    $("#gender_error_message").show();
                    $("#gender").addClass("is-invalid");
                    error_gender = true;
                } else {
                    $("#gender_error_message").hide();
                    $("#gender").removeClass("is-invalid");
                }
            }
            function check_password() {
                var password_length = $("#password").val().length;

                if ($.trim($('#password').val()) == '') {
                    $("#password_error_message").jsp("Password is a required field.");
                    $("#password_error_message").show();
                    $("#password").addClass("is-invalid");
                    error_password = true;
                } else if (password_length < 8) {
                    $("#password_error_message").jsp("Please enter at least 8 characters!");
                    $("#password_error_message").show();
                    error_password = true;
                    $("#password").addClass("is-invalid");
                } else {
                    $("#password_error_message").hide();
                    $("#password").removeClass("is-invalid");
                }
            }

            function check_confirm_password() {
                var password = $("#password").val();
                var confirm_password = $("#confirm_password").val();

                if ($.trim($('#confirm_password').val()) == '') {
                    $("#confirm_password_error_message").jsp("Confirm password is a required field.");
                    $("#confirm_password_error_message").show();
                    $("#confirm_password").addClass("is-invalid");
                    error_confirm_password = true;
                } else if (password != confirm_password) {
                    $("#confirm_password_error_message").jsp("Passwords do not match!");
                    $("#confirm_password_error_message").show();
                    error_confirm_password = true;
                    $("#confirm_password").addClass("is-invalid");
                } else {
                    $("#confirm_password_error_message").hide();
                    $("#confirm_password").removeClass("is-invalid");
                }
            }

            function registerUser() {

                error_fullname = false;
                error_username = false;
                error_email = false;
                error_gender = false;
                error_password = false;
                error_confirm_password = false;

                check_fullname();
                check_username();
                check_email();
                check_gender();
                check_password();
                check_confirm_password();

                if (error_fullname == false && error_username == false && error_email == false && error_gender == false && error_password == false && error_confirm_password == false) {

                    data = $('#register_form').serialize();
                    $.ajax({
                        type: "POST",
                        data: data,
                        url: "profile_action.php",
                        dataType: "json",
                        success: function (data) {
                            if (data.status == 'success') {
                                $("#alert_sucess_message").show();
                                $("#alert_error_message").hide();
                                $('#register_form')[0].reset();
                                setTimeout(()=> {window.location = 'index.jsp'}, 5000);
                            } else if (data.status == 'error') {
                                $("#username_error_message").jsp("Username already exists");
                                $("#username_error_message").show();
                            }
                        },
                        error: function () {
                            alert("Oops! Something went wrong.");
                        }
                    });
                    return false;
                } else {
                    $("#alert_sucess_message").hide();
                    $("#alert_error_message").show();
                    return false;
                }
            }
        });
    </script>
</body>

</jsp>