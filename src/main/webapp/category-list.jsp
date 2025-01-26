<%@ page import="lk.ijse.ecommercewebapplicationjsp.categoryDTO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 1/25/2025
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>category-list</title>
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
    List<categoryDTO> categorytDTOList = (List<categoryDTO>) request.getAttribute("category");
    if (categorytDTOList != null && !categorytDTOList.isEmpty()) {
%>
<div class="container my-5">
    <table class="table table-hover">
        <thead>
        <tr>
            <th scope="col">Category ID</th>
            <th scope="col">Name</th>
            <th scope="col">Description</th>
            <th scope="col">Delete</th>


        </tr>
        </thead>
        <tbody>
        <% for (categoryDTO categoryDTO : categorytDTOList) { %>
        <tr>
            <td><%= categoryDTO.getCategoryId() %></td>
            <td><%= categoryDTO.getName() %></td>
            <td><%= categoryDTO.getDescription() %></td>
            <td>
                <button type="button" class="btn btn-danger btn-category-delete" data-category-id="<%= categoryDTO.getCategoryId() %>">Delete</button>
            </td>
        </tr>
        <% } %>
        </tbody>
    </table>
</div>
<% } else { %>
<div class="container my-5">
    <p class="text-center text-danger">No category available.</p>
</div>
<% } %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).on('click', '.btn-category-delete', function(e) {
        e.preventDefault();


        const category_id = $(this).data('category-id');

        if (confirm('Are you sure you want to delete this category?')) {
            $.ajax({
                url: `http://localhost:8080/E_CommerceWebApplication_JSP_war_exploded/category-delete`,
                type: "POST",
                data: { category_id: category_id },
                success: (res) => {
                    alert('Category deleted successfully!');
                    location.reload();
                },
                error: (err) => {
                    console.error(err);
                    alert('Failed to delete the Category.');
                }
            });
        }
    });
</script>

</body>
</html>
