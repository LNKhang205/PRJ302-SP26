<%-- 
    Document   : search
    Created on : Jan 22, 2026, 3:46:35 PM
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
        <jsp:include page="a.jsp"/><!-- cách này sẽ thực thi code bên trang a r chuyển kết quả qua trang này, tốn thời gian nhưng sẽ không bị lỗi nếu đặt trùng tên biến -->
        <!--<--%@include file="a.jsp" %> cách này sẽ nhanh hơn vì nó sẽ chuyển code từ trang a qua trước r thực thi code trang a và trang này cùng lúc, nhưng nếu đặt tên biến trùng thì sẽ xảy ra xung đột -->
        <c:if test="${empty sessionScope.user}">
            <c:redirect url="login.jsp"/>
        </c:if>
        
        <form action="MainController" method="post">
            <input type="hidden" name="action" value="search"/>
            Input name: <input type="text" name="keywords" value="${keywords}"/>
            <input type="submit"value="search"/>
        </form>
        <hr/>
        <table border="1">
            <thead>
                <th>Id</th>
                <th>Name</th>
                <th>Short Name</th>
                <th>City</th>
                <th>Region</th>
                <th>Type</th>
                <th>Founded Year</th>
                <th>Students</th>
                <th>Faculties</th>
                <th></th> 
            </thead>
            <c:choose>
                <c:when test="${empty list}">
                    No data matching the search criteria found!
                </c:when>
                <c:otherwise>
                    <c:forEach items="${list}" var="u">
                        <tr>
                            <td>${u.id}</td>
                            <td>${u.name}</td>
                            <td>${u.shortName}</td>
                            <td>${u.city}</td>
                            <td>${u.region}</td>
                            <td>${u.type}</td>
                            <td>${u.foundedYear}</td>
                            <td>${u.totalStudents}</td>
                            <td>${u.totalFaculties}</td>
                            <td>
                                <c:if test="${u.isDraft}">
                                    <input type="submit" value="Update"/>
                                </c:if>
                            </td>
                        </tr>  
                    </c:forEach>
                </c:otherwise>
            </c:choose>
    </body>
</html>
