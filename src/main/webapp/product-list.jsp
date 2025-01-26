<%@ page import="java.util.List" %>
<%@ page import="lk.ijse.ecommercewebapplicationjsp.productDTO" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.io.ByteArrayOutputStream" %>
<%@ page import="java.util.Base64" %>
<%@ page import="java.io.IOException" %><%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 1/21/2025
  Time: 10:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <style>
        .table {
            background-color: darkgreen;
        }

        .table thead th {
            background-color: darkgreen;
            border-bottom: none;
            color: white;
        }
        tbody td{
            background-color: whitesmoke;
            vertical-align: middle;
        }

        .table-dark td, .table-dark th {
            /*border: 1px solid white;*/
            /*border-collapse: collapse;*/
            padding: 1rem;
            text-align: center !important;
        }

        .table-hover tbody tr:hover {
            background-color: #2a2f3d;
            cursor: pointer;
        }


        .rounded-circle {
            object-fit: cover;
        }
        .modal-content{
            background-color: #1a1f2d;
            color: white;
        }
        .form-control{
            background-color: #1a1f2d;
        }
        #product-image {
            width: 50px;
            height: 50px;
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

<%--<button  class="btn btn-primary" data-bs-toggle="modal"--%>
<%--         data-bs-target="#customerModal">+Add--%>
<%--</button>--%>
<%
    List<productDTO> productDTOList = (List<productDTO>) request.getAttribute("product");
    if (productDTOList != null && !productDTOList.isEmpty()) {
%>
<div class="container my-5">
    <table class="table table-hover">
        <thead>
        <tr>
            <th scope="col">Image</th>
            <th scope="col">Product ID</th>
            <th scope="col">Name</th>
            <th scope="col">Description</th>
            <th scope="col">Price</th>
            <th scope="col">Quantity</th>
            <th scope="col">Update</th>
            <th scope="col">Delete</th>

        </tr>
        </thead>
        <tbody>
        <% for (productDTO productDTO : productDTOList) { %>
        <tr>
            <td>
                <img src="<%= productDTO.getImages() %>" alt="<%= productDTO.getProductName() %>" id="product-image">
            </td>
            <td><%= productDTO.getProductId() %></td>
            <td><%= productDTO.getProductName() %></td>
            <td><%= productDTO.getDescription() %></td>
            <td><%= productDTO.getPrice() %></td>
            <td><%= productDTO.getQty() %></td>
            <td>
                <button type="button" class="btn btn-primary">Update</button>
            </td>
            <td>
                <button type="button" class="btn btn-danger btn-product-delete" data-product-id="<%= productDTO.getProductId() %>">Delete</button>
            </td>
        </tr>
        <% } %>
        </tbody>
    </table>
</div>
<% } else { %>
<div class="container my-5">
    <p class="text-center text-danger">No products available.</p>
</div>
<% } %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).on('click', '.btn-product-delete', function(e) {
        e.preventDefault();

        // Get the product ID from the data attribute
        const product_id = $(this).data('product-id');

        if (confirm('Are you sure you want to delete this product?')) {
            $.ajax({
                url: `http://localhost:8080/E_CommerceWebApplication_JSP_war_exploded/product-delete`,
                type: "POST",
                data: { product_id: product_id }, // Pass product_id as POST data
                success: (res) => {
                    alert('Product deleted successfully!');
                    location.reload(); // Reload the page to reflect changes
                },
                error: (err) => {
                    console.error(err);
                    alert('Failed to delete the product.');
                }
            });
        }
    });
</script>

</body>
</html>
