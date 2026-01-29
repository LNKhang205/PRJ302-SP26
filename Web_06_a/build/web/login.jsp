<%-- 
    Document   : login
    Created on : Jan 19, 2026, 3:34:01 PM
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
        UserDTO user = (UserDTO) session.getAttribute("user");
        if(user != null){
            response.sendRedirect("a.jsp");
            return;
        }
        %>
        <form action="MainController" method="post">
            <input type="hidden" name="action" value="login" />
            Username: <input type="text" name="Username" required=""/><br/>
            Password: <input type="password" name="Password" required=""/><br/>
            <input type="submit" value="Login"/>
        </form>
        <%
          String message = request.getAttribute("message") + "";
          message = (message.equals("null")) ? "" : message;
        %>
        <span style="color: red"><%=message%> </span>
    </body>
</html>
