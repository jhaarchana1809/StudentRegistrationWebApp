<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Bootstrap 5 CDN -->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <meta charset="ISO-8859-1">
    <title>Student Registration Form</title>
</head>
<body>
<font color="green" class="mt-5 text-center">${msg }</font>
<div class="container mt-5">
    <h1 class="text-center mb-4">Student Register Form</h1>
    <div class="card shadow">
        <div class="card-body">
            <form:form action="/registration" method="post" modelAttribute="student" class="row g-3">
                <div class="col-md-6">
                    <label for="id" class="form-label">Id</label>
                    <form:input path="id" class="form-control" id="name"/>
                </div>
                <div class="col-md-6">
                    <label for="name" class="form-label">Name</label>
                    <form:input path="name" class="form-control" id="name"/>
                </div>
                
                <div class="col-md-6">
                    <label for="email" class="form-label">Email</label>
                    <form:input path="email" class="form-control" id="email"/>
                </div>

                <div class="col-md-6">
                    <label class="form-label">Gender</label><br/>
                    <div class="form-check form-check-inline">
                        <form:radiobutton path="gender" value="Male" class="form-check-input" id="male"/>
                        <label class="form-check-label" for="male">Male</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <form:radiobutton path="gender" value="Female" class="form-check-input" id="female"/>
                        <label class="form-check-label" for="female">Female</label>
                    </div>
                </div>

                <div class="col-md-6">
                    <label for="course" class="form-label">Course</label>
                    <form:select path="course" class="form-select" id="course">
                        <form:option value="">-Select-</form:option>
                        <form:options items="${courses}"></form:options>
                    </form:select>
                </div>

               
                <div class="col-12">
                    <input type="submit" value="Register" class="btn btn-primary"/>
                </div>
            </form:form>
        </div>
        <a href="viewStudents">View Student Details</a>
    </div>
</div>

<!-- Bootstrap 5 JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
