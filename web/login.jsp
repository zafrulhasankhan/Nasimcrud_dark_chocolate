<%-- 
    Document   : login
    Created on : Mar 21, 2020, 7:19:34 PM
    Author     : Zafrul Hasan Nasim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Form </title>
    </head>
    <body>
        <h1>Hello man ,Now login is here </h1>
        <form action="login_servlet" method="POST">
            UserName:
            <input type="text" name="name" />
            PassWord:
            <input type="password" name="pass"/>            
            <input type="submit" value="Login"><br>
             <a href="registration.jsp"> Sign UP </a>
        </form>
    </body>
</html>
