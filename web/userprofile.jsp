<%-- 
    Document   : userprofile
    Created on : Mar 25, 2020, 8:53:05 PM
    Author     : Zafrul Hasan Nasim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    </head>
    <body>
        <<header>
            <!-- ======================================Navigation Bar================================================= -->
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
                            <a href="login1.jsp" class="nav-link"><i class="fas fa-sign-in-alt"></i><button type="button" style="color: red"  class="btn btn-link mb-1">Sign in</button></a>
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
        
        <div class="container">
            
             <%
               String username = session.getAttribute("name1").toString();
               
                session.setAttribute("name1", username);
                String email = session.getAttribute("email").toString();
               
                session.setAttribute("email", email);
                String mobile = session.getAttribute("mobile").toString();
               
                session.setAttribute("mobile",mobile);
            %> 
           
            <div class=".col-xs-3 .col-md-offset-3" style="background-color:#33ff33">
                <div class="panel panel-default panel-info Profile">
                    <div class="panel-heading"> <h3 align=""center">My Profile |  ${name1}</h3></div>
                    <div class="panel-body">
                        <div class="form-horizontal">
                            <form>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">UserName</label>
                                    <div class="col-sm-4">
                                        <input class="form-control" type="text" name="firstname" value="${name1}" readonly>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Email</label>
                                    <div class="col-sm-4">
                                        <input class="form-control" type="text" value="${email}" readonly>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Mobile Number</label>
                                    <div class="col-sm-4">
                                        <input class="form-control" type="text" value="${mobile}" readonly>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
    </div>
         </div>
                                    
       
         
         
         </body>
</html>
