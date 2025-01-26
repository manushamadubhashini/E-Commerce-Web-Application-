<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fashion Store</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <style>
        .navbar {
            padding: 1rem 2rem;
            background-color: white;
        }

        .nav-link {
            color: #333;
            font-weight: 500;
            padding: 0.5rem 1rem;
        }

        .carousel-item {
            height: 80vh;
            background-size: cover;
            background-position: center;
        }

        .carousel-caption {
            background: rgba(255, 255, 255, 0.8);
            padding: 2rem;
            border-radius: 10px;
            max-width: 600px;
            margin: 0 auto;
        }

        .carousel-caption h2 {
            color: #333;
            font-size: 2.5rem;
            margin-bottom: 1rem;
        }

        .carousel-caption p {
            color: #666;
            font-size: 1.2rem;
        }

        .carousel-indicators button {
            width: 12px;
            height: 12px;
            border-radius: 50%;
            margin: 0 5px;
        }
        .section-title {
            text-align: center;
            margin: 40px 0;
            color: #444;
            position: relative;
        }

        .section-title::before,
        .section-title::after {
            content: "";
            display: inline-block;
            width: 200px;
            height: 1px;
            background: black;
            margin: 0 20px;
            vertical-align: middle;
        }

        .section-description {
            text-align: center;
            color: #666;
            max-width: 800px;
            margin: 0 auto 40px;
        }
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
        .add-to-cart{
            padding: 10px;
            border-radius: 45px;
            border: 1px solid black;
            margin-left: 20px;
        }
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
                                    <li><a href="#">Watches</a></li>
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
            <div class="add-to-cart">
                <i class="bi bi-cart-plus"></i> Add to cart
            </div>

        </div>
    </div>
</nav>

<div id="fashionCarousel" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#fashionCarousel" data-bs-slide-to="0" class="active"></button>
        <button type="button" data-bs-target="#fashionCarousel" data-bs-slide-to="1"></button>
        <button type="button" data-bs-target="#fashionCarousel" data-bs-slide-to="2"></button>
    </div>

    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="images/e-commerce-image1.jpg" class="d-block w-100" alt="Fashion Slide 1">
            <div class="carousel-caption">
                <h2>Wear Your Confidence</h2>
                <p>Discover the latest trends in fashion</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="images/e-commerce2.jpg" class="d-block w-100" alt="Fashion Slide 2">
            <div class="carousel-caption">
                <h2>New Collection</h2>
                <p>Express yourself with our newest arrivals</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="images/e-commer3.jpg" class="d-block w-100" alt="Fashion Slide 3">
            <div class="carousel-caption">
                <h2>Summer Sale</h2>
                <p>Up to 50% off on selected items</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="images/e-commerce.jpg" class="d-block w-100" alt="Fashion Slide 3">
            <div class="carousel-caption">
                <h2>Summer Sale</h2>
                <p>Up to 50% off on selected items</p>
            </div>
        </div>
    </div>

    <button class="carousel-control-prev" type="button" data-bs-target="#fashionCarousel" data-bs-slide="prev">
        <span class="carousel-control-prev-icon"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#fashionCarousel" data-bs-slide="next">
        <span class="carousel-control-next-icon"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>
<div class="category-grid m-3">
    <div class="row g-4">
        <!-- Work Wear -->
        <div class="col-md-4">
            <div class="category-card">
                <img src="images/ec-1.jpg" class="img-fluid" alt="Work Wear">
            </div>
        </div>

        <!-- Dresses -->
        <div class="col-md-4">
            <div class="category-card">

                <img src="images/ec-2.jpg" class="img-fluid" alt="Dresses">
            </div>
        </div>

        <!-- Tops -->
        <div class="col-md-4">
            <div class="category-card">

                <img src="images/ec-3.jpg" class="img-fluid" alt="Tops">
            </div>
        </div>
    </div>
</div>
<div class="container">
    <h2 class="section-title">NEW ARRIVALS</h2>
    <p class="section-description">
        Bring an edge back into your wardrobe with cool looks you can't do without from Fashion Bug, the best place for online clothes shopping.
    </p>
