<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 1/25/2025
  Time: 10:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <style>
        .login-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        .brand-logo {
            color: #28a745;
            font-size: 2.5rem;
            font-weight: bold;
            font-family: Arial, sans-serif;
            margin-bottom: 2rem;
        }
        .form-section {
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }
        .featured-image {
            width: 100%;
            height: 95%;
            border-radius: 8px;
            object-fit: cover;
        }
        .image-container{
            height: 100%;
        }
        .col-lg-6 {
            display: flex;
            flex-direction: column;
            height: 114vh

        }
        .btn{
            background-color: #28a745;
        }
    </style>
</head>
<body>
<div class="login-container">
    <div class="row g-0 align-items-center">
        <div class="col-lg-6 p-3">
            <div class="image-container">
                <img src="images/ec-78.jpg" alt="Family fashion photo" class="featured-image">
            </div>
        </div>
        <div class="col-lg-6 p-3">
            <div class="form-section">
                <div class="brand-logo text-center">FASHION FAZE</div>
                <%
                    String message = request.getParameter("message");
                    String error = request.getParameter("error");
                %>
                <% if (message != null) { %>
                <div class="alert alert-success alert-dismissible fade show" role="alert" id="success-alert">
                    <i class="bi bi-check-circle-fill me-2"></i>
                    <%= message %>
                </div>
                <% } %>
                <% if (error != null && !error.isEmpty()) { %>
                <div class="alert alert-danger alert-dismissible fade show" role="alert" id="error-alert">
                    <i class="fas fa-exclamation-circle me-2"></i>
                    <%= error %>
                </div>
                <%
                        response.setHeader("Refresh", "4; URL=login.jsp");
                    } %>

                <h2 class="h4 mb-4">LOGIN</h2>
                <form action="login" method="post">
                    <div class="mb-3">
                        <label for="username" class="form-label">Username or Email Address *</label>
                        <input type="email" class="form-control" id="username"  name="email" required>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password *</label>
                        <input type="password" class="form-control" id="password" name="password" required>
                    </div>
                    <div class="mb-3 d-flex justify-content-between align-items-center">
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="remember">
                            <label class="form-check-label" for="remember">Remember me</label>
                        </div>
                        <a href="#" class="text-decoration-none">Forgot Password?</a>
                    </div>
                    <button type="submit" class="btn btn-dark w-100 mb-4">LOGIN</button>
                </form>

                <!-- Register Section -->
                <div class="mt-4 pt-4 border-top">
                    <h2 class="h4 mb-4">REGISTER</h2>
                    <form action="register" method="post">
                        <div class="mb-3">
                            <label for="register-email" class="form-label">Email Address *</label>
                            <input type="email" class="form-control" id="register-email" name="email" required>
                        </div>
                        <small class="d-block text-muted mb-3">A password will be sent to your email address.</small>
                        <button type="submit" class="btn btn-dark w-100">REGISTER</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
    setTimeout(() => {
        const successAlert = document.getElementById('success-alert');
        const errorAlert = document.getElementById('error-alert');
        if (successAlert) successAlert.style.display = 'none';
        if (errorAlert) errorAlert.style.display = 'none';
    }, 5000);
</script>
</body>
</html>
