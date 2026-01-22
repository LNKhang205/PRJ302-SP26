<%-- 
    Document   : a
    Created on : Jan 19, 2026, 3:40:37 PM
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
        UserDTO user = (UserDTO)session.getAttribute("user");
        %>
        
        Welcome<%=user.getFullName()%><br/>
        <a href="search.jsp">Search</a><br/>
        <a href="MainController?action=logout">Logout</a><br/>
        
    </body>
</html>
