<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
            integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
<body>
<div class="container mt-5">
    <div class="row">
        <div class="col-md-6 col-12 mx-auto">
            <h4>Create a user</h4>
            <hr/>
            <form:form method="POST" action="/admin/user/create" modelAttribute="newUser">
                <div class="mb-3">
                    <form:label for="email" path="email" class="form-label">Email address</form:label>
                    <form:input type="email" path="email" class="form-control" aria-describedby="emailHelp"/>
                    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                </div>
                <div class="mb-3">
                    <form:label for="password" path="password" class="form-label">Password</form:label>
                    <form:input type="password" path="password" class="form-control"/>
                </div>
                <div class="mb-3">
                    <form:label for="phone" path="phone" class="form-label">Phone number</form:label>
                    <form:input type="text" path="phone" class="form-control"/>
                </div>
                <div class="mb-3">
                    <form:label for="fullName" path="fullName" class="form-label">Full Name</form:label>
                    <form:input type="text" path="fullName" class="form-control"/>
                </div>
                <div class="mb-3">
                    <form:label for="address" path="address" class="form-label">Address</form:label>
                    <form:input type="text" path="address" class="form-control"/>
                </div>
                <button type="submit" class="btn btn-primary">Create</button>
            </form:form>
        </div>
    </div>
</div>
</body>
</html>