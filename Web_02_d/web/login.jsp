<%-- 
    Document   : login
    Created on : Jan 8, 2026, 4:16:03 PM
    Author     : VNT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="MainController" method="post">
            Usename: <input type="text" name="Usename"/><br/>
            Password: <input type="password" name="Password"/><br/>
            <input type="submit" value="Login"/>
        </form>
    </body>
</html>
