<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>All Students</title>
    <style>
        /* Add custom styles if needed */
        body {
            background-color: #f8f9fa;
        }
        h1 {
            text-align: center;
            margin-top: 20px;
        }
        .card {
            margin: 0 auto; /* Center the card */
            max-width: 800px; /* Set a max width for the card */
        }
        table {
            width: 100%;
        }
        th, td {
            text-align: center;
            padding: 15px;
        }
        .btn-primary a {
            color: white;
            text-decoration: none;
        }
        .btn-primary a:hover {
            color: white;
        }
    </style>
</head>
<body>
    <h1>All Students Data</h1>

    <div class="card mt-5 shadow">
        <div class="card-header bg-primary text-white">
            <div class="btn btn-light">
                <a href="/">Add Student</a>
            </div>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered table-hover">
                    <thead class="table-dark">
                        <tr>
                            <th>Sr. No</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Gender</th>
                            <th>Course</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="student" items="${students}" varStatus="index">
                            <tr>
                                <td>${index.count}</td>
                                <td>${student.name}</td>
                                <td>${student.email}</td>
                                <td>${student.gender}</td>
                                <td>${student.course}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- Bootstrap 5 JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
