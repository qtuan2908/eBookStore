<%--Trang mở khi dùng thẻ Sản phẩm--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Collection</title>
    <jsp:include page="/views/includes/frame.jsp" />
    <style>
        body {
            background-color: #f8f9fa;
        }

        .filter-sidebar {
            background: white;
            border-radius: 12px;
            position: sticky;
            top: 20px;
            height: fit-content;
        }

        .product-card {
            background: white;
            border-radius: 12px;
            transition: all 0.3s ease;
            height: 100%;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
        }

        .product-image {
            height: 200px;
            object-fit: cover;
            border-radius: 12px 12px 0 0;
        }

        .price {
            color: #2563eb;
            font-weight: 600;
        }

        .discount-badge {
            position: absolute;
            top: 10px;
            right: 10px;
            background: #dc2626;
            color: white;
            padding: 4px 8px;
            border-radius: 6px;
            font-size: 0.875rem;
        }

        .wishlist-btn {
            position: absolute;
            top: 10px;
            left: 10px;
            background: white;
            border: none;
            width: 32px;
            height: 32px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: all 0.2s;
        }

        .wishlist-btn:hover {
            background: #fee2e2;
            color: #dc2626;
        }

        .rating-stars {
            color: #fbbf24;
        }

        .category-badge {
            background: #e5e7eb;
            color: #4b5563;
            padding: 4px 8px;
            border-radius: 6px;
            font-size: 0.75rem;
        }

        .filter-group {
            border-bottom: 1px solid #e5e7eb;
            padding-bottom: 1rem;
            margin-bottom: 1rem;
        }

        .color-option {
            width: 24px;
            height: 24px;
            border-radius: 50%;
            cursor: pointer;
            position: relative;
        }

        .color-option.selected::after {
            content: '';
            position: absolute;
            inset: -3px;
            border: 2px solid #2563eb;
            border-radius: 50%;
        }

        .sort-btn {
            background: white;
            border: 1px solid #e5e7eb;
            padding: 8px 16px;
            border-radius: 8px;
            transition: all 0.2s;
        }

        .sort-btn:hover {
            background: #f3f4f6;
        }

        .cart-btn {
            background: #2563eb;
            color: white;
            border: none;
            transition: all 0.2s;
        }

        .cart-btn:hover {
            background: #1d4ed8;
            transform: translateY(-2px);
        }
    </style>
</head>
<body>
<div class="container py-5">
    <!-- Top Bar -->
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h4 class="mb-0">Product Collection</h4>
        <div class="d-flex gap-2 align-items-center">
            <span class="text-muted">Sort by:</span>
            <button class="sort-btn">
                Newest <i class="bi bi-chevron-down ms-2"></i>
            </button>
        </div>
    </div>

    <div class="row g-4">
        <!-- Filters Sidebar -->
        <div class="col-lg-3">
            <div class="filter-sidebar p-4 shadow-sm">
                <div class="filter-group">
                    <h6 class="mb-3">Categories</h6>
                    <div class="form-check mb-2">
                        <input class="form-check-input" type="checkbox" id="electronics">
                        <label class="form-check-label" for="electronics">
                            Electronics
                        </label>
                    </div>
                    <div class="form-check mb-2">
                        <input class="form-check-input" type="checkbox" id="clothing">
                        <label class="form-check-label" for="clothing">
                            Clothing
                        </label>
                    </div>
                    <div class="form-check mb-2">
                        <input class="form-check-input" type="checkbox" id="accessories">
                        <label class="form-check-label" for="accessories">
                            Accessories
                        </label>
                    </div>
                </div>

                <div class="filter-group">
                    <h6 class="mb-3">Price Range</h6>
                    <input type="range" class="form-range" min="0" max="1000" value="500">
                    <div class="d-flex justify-content-between">
                        <span class="text-muted">$0</span>
                        <span class="text-muted">$1000</span>
                    </div>
                </div>

                <div class="filter-group">
                    <h6 class="mb-3">Colors</h6>
                    <div class="d-flex gap-2">
                        <div class="color-option selected" style="background: #000000;"></div>
                        <div class="color-option" style="background: #dc2626;"></div>
                        <div class="color-option" style="background: #2563eb;"></div>
                        <div class="color-option" style="background: #16a34a;"></div>
                    </div>
                </div>

                <div class="filter-group">
                    <h6 class="mb-3">Rating</h6>
                    <div class="form-check mb-2">
                        <input class="form-check-input" type="radio" name="rating" id="rating4">
                        <label class="form-check-label" for="rating4">
                            <i class="bi bi-star-fill text-warning"></i> 4 & above
                        </label>
                    </div>
                    <div class="form-check mb-2">
                        <input class="form-check-input" type="radio" name="rating" id="rating3">
                        <label class="form-check-label" for="rating3">
                            <i class="bi bi-star-fill text-warning"></i> 3 & above
                        </label>
                    </div>
                </div>

                <button class="btn btn-outline-primary w-100">Apply Filters</button>
            </div>
        </div>

        <!-- Product Grid -->
        <div class="col-lg-9">
            <div class="row g-4">
                <!-- Product Card Loop -->
                <%-- Đây chỉ là mẫu - Có thể dùng hàm for để hiển thị sản phẩm từ dữ liệu --%>
                <%
                    for (int i = 1; i <= 6; i++) {
                %>
                <div class="col-md-4">
                    <div class="product-card shadow-sm">
                        <div class="position-relative">
                            <img src="./image.png" class="product-image w-100" alt="Product <%= i %>">
                            <span class="discount-badge">-20%</span>
                            <button class="wishlist-btn">
                                <i class="bi bi-heart"></i>
                            </button>
                        </div>
                        <div class="p-3">
                            <span class="category-badge mb-2 d-inline-block">Category <%= i %></span>
                            <h6 class="mb-1">Product Name <%= i %></h6>
                            <div class="rating-stars mb-2">
                                <i class="bi bi-star-fill"></i>
                                <i class="bi bi-star-fill"></i>
                                <i class="bi bi-star-fill"></i>
                                <i class="bi bi-star-fill"></i>
                                <i class="bi bi-star-half"></i>
                                <span class="text-muted ms-2">(4.5)</span>
                            </div>
                            <div class="d-flex justify-content-between align-items-center">
                                <span class="price">$200</span>
                                <button class="btn cart-btn">
                                    <i class="bi bi-cart-plus"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <% } %>
            </div>
        </div>
    </div>
</div>

</body>
</html>