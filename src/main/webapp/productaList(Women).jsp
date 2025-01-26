<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 1/19/2025
  Time: 11:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Women</title>
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
    </style>
</head>
<body>
<div class="container">
    <h2 class="section-title">Dresses</h2>
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
                    <img src="images/ec-18.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-19.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                    <div class="add-to-cart">
                        <i class="bi bi-cart-plus"></i> Add to cart
                    </div>
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
                    <img src="images/ec-8.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-6.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                    <div class="add-to-cart">
                        <i class="bi bi-cart-plus"></i> Add to cart
                    </div>
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
                    <img src="images/ec-9.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-15.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                    <div class="add-to-cart">
                        <i class="bi bi-cart-plus"></i> Add to cart
                    </div>
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
                    <img src="images/ec-56.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-57.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                    <div class="add-to-cart">
                        <i class="bi bi-cart-plus"></i> Add to cart
                    </div>
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
    <h2 class="section-title">Tops</h2>
</div>
<div class="container py-3">
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
        <div class="col">
            <div class="card h-100 border-0 position-relative">
                <div class="wishlist-icon">
                    <i class="far fa-heart"></i>
                </div>
                <div class="image-container">
                    <img src="images/ec-64.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-65.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                    <div class="add-to-cart">
                        <i class="bi bi-cart-plus"></i> Add to cart
                    </div>
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">Harley Skirt - Black</h5>
                    <div class="price-section">
                        <p class="mb-1">Rs 3,890.00</p>
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
                    <img src="images/ec-62.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-63.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                    <div class="add-to-cart">
                        <i class="bi bi-cart-plus"></i> Add to cart
                    </div>
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">V Neck Long Sleeve</h5>
                    <div class="price-section">
                        <p class="mb-1">Rs 3,250.00</p>
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
                    <img src="images/ec-60.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-61.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                    <div class="add-to-cart">
                        <i class="bi bi-cart-plus"></i> Add to cart
                    </div>
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">V Neck Long Sleeve - Pink</h5>
                    <div class="price-section">
                        <p class="mb-1">Rs 3,250.00</p>
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
                    <img src="images/ec-58.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-59.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                    <div class="add-to-cart">
                        <i class="bi bi-cart-plus"></i> Add to cart
                    </div>
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">V Neck Long Sleeve - black</h5>
                    <div class="price-section">
                        <p class="mb-1">Rs 3,990.00</p>
                        <p class="installment-text mb-1">or pay in 3 × Rs 1,663.33</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <h2 class="section-title">T-Shirts</h2>
</div>
<div class="container py-3">
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
        <div class="col">
            <div class="card h-100 border-0 position-relative">
                <div class="wishlist-icon">
                    <i class="far fa-heart"></i>
                </div>
                <div class="image-container">
                    <img src="images/ec-44.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-45.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                    <div class="add-to-cart">
                        <i class="bi bi-cart-plus"></i> Add to cart
                    </div>
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
                    <div class="add-to-cart">
                        <i class="bi bi-cart-plus"></i> Add to cart
                    </div>
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
                    <div class="add-to-cart">
                        <i class="bi bi-cart-plus"></i> Add to cart
                    </div>
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
                    <div class="add-to-cart">
                        <i class="bi bi-cart-plus"></i> Add to cart
                    </div>
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
<div class="container">
    <h2 class="section-title">Saree</h2>
</div>
<div class="container py-3">
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
        <div class="col">
            <div class="card h-100 border-0 position-relative">
                <div class="wishlist-icon">
                    <i class="far fa-heart"></i>
                </div>
                <div class="image-container">
                    <img src="images/ec-68.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-67.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                    <div class="add-to-cart">
                        <i class="bi bi-cart-plus"></i> Add to cart
                    </div>
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">ETHNIC FUSION PRINTED BATIK INSPIRED SILK SAREE</h5>
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
                    <img src="images/ec-73.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-74.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                    <div class="add-to-cart">
                        <i class="bi bi-cart-plus"></i> Add to cart
                    </div>
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">ETHNIC FUSION PRINTED BATIK INSPIRED SILK SAREE</h5>
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
                    <img src="images/ec-71.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-72.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                    <div class="add-to-cart">
                        <i class="bi bi-cart-plus"></i> Add to cart
                    </div>
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">ETHNIC FUSION PRINTED BATIK INSPIRED SILK SAREE</h5>
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
                    <img src="images/ec-69.jpg" class="card-img-top primary-image" alt="Rhea Layered Midi Dress">
                    <img src="images/ec-70.jpg" class="card-img-top secondary-image" alt="Rhea Layered Midi Dress">
                    <div class="add-to-cart">
                        <i class="bi bi-cart-plus"></i> Add to cart
                    </div>
                </div>
                <div class="card-body px-0">
                    <h5 class="card-title">ETHNIC FUSION PRINTED BATIK INSPIRED SILK SAREE</h5>
                    <div class="price-section">
                        <p class="mb-1">Rs 2,990.00</p>
                        <p class="installment-text mb-1">or pay in 3 × Rs 1,663.33</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
