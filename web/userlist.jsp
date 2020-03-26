<%-- 
    Document   : userlist
    Created on : Mar 22, 2020, 11:31:27 PM
    Author     : Zafrul Hasan Nasim
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="db_package.user"%>
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
    <link rel="stylesheet" type="text/css" href="assets/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/select2.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap-datetimepicker.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    </head>
    <body>
        <
        
        <div class="table-responsive">
                            <table class="table table-striped custom-table datatable">
                                <thead>
                                    <tr>
                                        <th style="min-width:50px;">Name </th>
                                        <th style="min-width:70px;">Email</th>
                                        <th style="min-width:70px;">Mobile Number</th>
                                        <th style="min-width:50px;">Images</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
        <%
                ArrayList<user> userlist =(ArrayList) request.getAttribute("userlist");
                
                int i = 0;
                for(user u : userlist){
                    i++;
                
        %>
      <tr>
        <td><%= u.getName()%></td>
        <td><%= u.getEmail()%></td>
        <td><%= u.getMobile()%></td>
        <td><%= u.getImage()%></td>
        
        
      </tr>  
      <%
      }
      %>
      
    </tbody>
                            
    </table>
        </div>
    </body>
</html>
