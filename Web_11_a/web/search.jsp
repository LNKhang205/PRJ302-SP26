<%@page import="model.UserDTO"%>
<%@page import="model.UniversityDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search University</title>

    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" 
          rel="stylesheet">
</head>
<body class="bg-light">

    <c:if test="${empty sessionScope.user}">
        <c:redirect url="login.jsp"/>
    </c:if>

    <div class="container mt-5">

        <!-- Search Card -->
        <div class="card shadow mb-4">
            <div class="card-body">
                <h4 class="mb-3">Search University</h4>

                <form action="MainController" method="post" class="row g-3">
                    <input type="hidden" name="action" value="search"/>

                    <div class="col-md-10">
                        <input type="text" 
                               name="keywords" 
                               value="${keywords}" 
                               class="form-control"
                               placeholder="Enter university name...">
                    </div>

                    <div class="col-md-2 d-grid">
                        <button type="submit" class="btn btn-primary">
                            🔍 Search
                        </button>
                    </div>
                </form>
            </div>
        </div>

        <!-- Result Table -->
        <div class="card shadow">
            <div class="card-body">

                <c:choose>
                    <c:when test="${empty list}">
                        <div class="alert alert-warning text-center">
                            No data matching the search criteria found!
                        </div>
                    </c:when>

                    <c:otherwise>

                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover align-middle text-center">
                                <thead class="table-dark">
                                    <tr>
                                        <th>Id</th>
                                        <th>Name</th>
                                        <th>Short Name</th>
                                        <th>City</th>
                                        <th>Region</th>
                                        <th>Type</th>
                                        <th>Founded</th>
                                        <th>Students</th>
                                        <th>Faculties</th>
                                        <th>Update</th>
                                        <th>Delete</th>
                                    </tr>
                                </thead>

                                <tbody>
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

                                            <!-- Update -->
                                            <td>
                                                <c:if test="${u.isDraft}">
                                                    <a href="MainController?action=editUniversity&id=${u.id}&keywords=${keywords}"
                                                       class="btn btn-warning btn-sm">
                                                        ✏ Update
                                                    </a>
                                                </c:if>
                                            </td>

                                            <!-- Delete -->
                                            <td>
                                                <form action="MainController" 
                                                      method="post"
                                                      onsubmit="return confirm('Bạn có chắc với quyết định này?')">

                                                    <input type="hidden" name="action" value="deleteUniversity"/>
                                                    <input type="hidden" name="id" value="${u.id}"/>
                                                    <input type="hidden" name="keywords" value="${keywords}"/>

                                                    <button type="submit" 
                                                            class="btn btn-danger btn-sm">
                                                        🗑 Delete
                                                    </button>
                                                </form>
                                            </td>

                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>

                    </c:otherwise>
                </c:choose>

            </div>
        </div>

    </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>