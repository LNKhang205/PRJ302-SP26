<%-- 
    Document   : a
    Created on : Jan 8, 2026, 4:56:31 PM
    Author     : VNT
--%>

<%@page import="model.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            UserDTO user = (UserDTO)request.getAttribute("user");
        %>
        Welcome <%=user.getFullName()%><br/>
        <a>Bang dieu khien</a><br/>
        <a>Chuc nang 1</a><br/>
        <a>Chuc nang 2</a><br/>
        <a>Chuc nang 3</a>
    </body>
</html>
