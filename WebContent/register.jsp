<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Register - IUVA</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=ABeeZee">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alfa+Slab+One">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Amita">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/simple-line-icons.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="assets/css/Article-Cards.css">
    <link rel="stylesheet" href="assets/css/Blog---Recent-Posts-1.css">
    <link rel="stylesheet" href="assets/css/Blog---Recent-Posts.css">
    <link rel="stylesheet" href="assets/css/Bootstrap-4---Payment-Form.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="assets/css/Latest-Blog.css">
    <link rel="stylesheet" href="assets/css/News-Cards.css">
</head>

<body class="bg-gradient-primary">
    <div class="container">
        <div class="card shadow-lg o-hidden border-0 my-5">
            <div class="card-body p-0">
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-flex">
                        <div class="flex-grow-1 bg-register-image" style="background-image: url(&quot;assets/img/dogs/image2.jpeg&quot;);"></div>
                    </div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h4 class="text-dark mb-4">Create an Account!</h4>
                            </div>
                            <form class="user" id="register_form" >
                                <div class="form-group">
                                    <input class="form-control form-control-user" type="text" id="first_name" style="margin-bottom: 15px;" placeholder="First Name" pattern="[a-zA-Z ]+" required="" title="Alphabets only">
                                    <input class="form-control form-control-user" type="text" id="last_name" style="margin-bottom: 15px;" placeholder="Last Name" pattern="[a-zA-Z ]+" required="" title="Alphabets only">

                                    <div class="alert alert-danger text-capitalize text-center border rounded" role="alert" id="post_validation" style="font-size: 12px;display: none;"><span><strong>There has been some error , try again !</strong></span></div>

                                    <input class="form-control form-control-user" type="text"
                                        id="username" style="margin-bottom: 15px;" placeholder="Username" required="" pattern="[a-zA-Z0-9]{8,16}" title="8-16 Alphanumeric characters">
                                        <input class="form-control form-control-user" type="email" id="email" aria-describedby="emailHelp"
                                        placeholder="Email Address" name="email" required=""></div>
                                <div class="alert alert-danger text-capitalize text-center border rounded" role="alert" id="alert" style="font-size: 12px;display: none;"><span><strong>Passwords Do Not Match</strong></span></div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0"><input class="form-control form-control-user" type="password" id="pwd" placeholder="Password" name="password" pattern="(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,16}" title="8-16 characters. Atleast 1 digit and 1 alphabet"
                                            required=""></div>
                                    <div class="col-sm-6"><input class="form-control form-control-user" type="password" id="cnfpwd" placeholder="Repeat Password" name="password_repeat" required=""></div>
                                </div><button class="btn btn-primary btn-block text-white btn-user" type="submit">Register Account</button></form>
                            <div class="text-center"></div>
                            <div class="text-center"><a class="small" href="http://localhost:8080/second/login.jsp">Already have an account? Login!</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/js/register.js"></script>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="assets/js/Bootstrap-4---Payment-Form.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>
    <script src="assets/js/theme.js"></script>

</body>

</html>