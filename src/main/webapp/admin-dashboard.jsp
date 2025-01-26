<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 1/24/2025
  Time: 1:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>admin-dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
  <style>
    body {
      background-color: #f8f9fa;
    }

    .navbar {
        background-color: #1a1a1a; /* Dark background for navbar */
    }
    .navbar-brand {
        color: white;
        font-weight: bold;
        font-size: 20px;
    }
    .navbar-brand:hover {
        color: lightgray;
    }
    .nav-link {
        color: white;
        font-size: 16px;
    }
    .nav-link:hover {
        color: lightgray;
    }
    .dropdown-menu {
        background-color: #1a1a1a; /* Match the navbar's background */
    }
    .dropdown-item {
        color: white;
    }
    .dropdown-item:hover {
        background-color: lightgray;
        color: black;
    }
    .header {
        background-color: #28a745; /* Green background */
        color: white;
        padding: 15px;
        text-align: center;
    }
    .card {
      border: none;
      border-radius: 10px;
    }

    .card-body {
      padding: 2rem;
    }

    .card-title {
      font-size: 2rem;
      font-weight: bold;
    }

    .card-text {
      font-size: 1rem;
      color: #6c757d;
    }
    .bi{
        color: #28a745;
    }
    body{
        background-color: #C7F6C7;
    }
    .card-body{
        transition: transform .2s;
    }
    .card-body:hover{
        transform: scale(1.1);
    }

  </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Shopping Center</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Products</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="categoryDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Category
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="categoryDropdown">
                        <li><a class="dropdown-item" href="#">Mobile</a></li>
                        <li><a class="dropdown-item" href="#">Laptop</a></li>
                        <li><a class="dropdown-item" href="#">TV</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Stock</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Shipped</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Orders</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Update Items</a>
                </li>
            </ul>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link text-danger" href="#">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="header">
    <h1>Fashion Faze</h1>
    <p>We specialize in Fashion</p>
</div>
<div class="container mt-4">
    <div class="row g-4">
        <div class="col-md-4">
            <a href="users.jsp" class="text-decoration-none" target="_blank">
                <div class="card text-center shadow">
                    <div class="card-body">
                        <h1 class="display-4 text-warning"><i class="bi bi-people-fill"></i></h1>
                        <h4 class="card-title">3</h4>
                        <p class="card-text">Users</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-4">
            <a href="category-list" class="text-decoration-none " target="_blank">
                <div class="card text-center shadow">
                    <div class="card-body">
                        <h1 class="display-4 text-warning"><i class="bi bi-list-task"></i></h1>
                        <h4 class="card-title">4</h4>
                        <p class="card-text">Total Categories</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-4">
            <a href="product-list" class="text-decoration-none" target="_blank">
                <div class="card text-center shadow">
                    <div class="card-body">
                        <h1 class="display-4 text-warning"><i class="bi bi-cart4"></i></h1>
                        <h4 class="card-title">21</h4>
                        <p class="card-text">Total Products</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-4">
            <a href="orders.jsp" class="text-decoration-none" target="_blank">
                <div class="card text-center shadow">
                    <div class="card-body">
                        <h1 class="display-4 text-warning"><i class="bi bi-check-circle-fill"></i></h1>
                        <h4 class="card-title">4</h4>
                        <p class="card-text">Total Orders</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-4">
            <a href="category-save.jsp" class="text-decoration-none" target="_blank">
                <div class="card text-center shadow">
                    <div class="card-body">
                        <h1 class="display-4 text-warning"><i class="bi bi-plus-circle-fill"></i></h1>
                        <h4 class="card-title">Add Category</h4>
                        <p class="card-text">Click to add category</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-4">
            <a href="product-save.jsp" class="text-decoration-none" target="_blank">
                <div class="card text-center shadow">
                    <div class="card-body">
                        <h1 class="display-4 text-warning"><i class="bi bi-cart-plus-fill"></i></h1>
                        <h4 class="card-title">Add Product</h4>
                        <p class="card-text">Click to add product</p>
                    </div>
                </div>
            </a>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
