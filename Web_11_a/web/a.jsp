<%@page import="model.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" 
          rel="stylesheet">
</head>
<body class="bg-light">

<c:choose>
    <c:when test="${not empty user}">
        
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
            <div class="container">
                <span class="navbar-brand">
                    Welcome, ${user.fullName}
                </span>

                <div class="ms-auto">
                    <a href="MainController?action=logout" 
                       class="btn btn-outline-light btn-sm">
                        Logout
                    </a>
                </div>
            </div>
        </nav>

        <!-- Main Content -->
        <div class="container mt-5">
            <div class="row justify-content-center">
                
                <div class="col-md-6">
                    <div class="card shadow-lg">
                        <div class="card-body text-center">
                            
                            <h4 class="card-title mb-4">
                                Dashboard
                            </h4>

                            <div class="d-grid gap-3">
                                
                                <a href="search.jsp" 
                                   class="btn btn-primary">
                                    🔍 Search University
                                </a>

                                <a href="university-form.jsp" 
                                   class="btn btn-success">
                                    ➕ Add University
                                </a>

                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>

    </c:when>

    <c:otherwise>
        <c:redirect url="login.jsp"/>
    </c:otherwise>
</c:choose>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>