</div>
<div class="container py-5">
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
        <!-- Product 1 -->
        <div class="col">
            <div class="card h-100 border-0 position-relative">
                <div class="wishlist-icon">
                    <i class="far fa-heart"></i>
                </div>
                <div class="image-container">
                    <img src="images/ec-8.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-6.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">Rhea Layered Midi Dress</h5>
                    <div class="price-section">
                        <p class="mb-1">Rs 5,490.00</p>
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
                    <img src="images/ec-9.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-15.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">Lady in Stripe - Dark Blue</h5>
                    <div class="price-section">
                        <p class="mb-1">Rs 5,250.00</p>
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
                    <img src="images/ec-11.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-12.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">Lady in Stripe - Pink</h5>
                    <div class="price-section">
                        <p class="mb-1">Rs 5,250.00</p>
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
                    <img src="images/ec-13.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-14.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">Lucia Oversized Dress - Grey Stripe</h5>
                    <div class="price-section">
                        <p class="mb-1">Rs 4,990.00</p>
                        <p class="installment-text mb-1">or pay in 3 × Rs 1,663.33</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <h2 class="section-title">Best Seller</h2>
    <p class="section-description">
        Discover our most popular items. Shop the favorites everyone loves!
    </p>
</div>
<div class="container py-5">
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
        <!-- Product 1 -->
        <div class="col">
            <div class="card h-100 border-0 position-relative">
                <div class="wishlist-icon">
                    <i class="far fa-heart"></i>
                </div>
                <div class="image-container">
                    <img src="images/ec-16.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-17.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">Rhea Layered Midi Dress</h5>
                    <div class="price-section">
                        <p class="mb-1">Rs 5,490.00</p>
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
                    <img src="images/ec-23.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-29.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">Lady in Stripe - Dark Blue</h5>
                    <div class="price-section">
                        <p class="mb-1">Rs 5,250.00</p>
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
                    <img src="images/ec-18.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-19.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">Lady in Stripe - Pink</h5>
                    <div class="price-section">
                        <p class="mb-1">Rs 5,250.00</p>
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
                    <img src="images/ec-20.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-21.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">Lucia Oversized Dress - Grey Stripe</h5>
                    <div class="price-section">
                        <p class="mb-1">Rs 4,990.00</p>
                        <p class="installment-text mb-1">or pay in 3 × Rs 1,663.33</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container py-5">
    <h1 class="mb-4">SHOP BY CATEGORY</h1>

    <div class="row">
        <div class="col-md-6">
            <div class="category-card">
                <img src="images/ec-29.jpg" alt="Women's Fashion" class="category-image">
                <div class="category-overlay">
                    <h2 class="category-title">WOMENS</h2>
                    <button class="shop-now-btn">SHOP NOW</button>
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div class="category-card">
                <img src="images/ec-26.jpg" alt="Men's Fashion" class="category-image">
                <div class="category-overlay">
                    <h2 class="category-title">MENS</h2>
                    <button class="shop-now-btn">SHOP NOW</button>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="category-card">
                <img src="images/ec-30.jpg" alt="Women's Fashion" class="category-image">
                <div class="category-overlay">
                    <h2 class="category-title">KIDS</h2>
                    <button class="shop-now-btn">SHOP NOW</button>
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div class="category-card">
                <img src="images/ec-31.jpg" alt="Men's Fashion" class="category-image">
                <div class="category-overlay">
                    <button class="shop-now-btn">SHOP NOW</button>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="category-card">
                <img src="images/ec-27.jpg" alt="Women's Fashion" class="category-image">
                <div class="category-overlay">
                    <h2 class="category-title">JEWELRY</h2>
                    <button class="shop-now-btn">SHOP NOW</button>
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div class="category-card">
                <img src="images/ec-28.jpg" alt="Men's Fashion" class="category-image">
                <div class="category-overlay">
                    <h2 class="category-title">HANDBAGS</h2>
                    <button class="shop-now-btn">SHOP NOW</button>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container py-5">
    <div class="category-card-2">
        <img src="images/Home_Page_Saree_Banner_Fashion-Bug-Sri-Lanka.jpg" alt="Men's Fashion" class="category-image">
    <div class="category-overlay">
        <h2 class="category-title">SAREE</h2>
        <button class="shop-now-btn">SHOP NOW</button>
    </div>
    </div>
</div>
<div class="container">
    <h2 class="section-title">SHIRTS</h2>
    <p class="section-description">
        Discover our most popular items. Shop the favorites everyone loves!
    </p>
</div>
<div class="container py-5">
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
        <div class="col">
            <div class="card h-100 border-0 position-relative">
                <div class="wishlist-icon">
                    <i class="far fa-heart"></i>
                </div>
                <div class="image-container">
                    <img src="images/ec-36.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-.j37pg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
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
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title"> Men's Formal Shirt</h5>
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
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title"> Men's Formal Shirt</h5>
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
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title"> Men's Formal Shirt</h5>
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
    <h2 class="section-title">T-SHIRTS</h2>
    <p class="section-description">
        Discover our most popular items. Shop the favorites everyone loves!
    </p>
