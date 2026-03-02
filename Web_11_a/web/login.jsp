<%@page import="model.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" 
          rel="stylesheet">
</head>
<body class="bg-light">

    <c:if test="${not empty user}">
        <c:redirect url="a.jsp"/>
    </c:if>

    <div class="container d-flex justify-content-center align-items-center vh-100">
        <div class="card shadow-lg p-4" style="width: 400px;">
            
            <h3 class="text-center mb-4">Login</h3>

            <form action="MainController" method="post">
                <input type="hidden" name="action" value="login" />

                <div class="mb-3">
                    <label class="form-label">Username</label>
                    <input type="text" 
                           name="Username" 
                           class="form-control" 
                           placeholder="Enter username" 
                           required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Password</label>
                    <input type="password" 
                           name="Password" 
                           class="form-control" 
                           placeholder="Enter password" 
                           required>
                </div>

                <div class="d-grid">
                    <button type="submit" class="btn btn-primary">
                        Login
                    </button>
                </div>
            </form>

            <c:if test="${not empty message}">
                <div class="alert alert-danger mt-3 text-center">
                    ${message}
                </div>
            </c:if>

        </div>
    </div>

    <!-- Bootstrap JS (optional) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>