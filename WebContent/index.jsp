<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Dashboard - IUVA</title>
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

<body id="page-top">
    <div id="wrapper">
        <nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bg-gradient-primary p-0">
            <div class="container-fluid d-flex flex-column p-0">
                <a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="index.jsp">
                    <div class="sidebar-brand-icon rotate-n-15"></div>
                    <div class="sidebar-brand-text mx-3"><span class="text-capitalize" data-bs-parallax-bg="true" style="font-family: Amita, cursive;font-size: 45px;filter: blur(0px) contrast(97%) grayscale(0%) hue-rotate(42deg) sepia(0%);"><i class="fas fa-hands pulse animated infinite" style="width: 19px;height: 15px;border-width: 2px;opacity: 1;filter: brightness(95%);"></i>&nbsp; &nbsp; &nbsp;IUVA</span></div>
                </a>
                <hr class="sidebar-divider my-0">
                <ul class="nav navbar-nav text-light" id="accordionSidebar">
                    <li class="nav-item" role="presentation"><a class="nav-link active" href="index.jsp"><i class="fas fa-tachometer-alt" data-bs-hover-animate="jello" style="width: 19px;height: 15px;border-width: 2px;opacity: 1;filter: brightness(95%);"></i><span style="font-family: ABeeZee, sans-serif;font-size: 20px;">Feed</span></a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="profile.jsp"><i class="fas fa-user" style="width: 19px;height: 15px;"></i><span style="font-size: 20px;line-height: 30px;">Profile</span></a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="updates.jsp"><i class="fas fa-table" style="width: 19px;height: 15px;"></i><span style="font-size: 20px;">Updates</span></a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="donate.jsp"><i class="fas fa-donate" style="width: 19px;height: 15px;"></i><span style="font-size: 20px;">Donate</span></a></li>
                        
                        <%
                        if(request.getSession().getAttribute("user_type") == null)
                        {
                        %>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="login.jsp"><i class="far fa-user-circle" style="width: 19px;height: 15px;"></i><span style="font-size: 20px;line-height: 30px;">Login</span></a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="register.jsp"><i class="fas fa-user-circle" style="width: 19px;height: 15px;"></i><span style="font-size: 20px;line-height: 30px;">Register</span></a></li>
                        <%}%>
                </ul>
                <div class="text-center d-none d-md-inline"><button class="btn rounded-circle border-0" id="sidebarToggle" type="button"></button></div>
            </div>
        </nav>
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">
                <nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                    <div class="container-fluid"><button class="btn btn-link d-md-none rounded-circle mr-3" id="sidebarToggleTop" type="button"><i class="fas fa-bars"></i></button>
                        <form class="form-inline d-none d-sm-inline-block mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                            <div class="input-group"><input class="bg-light form-control border-0 small" type="text" placeholder="Search for ...">
                                <div class="input-group-append"><button class="btn btn-primary py-0" type="button"><i class="fas fa-search"></i></button></div>
                            </div>
                        </form>
                        <ul class="nav navbar-nav flex-nowrap ml-auto">
                            <li class="nav-item dropdown d-sm-none no-arrow"><a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#"><i class="fas fa-search"></i></a>
                                <div class="dropdown-menu dropdown-menu-right p-3 animated--grow-in" role="menu" aria-labelledby="searchDropdown">
                                    <form class="form-inline mr-auto navbar-search w-100">
                                        <div class="input-group"><input class="bg-light form-control border-0 small" type="text" placeholder="Search for ...">
                                            <div class="input-group-append"><button class="btn btn-primary py-0" type="button"><i class="fas fa-search"></i></button></div>
                                        </div>
                                    </form>
                                </div>
                            </li>
                            <li class="nav-item dropdown no-arrow mx-1" role="presentation">
                                <div class="nav-item dropdown no-arrow"><a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#"><span class="badge badge-danger badge-counter">3+</span><i class="fas fa-bell fa-fw"></i></a>
                                    <div class="dropdown-menu dropdown-menu-right dropdown-list dropdown-menu-right animated--grow-in"
                                        role="menu">
                                        <h6 class="dropdown-header">alerts center</h6>
                                        <a class="d-flex align-items-center dropdown-item" href="#">
                                            <div class="mr-3">
                                                <div class="bg-primary icon-circle"><i class="fas fa-file-alt text-white"></i></div>
                                            </div>
                                            <div><span class="small text-gray-500">September 18, 2020</span>
                                                <p>Academic Timetable has been changed. View Updates</p>
                                            </div>
                                        </a>
                                        <a class="d-flex align-items-center dropdown-item" href="#">
                                            <div class="mr-3">
                                                <div class="bg-success icon-circle"><i class="fas fa-donate text-white"></i></div>
                                            </div>
                                            <div><span class="small text-gray-500">September 10, 2020</span>
                                                <p>Opinion Piece: How lockdown has affected our spending habits.&nbsp; View Feed</p>
                                            </div>
                                        </a>
                                </div>
                            </li>
                            <li class="nav-item dropdown no-arrow mx-1" role="presentation">
                                <div class="nav-item dropdown show no-arrow"><a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="true" href="#"><i class="icon-clock fa-fw" style="margin: 1px;"></i><label id="clock" style="margin: 3px;">Label</label></a>
                                    <div class="dropdown-menu dropdown-menu-right show dropdown-list dropdown-menu-right animated--grow-in"
                                        role="menu"></div>
                                </div>
                                <div class="shadow dropdown-list dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown"></div>
                            </li>
                            <div class="d-none d-sm-block topbar-divider"></div>
                            <li class="nav-item dropdown no-arrow" role="presentation">
                                <div class="nav-item dropdown no-arrow"><a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#"><span class="d-none d-lg-inline mr-2 text-gray-600 small">${sessionScope.username}</span><img class="border rounded-circle img-profile" src="assets/img/avatars/avatar1.jpeg"></a>
                                    <div class="dropdown-menu shadow dropdown-menu-right animated--grow-in" role="menu"><a class="dropdown-item" role="presentation" href="http://localhost:8080/second/profile.jsp"><i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;Profile</a>
                                            <div class="dropdown-divider"></div><a class="dropdown-item" role="presentation" href="http://localhost:8080/second/Logout"><i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;Logout</a></div>

                    </div>
                    </li>
                    </ul>
            </div>
            </nav>
            <div class="container">
                <section style="position: relative;"><img width="100%" src="assets/img/Social-Media-Outreach-for-Beginners4.svg"></section>
            </div>
            <div class="container-fluid">
                <section style="position: relative;"></section><div class="blog-home3 py-5">
  <div class="container">
    <!-- Row  -->
    <div class="row justify-content-center">
      <!-- Column -->
      <div class="col-md-8 text-center">
        <h1>Latest News and Blog</h1>
        <h4 class="subtitle font-weight-normal">Top Feeds curated to your liking .</h4>
      </div>
      <!-- Column -->
      <!-- Column -->
    </div>
    <div class="row mt-4">
      <!-- Column -->
      <div class="col-lg-6">
        <div class="card border-0 mb-4">
          <a href="#"><img class="card-img-top" src="https://www.wrappixel.com/demos/ui-kit/wrapkit/assets/images/blog/blog-home/img4.jpg" alt="wrappixel kit"></a>
          <div class="date-pos text-center text-white p-3 bg-success-gradiant">JOHN DOE &nbsp; &nbsp; SEPT 15, 2017</div>
          <h5 class="font-weight-medium mt-3"><a href="#" class="link text-decoration-none">Techonologies started to change Drastically</a></h5>
          <p class="m-t-20">You can relay on our amazing features list and also our customer services will be great experience. Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
        </div>
      </div>
      <!-- Column -->
      <div class="col-lg-6">
        <div class="row">
          <!-- Column -->
          <div class="col-md-6">
            <div class="card border-0 mb-4">
              <a href="#"><img class="card-img-top" src="https://www.wrappixel.com/demos/ui-kit/wrapkit/assets/images/blog/blog-home/img5.jpg" alt="wrappixel kit"></a>
              <div class="date-pos text-center text-white p-3 bg-success-gradiant">JOHN DOE &nbsp; &nbsp; SEPT 15, 2017</div>
              <h6 class="font-weight-medium mt-3"><a href="#" class="link text-decoration-none">New Seminar on Newest Food Recipe</a></h6>
            </div>
          </div>
          <!-- Column -->
          <div class="col-md-6">
            <div class="card border-0 mb-4">
              <a href="#"><img class="card-img-top" src="https://www.wrappixel.com/demos/ui-kit/wrapkit/assets/images/blog/blog-home/img6.jpg" alt="wrappixel kit"></a>
              <div class="date-pos text-center text-white p-3 bg-success-gradiant">JOHN DOE &nbsp; &nbsp; SEPT 15, 2017</div>
              <h6 class="font-weight-medium mt-3"><a href="#" class="link text-decoration-none">New Seminar on Newest Food Recipe</a></h6>
            </div>
          </div>
          <!-- Column -->
          <div class="col-md-6">
            <div class="card border-0 mb-4">
              <a href="#"><img class="card-img-top" src="https://www.wrappixel.com/demos/ui-kit/wrapkit/assets/images/blog/blog-home/img7.jpg" alt="wrappixel kit"></a>
              <div class="date-pos text-center text-white p-3 bg-success-gradiant">JOHN DOE &nbsp; &nbsp; SEPT 15, 2017</div>
              <h6 class="font-weight-medium mt-3"><a href="#" class="link text-decoration-none">New Seminar on Newest Food Recipe</a></h6>
            </div>
          </div>
          <!-- Column -->
          <div class="col-md-6">
            <div class="card border-0 mb-4">
              <a href="#"><img class="card-img-top" src="https://www.wrappixel.com/demos/ui-kit/wrapkit/assets/images/blog/blog-home/img8.jpg" alt="wrappixel kit"></a>
              <div class="date-pos text-center text-white p-3 bg-success-gradiant">JOHN DOE &nbsp; &nbsp; SEPT 15, 2017</div>
              <h6 class="font-weight-medium mt-3"><a href="#" class="link text-decoration-none">New Seminar on Newest Food Recipe</a></h6>
            </div>
          </div>
          <!-- Column -->
        </div>
      </div>
      <!-- Column -->
    </div>
  </div>
</div></div>
        </div>
        <footer class="bg-white sticky-footer">
            <div class="container my-auto">
                <div class="text-center my-auto copyright"><span>Copyright � Brand 2020</span></div>
            </div>
        </footer>
    </div><a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a></div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="assets/js/Bootstrap-4---Payment-Form.js"></script>
    <script src="assets/js/clock.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>
    <script src="assets/js/theme.js"></script>
</body>

</html>