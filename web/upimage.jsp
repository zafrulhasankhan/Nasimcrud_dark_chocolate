<%-- 
    Document   : upimage
    Created on : Mar 25, 2020, 1:17:32 PM
    Author     : Zafrul Hasan Nasim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="">
            <label for="img"> select image:</label>
            <input type="file" onchange="readURL(this);"/> 
            <img id="blah" src="#" id="img" name="img" accept="image/* alt="your image"/>     
            <input type="submit"> 
        </form>
    </body>
</html>
