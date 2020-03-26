<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
    <title>Dark Chocolate Enterprise</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <link href="css/navbar.css" rel="stylesheet" type="text/css" />
    <!--[if lt IE 9]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
	<![endif]-->
</head>
<header>
    <nav class="navbar navbar-expand-lg navStyle" style="background-color:#00ffff">
                
                <div class="collapse navbar-collapse" id="mainMenu">
                    <ul class="navbar-nav ml-auto navList">
                        <li class="nav-item active"><a href="index.jsp" class="nav-link"><i class="fas fa-align-right"></i><button type="button" style="color: red"  class="btn btn-link mb-1">HOME</button><span class="sr-only">(current)</span></a></li>
                        <li class="nav-item">
                            <a href="registration1.jsp" class="nav-link"><i class="fas fa-user-plus"></i><button type="button" style="color: red"  class="btn btn-link mb-1">Register</button></a>
                        </li>
                        <li class="nav-item">
                            <a href="search.jsp" class="nav-link"><i class="fas fa-search"></i><button type="button" style="color: red"  class="btn btn-link mb-1">Search</button></a>
                        </li>
                        
                        <li class="nav-item">
                            <a href="about.jsp" class="nav-link"><i class="fas fa-users"></i><button type="button" style="color: red"  class="btn btn-link mb-1">About</button></a>
                        </li>
                        <li class="nav-item">
                            <a href="logout.jsp" class="nav-link"><i class="fas fa-sign-out-alt"></i><button type="button" style="color: red"  class="btn btn-link mb-1">Logout</button></a>
                        </li>
                    </ul>
                </div>
            </nav>
</header>
<body>
    
     <div class="main-wrapper">
        <div class="account-page">
            <div class="container">
                <h3 class="account-title text-white">Login</h3>
                <div class="account-box">
                    <div class="account-wrapper">
                        <div class="account-logo">
                            <a href="index.html"><img src="assets/img/logo.png" alt="SchoolAdmin"></a>
                        </div>
                        <form action="login_servlet1" method="POST">
							<div class="form-group custom-mt-form-group">
								<input type="text" name="email" />
								<label class="control-label"> Email</label><i class="bar"></i>
							</div>
                            <div class="form-group custom-mt-form-group">
								<input type="password" name="pass"  />
								<label class="control-label">Password</label><i class="bar"></i>
							</div>
                            <div class="form-group text-center custom-mt-form-group">
                                <button class="btn btn-primary btn-block account-btn" type="submit">Login</button>
                            </div>
                            <div class="text-center">
                                <a href="forgot-password.html">Forgot your password?</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="sidebar-overlay" data-reff=""></div>
    <script type="text/javascript" src="assets/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="assets/js/popper.min.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="assets/js/jquery.slimscroll.js"></script>
    <script type="text/javascript" src="assets/js/app.js"></script>
    
</body>

</html>