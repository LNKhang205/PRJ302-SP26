<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>University Form</title>

    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" 
          rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5 mb-5">

    <div class="card shadow-lg">
        <div class="card-body">

            <h3 class="text-center mb-4">University Information</h3>

            <form action="MainController" method="POST" class="row g-3">

                <input type="hidden" name="action" value="addUniversity"/>

                <!-- ID -->
                <div class="col-md-6">
                    <label class="form-label">ID</label>
                    <input type="text" 
                           name="id" 
                           value="${u.id}" 
                           class="form-control" required>
                </div>

                <!-- Name -->
                <div class="col-md-6">
                    <label class="form-label">Name</label>
                    <input type="text" 
                           name="name" 
                           value="${u.name}" 
                           class="form-control" required>
                </div>

                <!-- Short Name -->
                <div class="col-md-6">
                    <label class="form-label">Short Name</label>
                    <input type="text" 
                           name="shortName" 
                           value="${u.shortName}" 
                           class="form-control">
                </div>

                <!-- Description -->
                <div class="col-md-6">
                    <label class="form-label">Description</label>
                    <input type="text" 
                           name="description" 
                           value="${u.description}" 
                           class="form-control">
                </div>

                <!-- Founded Year -->
                <div class="col-md-4">
                    <label class="form-label">Founded Year</label>
                    <input type="number" 
                           name="foundedYear" 
                           value="${u.foundedYear}" 
                           class="form-control"
                           min="0">
                </div>

                <!-- Type -->
                <div class="col-md-4">
                    <label class="form-label">Type</label>
                    <input type="text" 
                           name="type" 
                           value="${u.type}" 
                           class="form-control">
                </div>

                <!-- City -->
                <div class="col-md-4">
                    <label class="form-label">City</label>
                    <input type="text" 
                           name="city" 
                           value="${u.city}" 
                           class="form-control">
                </div>

                <!-- Address -->
                <div class="col-12">
                    <label class="form-label">Address</label>
                    <input type="text" 
                           name="address" 
                           value="${u.address}" 
                           class="form-control">
                </div>

                <!-- Region -->
                <div class="col-md-6">
                    <label class="form-label">Region</label>
                    <input type="text" 
                           name="region" 
                           value="${u.region}" 
                           class="form-control">
                </div>

                <!-- Students -->
                <div class="col-md-3">
                    <label class="form-label">Total Students</label>
                    <input type="number" 
                           name="totalStudents" 
                           value="${u.totalStudents}" 
                           class="form-control"
                           min="0">
                </div>

                <!-- Faculties -->
                <div class="col-md-3">
                    <label class="form-label">Total Faculties</label>
                    <input type="number" 
                           name="totalFaculties" 
                           value="${u.totalFaculties}" 
                           class="form-control"
                           min="0">
                </div>

                <!-- Draft -->
                <div class="col-12 form-check mt-2">
                    <input type="checkbox" 
                           class="form-check-input"
                           name="isDraft"
                           ${u.isDraft ? "checked" : ""}>
                    <label class="form-check-label">
                        Save as Draft
                    </label>
                </div>

                <!-- Buttons -->
                <div class="col-12 d-grid mt-3">
                    <button type="submit" class="btn btn-success btn-lg">
                        💾 Save University
                    </button>
                </div>

            </form>

            <!-- Messages -->
            <c:if test="${not empty msg}">
                <div class="alert alert-success mt-3 text-center">
                    ${msg}
                </div>
            </c:if>

            <c:if test="${not empty error}">
                <div class="alert alert-danger mt-3 text-center">
                    ${error}
                </div>
            </c:if>

        </div>
    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>