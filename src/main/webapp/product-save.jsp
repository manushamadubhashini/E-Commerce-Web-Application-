<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 1/24/2025
  Time: 12:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>product-save</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <style>

        .modal-content {
            background-color: #C7F6C7;
            color: black;
        }
        .form-control {
            background-color: white;
            color: white;
        }
        .form-control::placeholder {
            color: #bbb;
        }
        .btn {
            background-color: darkred;
            color: white;
            margin-right: -18%;
        }
        h3{
            margin-right: -18%;
        }
        #product-image {
            width: 100%;
            max-width: 500px;
            height: auto;
            margin-top: 20px;
            border-radius: 10px;
            margin-right: -18%;
        }
        /*.custom-width {*/
        /*    max-width: 800px;*/
        /*    width: 100%;*/
        /*}*/
        .modal-body{
            padding: 30px 350px;
        }
        .col-sm-3{
            padding-right: 0px;
        }

        body{
            background-color: #C7F6C7;
        }
        .header {
            background-color: #28a745; /* Green background */
            color: white;
            padding: 15px;
            text-align: center;
        }
        body {
            font-family: Arial, sans-serif;
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
        label.label{
            padding: 10px 46px;
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
    <h1>Ellison Electronics</h1>
    <p>We specialize in Electronics</p>
</div>
    <div class="modal-dialog modal-dialog-centered custom-width">
        <div class="modal-content">
            <div class="modal-body">
                <h3 class="text-center mb-4">Product Save Form</h3>
                <form class="form-horizontal" action="product-save" method="post" enctype="multipart/form-data">
                    <div class="row mb-3 align-items-center">
                        <label for="product_id" class="col-sm-3 col-form-label label">Product ID :</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="product_id" placeholder="Enter Product ID" name="product_id" required>
                        </div>
                    </div>
                    <div class="row mb-3 align-items-center">
                        <label for="name" class="col-sm-3 col-form-label label" >Name :</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="name" placeholder="Enter Product Name" name="name" required>
                        </div>
                    </div>
                    <div class="row mb-3 align-items-center">
                        <label for="description" class="col-sm-3 col-form-label label">  Description :</label>
                        <div class="col-sm-9">
                            <textarea class="form-control" rows="5" id="description" placeholder="Enter Product Description" name="description" required></textarea>
                        </div>
                    </div>
                    <div class="row mb-3 align-items-center">
                        <label for="price" class="col-sm-3 col-form-label label">Price :</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="price" placeholder="Enter Product Price" name="price" required>
                        </div>
                    </div>
                    <div class="row mb-3 align-items-center">
                        <label for="qty" class="col-sm-3 col-form-label label">Quantity :</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="qty" placeholder="Enter Stock Quantity" name="qty" required>
                        </div>
                    </div>
                    <div class="row mb-3 align-items-center">
                        <label for="image" class="col-sm-3 col-form-label label">Image :</label>
                        <div class="col-sm-9">
                            <input type="file" class="form-control" id="image" accept="image/*" name="image" required>
                        </div>
                    </div>
                    <div class="form-group text-center">
                        <button type="submit" class="btn btn-danger px-4" id="btn-save">Save</button>
                    </div>
                    <div class="text-center">
                        <img src="images/ec-81_jpg-removebg-preview.png" id="product-image" alt="Product Preview">
                    </div>
                </form>
            </div>
        </div>
    </div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
    $('#btn-save').click((e) => {
        e.preventDefault();

        const formData = new FormData($('form')[0]);

        $.ajax({
            url: 'http://localhost:8080/E_CommerceWebApplication_JSP_war_exploded/product-save',
            type: 'POST',
            data: formData,
            processData: false,
            contentType: false,
            success: (response) => {
                alert('Product saved successfully!');
                location.reload();
            },
            error: (xhr, status, error) => {
                alert('Error saving product: ' + error);
            }
        });
    });
</script>
</body>
</html>
