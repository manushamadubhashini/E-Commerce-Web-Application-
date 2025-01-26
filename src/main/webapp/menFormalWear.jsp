<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 1/25/2025
  Time: 1:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
        <title>Formal Wear</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <style>
        .card-img-top {
            height: 400px;
            object-fit: cover;
        }
        .wishlist-icon {
            position: absolute;
            top: 10px;
            right: 10px;
            background: white;
            border-radius: 50%;
            padding: 8px;
            cursor: pointer;
        }
        .price-section {
            font-size: 0.9rem;
        }
        .installment-text {
            color: #666;
            font-size: 0.8rem;
        }
        .image-container {
            position: relative;
            overflow: hidden;
        }

        .card-img-top {
            height: 400px;
            object-fit: cover;
            transition: opacity 0.3s ease;
        }
        body{
            background-color: whitesmoke;
        }
        .card-body{
            background-color: whitesmoke;
        }

        .secondary-image {
            position: absolute;
            top: 0;
            left: 0;
            opacity: 0;
        }

        .image-container:hover .primary-image {
            opacity: 0;
        }

        .image-container:hover .secondary-image {
            opacity: 1;
        }
        h2{
            margin-top: 5%;
        }
        .add-to-cart {
            position: absolute;
            bottom: -50px;
            left: 0;
            right: 0;
            background-color: darkblue;
            color: white;
            text-align: center;
            padding: 10px;
            transition: all 0.3s ease;
            cursor: pointer;
        }

        .image-container:hover .add-to-cart {
            bottom: 0;
        }
        .nav-item:hover .mega-menu {
            display: block;
        }

        .category-title {
            font-weight: 600;
            margin-bottom: 1rem;
            font-size: 20px;
            color: darkblue;
        }

        .category-list {
            list-style: none;
            padding: 0;
        }

        .navbar {
            padding: 1rem 2rem;
            background-color: white;
        }

        .nav-link {
            color: #333;
            font-weight: 500;
            padding: 0.5rem 1rem;
        }


        .navbar-nav .nav-link {
            padding: 1rem;
        }
        .navbar-expand-lg{
            display: flex;
            justify-content: space-between;
        }

        .sign a{
            text-decoration: none;
            color: black;
            margin-left: 40px;
        }
        .category-card {
            position: relative;
            overflow: hidden;
            height: 500px;
            margin-bottom: 20px;
        }
        .category-card-2{
            position: relative;
            overflow: hidden;
            height: 400px;
        }

        .category-image {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .category-overlay {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            padding: 20px;
            background: linear-gradient(transparent, rgba(0,0,0,0.7));
        }
        .category-card {
            position: relative;
            overflow: hidden;
            height: 500px;
            margin-bottom: 20px;
        }
        .category-card-2{
            position: relative;
            overflow: hidden;
            height: 400px;
        }

        .category-image {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .category-overlay {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            padding: 20px;
            background: linear-gradient(transparent, rgba(0,0,0,0.7));
        }

        .category-title {
            color: white;
            font-size: 3rem;
            font-weight: bold;
            text-transform: uppercase;
            margin-bottom: 15px;
        }

        .shop-now-btn {
            background-color: white;
            color: black;
            border: none;
            padding: 8px 24px;
            font-weight: 500;
            transition: all 0.3s ease;
        }

        .shop-now-btn:hover {
            background-color: #f8f9fa;
            transform: translateY(-2px);
        }
        .category-image{
            transition: transform .2s;
        }
        .category-image:hover{
            transform: scale(1.1);
        }
        .mega-menu {
            padding: 1rem;
            box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15);
            border: none;
            width: 100%;
        }

        .nav-item:hover .mega-menu {
            display: block;
        }

        .category-title {
            font-weight: 600;
            margin-bottom: 1rem;
            font-size: 20px;
            color: darkblue;
        }

        .category-list {
            list-style: none;
            padding: 0;
        }

        .category-list li a {
            color: #666;
            text-decoration: none;
            padding: 0.25rem 0;
            display: block;
        }

        .category-list li a:hover {
            color: darkblue;
        }

        .navbar-nav .nav-link {
            padding: 1rem;
        }
        .navbar-expand-lg{
            display: flex;
            justify-content: space-between;
        }
        /*.add-to-cart{*/
        /*    padding: 10px;*/
        /*    border-radius: 45px;*/
        /*    border: 1px solid black;*/
        /*    margin-left: 20px;*/
        /*}*/
        .sign a{
            text-decoration: none;
            color: black;
            margin-left: 40px;
        }
    </style>
    </head>
<body>
<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="/api/placeholder/150/50" alt="Fashion Store Logo" height="40">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item dropdown position-static">
                    <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">
                        Men
                    </a>
                    <div class="dropdown-menu mega-menu">
                        <div class="row">
                            <div class="col-md-3">
                                <h5 class="category-title">CLOTHING</h5>
                                <ul class="category-list">
                                    <li><a href="#">All Clothing</a></li>
                                    <li><a href="menTshirt&Pool.jsp">T-shirts & Polos</a></li>
                                    <li><a href="menFormalWear.jsp">Formal Shirts</a></li>
                                    <li><a href="#">TROUSERS</a></li>
                                </ul>
                                <img src="images/ec-25.jpg" style="height:250px;width: 200px">
                            </div>
                            <div class="col-md-3">
                                <h5 class="category-title">ACCESSORIES</h5>
                                <ul class="category-list">
                                    <li><a href="#">All Accessories</a></li>
                                    <li><a href="menHats&Caps.jsp">Hats & Caps</a></li>
                                    <li><a href="#">Belt</a></li>
                                    <li><a href="menWallet.jsp">Wallet</a></li>
                                </ul>
                                <img src="images/ec-54.jpg" style="height:300px;width: 200px">

                            </div>
                        </div>
                    </div>
                </li>
                <li class="nav-item dropdown position-static">
                    <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">
                        Women
                    </a>
                    <div class="dropdown-menu mega-menu">
                        <div class="row">
                            <div class="col-md-3">
                                <h5 class="category-title">CLOTHING</h5>
                                <ul class="category-list">
                                    <li><a href="product-list">All Clothing</a></li>
                                    <li><a href="womenDress.jsp">Dress</a></li>
                                    <li><a href="womenTops.jsp">Tops</a></li>
                                    <li><a href="#">TROUSERS</a></li>
                                    <li><a href="#">T-Shirt</a></li>
                                    <li><a href="womenSaree.jsp">Saree</a></li>
                                </ul>
                                <img src="images/ec-8.jpg" style="height:250px;width: 200px">
                            </div>
                            <div class="col-md-3">
                                <h5 class="category-title">ACCESSORIES</h5>
                                <ul class="category-list">
                                    <li><a href="#">All Accessories</a></li>
                                    <li><a href="womenWatches.jsp">Watches</a></li>
                                    <li><a href="#">Belt</a></li>
                                    <li><a href="#">Wallet</a></li>
                                    <li><a href="#">HandBags</a></li>
                                    <li><a href="#">Hair Wool Band</a></li>
                                </ul>
                                <img src="images/ec-55.jpg" style="height:250px;width: 200px">

                            </div>
                        </div>
                    </div>
                </li>
                <li class="nav-item dropdown position-static">
                    <%--                    <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">--%>
                    <%--                        Kids--%>
                    <%--                    </a>--%>
                    <%--                    <div class="dropdown-menu mega-menu">--%>
                    <%--                        <div class="row">--%>
                    <%--                            <div class="col-md-3">--%>
                    <%--                                <h5 class="category-title">CLOTHING</h5>--%>
                    <%--                                <ul class="category-list">--%>
                    <%--                                    <li><a href="#">All Clothing</a></li>--%>
                    <%--                                    <li><a href="#">Shirt</a></li>--%>
                    <%--                                    <li><a href="#">TROUSERS</a></li>--%>
                    <%--                                    <li><a href="#">T-Shirt</a></li>--%>
                    <%--                                </ul>--%>
                    <%--                                <img src="images/ec-8.jpg" style="height:250px;width: 200px">--%>
                    <%--                            </div>--%>
                    <%--                            <div class="col-md-3">--%>
                    <%--                                <h5 class="category-title">ACCESSORIES</h5>--%>
                    <%--                                <ul class="category-list">--%>
                    <%--                                    <li><a href="#">All Accessories</a></li>--%>
                    <%--                                    <li><a href="womenWatches.jsp">Watches</a></li>--%>
                    <%--                                    <li><a href="#">Shoes</a></li>--%>
                    <%--                                    <li><a href="#">Bags</a></li>--%>
                    <%--                                </ul>--%>
                    <%--                                <img src="images/ec-55.jpg" style="height:250px;width: 200px">--%>

                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                </li>
                <li class="nav-item"><a class="nav-link" href="#">Kids</a></li>
                <li class="nav-item"><a class="nav-link" href="jewellery.jsp">Jewelry</a></li>
                <li class="nav-item"><a class="nav-link" href="HandBags.jsp">HandBags</a></li>
            </ul>
            <%--                <li class="nav-item"><a class="nav-link" href="#">MEN</a></li>--%>
            <%--                <li class="nav-item"><a class="nav-link" href="#">KIDS</a></li>--%>
            <%--                <li class="nav-item"><a class="nav-link" href="#">MOTHER & BABY</a></li>--%>
            <%--                <li class="nav-item"><a class="nav-link" href="#">HOME & LIFESTYLE</a></li>--%>
            <%--                <li class="nav-item"><a class="nav-link" href="#">HEALTH & BEAUTY</a></li>--%>
            <%--                <li class="nav-item"><a class="nav-link" href="#">TOYS</a></li>--%>
            <%--                <li class="nav-item"><a class="nav-link text-danger" href="#">SALE</a></li>--%>
            </ul>
            <div class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search the store">
                <button class="btn btn-outline-dark" type="submit">
                    <i class="bi bi-search"></i>
                </button>
            </div>
            <div class="sign">
                <a href="#">sign up/Login</a>
            </div>
<%--            <div class="add-to-cart">--%>
<%--                <i class="bi bi-cart-plus"></i> Add to cart--%>
<%--            </div>--%>

        </div>
    </div>
</nav>


<div class="container">
    <h2 class="section-title">Formal Shirt</h2>
</div>
<div class="container py-3">
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
        <!-- Product 1 -->
        <div class="col">
            <div class="card h-100 border-0 position-relative">
                <div class="wishlist-icon">
                    <i class="far fa-heart"></i>
                </div>
                <div class="image-container">
                    <img src="images/ec-36.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-37.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                    <div class="add-to-cart">
                        <i class="bi bi-cart-plus"></i> Add to cart
                    </div>
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">Men's Regular Fit Formal Shirt</h5>
                    <div class="price-section">
                        <p class="mb-1">Rs 2,790.00</p>
                        <p class="installment-text mb-1">or pay in 3 × Rs 1,830.00</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Product 2 -->
        <div class="col">
            <div class="card h-100 border-0 position-relative">
                <div class="wishlist-icon">
                    <i class="far fa-heart"></i>
                </div>
                <div class="image-container">
                    <img src="images/ec-38.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-39.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                    <div class="add-to-cart">
                        <i class="bi bi-cart-plus"></i> Add to cart
                    </div>
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">Men's Formal Shirt</h5>
                    <div class="price-section">
                        <p class="mb-1">Rs 2,790.00</p>
                        <p class="installment-text mb-1">or pay in 3 × Rs 1,750.00</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Product 3 -->
        <div class="col">
            <div class="card h-100 border-0 position-relative">
                <div class="wishlist-icon">
                    <i class="far fa-heart"></i>
                </div>
                <div class="image-container">
                    <img src="images/ec-40.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-41.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                    <div class="add-to-cart">
                        <i class="bi bi-cart-plus"></i> Add to cart
                    </div>
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">Men's Formal Shirt</h5>
                    <div class="price-section">
                        <p class="mb-1">Rs 2,790.00</p>
                        <p class="installment-text mb-1">or pay in 3 × Rs 1,750.00</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Product 4 -->
        <div class="col">
            <div class="card h-100 border-0 position-relative">
                <div class="wishlist-icon">
                    <i class="far fa-heart"></i>
                </div>
                <div class="image-container">
                    <img src="images/ec-42.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-43.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                    <div class="add-to-cart">
                        <i class="bi bi-cart-plus"></i> Add to cart
                    </div>
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">Men's Formal Shirt</h5>
                    <div class="price-section">
                        <p class="mb-1">Rs 2,790.00</p>
                        <p class="installment-text mb-1">or pay in 3 × Rs 1,663.33</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">

</div>
<div class="container py-3">
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
        <!-- Product 1 -->
        <div class="col">
            <div class="card h-100 border-0 position-relative">
                <div class="wishlist-icon">
                    <i class="far fa-heart"></i>
                </div>
                <div class="image-container">
                    <img src="images/ec-82.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-83.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                    <div class="add-to-cart">
                        <i class="bi bi-cart-plus"></i> Add to cart
                    </div>
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">Men's Regular Fit Formal Shirt</h5>
                    <div class="price-section">
                        <p class="mb-1">Rs 2,790.00</p>
                        <p class="installment-text mb-1">or pay in 3 × Rs 1,830.00</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Product 2 -->
        <div class="col">
            <div class="card h-100 border-0 position-relative">
                <div class="wishlist-icon">
                    <i class="far fa-heart"></i>
                </div>
                <div class="image-container">
                    <img src="images/ec-84.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-85.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                    <div class="add-to-cart">
                        <i class="bi bi-cart-plus"></i> Add to cart
                    </div>
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">Men's Formal Shirt</h5>
                    <div class="price-section">
                        <p class="mb-1">Rs 2,790.00</p>
                        <p class="installment-text mb-1">or pay in 3 × Rs 1,750.00</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Product 3 -->
        <div class="col">
            <div class="card h-100 border-0 position-relative">
                <div class="wishlist-icon">
                    <i class="far fa-heart"></i>
                </div>
                <div class="image-container">
                    <img src="images/ec-86.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-87.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                    <div class="add-to-cart">
                        <i class="bi bi-cart-plus"></i> Add to cart
                    </div>
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">Men's Formal Shirt</h5>
                    <div class="price-section">
                        <p class="mb-1">Rs 2,790.00</p>
                        <p class="installment-text mb-1">or pay in 3 × Rs 1,750.00</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Product 4 -->
        <div class="col">
            <div class="card h-100 border-0 position-relative">
                <div class="wishlist-icon">
                    <i class="far fa-heart"></i>
                </div>
                <div class="image-container">
                    <img src="images/ec-88.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-89.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                    <div class="add-to-cart">
                        <i class="bi bi-cart-plus"></i> Add to cart
                    </div>
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">Men's Formal Shirt</h5>
                    <div class="price-section">
                        <p class="mb-1">Rs 2,790.00</p>
                        <p class="installment-text mb-1">or pay in 3 × Rs 1,663.33</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container py-3">
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
        <!-- Product 1 -->
        <div class="col">
            <div class="card h-100 border-0 position-relative">
                <div class="wishlist-icon">
                    <i class="far fa-heart"></i>
                </div>
                <div class="image-container">
                    <img src="images/ec-90.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-91.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                    <div class="add-to-cart">
                        <i class="bi bi-cart-plus"></i> Add to cart
                    </div>
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">Men's Regular Fit Formal Shirt</h5>
                    <div class="price-section">
                        <p class="mb-1">Rs 2,790.00</p>
                        <p class="installment-text mb-1">or pay in 3 × Rs 1,830.00</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Product 2 -->
        <div class="col">
            <div class="card h-100 border-0 position-relative">
                <div class="wishlist-icon">
                    <i class="far fa-heart"></i>
                </div>
                <div class="image-container">
                    <img src="images/ec-92.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-93.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                    <div class="add-to-cart">
                        <i class="bi bi-cart-plus"></i> Add to cart
                    </div>
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">Men's Formal Shirt</h5>
                    <div class="price-section">
                        <p class="mb-1">Rs 2,790.00</p>
                        <p class="installment-text mb-1">or pay in 3 × Rs 1,750.00</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Product 3 -->
        <div class="col">
            <div class="card h-100 border-0 position-relative">
                <div class="wishlist-icon">
                    <i class="far fa-heart"></i>
                </div>
                <div class="image-container">
                    <img src="images/ec-94.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-95.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                    <div class="add-to-cart">
                        <i class="bi bi-cart-plus"></i> Add to cart
                    </div>
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">Men's Formal Shirt</h5>
                    <div class="price-section">
                        <p class="mb-1">Rs 2,790.00</p>
                        <p class="installment-text mb-1">or pay in 3 × Rs 1,750.00</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Product 4 -->
        <div class="col">
            <div class="card h-100 border-0 position-relative">
                <div class="wishlist-icon">
                    <i class="far fa-heart"></i>
                </div>
                <div class="image-container">
                    <img src="images/ec-96.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-97.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                    <div class="add-to-cart">
                        <i class="bi bi-cart-plus"></i> Add to cart
                    </div>
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">Men's Formal Shirt</h5>
                    <div class="price-section">
                        <p class="mb-1">Rs 2,790.00</p>
                        <p class="installment-text mb-1">or pay in 3 × Rs 1,663.33</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