</div>
<div class="container py-5">
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
        <div class="col">
            <div class="card h-100 border-0 position-relative">
                <div class="wishlist-icon">
                    <i class="far fa-heart"></i>
                </div>
                <div class="image-container">
                    <img src="images/ec-44.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-45.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">Women's Hd Screen Print Oversized T-Shirt Purple</h5>
                    <div class="price-section">
                        <p class="mb-1">Rs 2,990.00</p>
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
                    <img src="images/ec-46.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-47.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">Women's Hd Screen Print Oversized T-Shirt Black</h5>
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
                    <img src="images/ec-48.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-49.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">Women's Crew Neck Puff Print Oversized T-Shirt White</h5>
                    <div class="price-section">
                        <p class="mb-1">Rs 2,990.00</p>
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
                    <img src="images/ec-50.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-51.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">Women's Crew Neck Cotton T-Shirt Mint Green</h5>
                    <div class="price-section">
                        <p class="mb-1">Rs 990.00</p>
                        <p class="installment-text mb-1">or pay in 3 × Rs 1,663.33</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer -->
<footer class="text-center text-lg-start bg-body-tertiary text-muted">
    <!-- Section: Social media -->
    <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
        <!-- Left -->
        <div class="me-5 d-none d-lg-block">
            <span>Get connected with us on social networks:</span>
        </div>
        <!-- Left -->

        <!-- Right -->
        <div>
            <a href="" class="me-4 text-reset">
                <i class="fab fa-facebook-f"></i>
            </a>
            <a href="" class="me-4 text-reset">
                <i class="fab fa-twitter"></i>
            </a>
            <a href="" class="me-4 text-reset">
                <i class="fab fa-google"></i>
            </a>
            <a href="" class="me-4 text-reset">
                <i class="fab fa-instagram"></i>
            </a>
            <a href="" class="me-4 text-reset">
                <i class="fab fa-linkedin"></i>
            </a>
            <a href="" class="me-4 text-reset">
                <i class="fab fa-github"></i>
            </a>
        </div>
        <!-- Right -->
    </section>
    <!-- Section: Social media -->

    <!-- Section: Links  -->
    <section class="">
        <div class="container text-center text-md-start mt-5">
            <!-- Grid row -->
            <div class="row mt-3">
                <!-- Grid column -->
                <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                    <!-- Content -->
                    <h6 class="text-uppercase fw-bold mb-4">
                        <i class="fas fa-gem me-3"></i>Company name
                    </h6>
                    <p>
                        Here you can use rows and columns to organize your footer content. Lorem ipsum
                        dolor sit amet, consectetur adipisicing elit.
                    </p>
                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                    <!-- Links -->
                    <h6 class="text-uppercase fw-bold mb-4">
                        Products
                    </h6>
                    <p>
                        <a href="#!" class="text-reset">Angular</a>
                    </p>
                    <p>
                        <a href="#!" class="text-reset">React</a>
                    </p>
                    <p>
                        <a href="#!" class="text-reset">Vue</a>
                    </p>
                    <p>
                        <a href="#!" class="text-reset">Laravel</a>
                    </p>
                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                    <!-- Links -->
                    <h6 class="text-uppercase fw-bold mb-4">
                        Useful links
                    </h6>
                    <p>
                        <a href="#!" class="text-reset">Pricing</a>
                    </p>
                    <p>
                        <a href="#!" class="text-reset">Settings</a>
                    </p>
                    <p>
                        <a href="#!" class="text-reset">Orders</a>
                    </p>
                    <p>
                        <a href="#!" class="text-reset">Help</a>
                    </p>
                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                    <!-- Links -->
                    <h6 class="text-uppercase fw-bold mb-4">Contact</h6>
                    <p><i class="fas fa-home me-3"></i> New York, NY 10012, US</p>
                    <p>
                        <i class="fas fa-envelope me-3"></i>
                        info@example.com
                    </p>
                    <p><i class="fas fa-phone me-3"></i> + 01 234 567 88</p>
                    <p><i class="fas fa-print me-3"></i> + 01 234 567 89</p>
                </div>
                <!-- Grid column -->
            </div>
            <!-- Grid row -->
        </div>
    </section>
    <!-- Section: Links  -->

    <!-- Copyright -->
    <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
        © 2021 Copyright:
        <a class="text-reset fw-bold" href="https://mdbootstrap.com/">MDBootstrap.com</a>
    </div>
    <!-- Copyright -->
</footer>
<!-- Footer -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>