<%@ page import="lk.ijse.ecommercewebapplicationjsp.productDTO" %><%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 1/25/2025
  Time: 1:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>product-update</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <style>
        body {
            background-color: #1a1f2d;
            color: white;
        }
        .modal-content {
            background-color: #1a1f2d;
            color: white;
        }
        .form-control {
            background-color: #2a2f3e;
            color: white;
            border: 1px solid #444;
        }
        .form-control::placeholder {
            color: #bbb;
        }
        .btn {
            background-color: darkred;
            color: white;
        }
        #product-image {
            width: 100%;
            max-width: 500px;
            height: auto;
            margin-top: 20px;
            border-radius: 10px;
        }
        .custom-width {
            max-width: 800px;
            width: 100%;
        }
        .modal-body{
            padding: 20px 70px;
        }
    </style>
</head>
<body>
<div class="modal fade show" tabindex="-1" style="display: block; background-color: rgba(0,0,0,0.6);" role="dialog">
    <div class="modal-dialog modal-dialog-centered custom-width">
        <div class="modal-content">
            <div class="modal-body">
                <h4 class="text-center mb-4">Product Update Form</h4>
                <form class="form-horizontal" action="product-update" method="post" enctype="multipart/form-data">
                    <div class="row mb-3 align-items-center">
                        <label for="product_id" class="col-sm-3 col-form-label">Product ID :</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="product_id" placeholder="Enter Product ID" name="product_id" required>
                        </div>
                    </div>
                    <div class="row mb-3 align-items-center">
                        <label for="name" class="col-sm-3 col-form-label">Name :</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="name" placeholder="Enter Product Name" name="name" required>
                        </div>
                    </div>
                    <div class="row mb-3 align-items-center">
                        <label for="description" class="col-sm-3 col-form-label">  Description :</label>
                        <div class="col-sm-9">
                            <textarea class="form-control" rows="5" id="description" placeholder="Enter Product Description" name="description" required></textarea>
                        </div>
                    </div>
                    <div class="row mb-3 align-items-center">
                        <label for="price" class="col-sm-3 col-form-label">Price :</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="price" placeholder="Enter Product Price" name="price" required>
                        </div>
                    </div>
                    <div class="row mb-3 align-items-center">
                        <label for="qty" class="col-sm-3 col-form-label">Quantity :</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="qty" placeholder="Enter Stock Quantity" name="qty" required>
                        </div>
                    </div>
                    <div class="row mb-3 align-items-center">
                        <label for="image" class="col-sm-3 col-form-label">Image :</label>
                        <div class="col-sm-9">
                            <input type="file" class="form-control" id="image" accept="image/*" name="image" required>
                        </div>
                    </div>
                    <div class="form-group text-center">
                        <button type="submit" class="btn btn-danger px-4">Update</button>
                    </div>
                    <div class="text-center">
                        <img src="images/ec-81_jpg-removebg-preview.png" id="product-image" alt="Product Preview">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<%
    productDTO product = (productDTO) request.getAttribute("product");
    if (product != null) {
%>
<script>
    document.getElementById('product_id').value = '<%= product.getProductId() %>';
    document.getElementById('name').value = '<%= product.getProductName() %>';
    document.getElementById('description').value = '<%= product.getDescription() %>';
    document.getElementById('price').value = '<%= product.getPrice() %>';
    document.getElementById('qty').value = '<%= product.getQty() %>';
    document.getElementById('product-image').src = '<%= product.getImages() %>';
</script>
<% } %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
