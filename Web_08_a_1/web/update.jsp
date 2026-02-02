<%-- 
    Document   : Update
    Created on : Feb 2, 2026, 3:09:32 PM
    Author     : VNT
--%>

<%@page import="model.UserDTO"%>
<%@page import="model.UniversityDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="a.jsp"/>
        <c:if test="${empty sessionScope.user}">
            <c:redirect url="login.jsp"/>
        </c:if>
        
        <form action="MainController" method="post">
            <input type="hidden" name="action" value="update"/>
            Input name: <input type="text" name="keywords" value="${keywords}"/>
            <tr>
                <td>old name: <output type="text" name="keywords" value="${keywords}"/></td>
                -
                <td>new name: <input type="text" name="keywords" value="${keywords}"/></td>
            </tr>
            <tr>
                <td>old name: <input type="text" name="keywords" value="${keywords}"/></td>
                <td>new name: <input type="text" name="keywords" value="${keywords}"/></td>
            </tr>
            <input type="submit"value="Update"/>
        </form>
        
    </body>
</html>

