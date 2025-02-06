<%-- Code by qtuan2908 File dùng để hiển thị thanh header navbar --%>

    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html lang="vi">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Header</title>
        </head>

        <body>
            <!-- Navbar tren -->
            <div>
                <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
                    <div class="container d-flex justify-content-between align-items-center">
                        <!-- Logo -->
                        <a class="navbar-brand" href="#">
                            <img src="<%= request.getContextPath() %>/static/image/logo.png" alt="Logo" width="30" height="30"
                                class="d-inline-block align-text-top">
                            Hanoi Aptech BookStore
                        </a>

                        <!-- Tìm kiếm -->
                        <form class="d-none d-lg-flex mx-auto" style=" width: 50%; ">
                            <div class="input-group">
                                <select class="form-select" aria-label="Default select example"
                                    style="width: auto; min-width: 100px;">
                                    <option selected>Tất cả danh mục</option>
                                    <option value="1">Sách</option>
                                    <option value="2">Văn phòng phẩm</option>
                                    <option value="3">Đồ chơi</option>
                                </select>
                                <input class="form-control" type="search" placeholder="Tìm kiếm sách..."
                                    aria-label="Search" style="width: 60%;">
                                <button class="btn btn-outline-primary" type="submit">
                                    <i class="fas fa-search"></i>
                                </button>
                            </div>
                        </form>

                        <!-- Nút tài khoản và giỏ hàng -->
                        <div class="d-flex align-items-center">
                            <!-- Sản phẩm yêu thích -->
                            <!-- Wishlist -->
                            <div class="dropdown">
                                <a href="#" class="btn position-relative dropdown-toggle" id="wishlistDropdown"
                                    role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="fa-regular fa-heart"></i>
                                    <span
                                        class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">0</span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-end p-4 text-body-secondary"
                                    style="width: 500px;">
                                    <p>
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th scope="col">Tên hàng</th>
                                                    <th scope="col">Giá tiền</th>
                                                    <th scope="col">Thao tác</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <p class="text-break">Hello Kitty</p>
                                                    </td>
                                                    <td>
                                                        <p class="text-center">200.000 VNĐ</p>
                                                    </td>
                                                    <td>
                                                        <p class="text-center"><a href="" style="text-decoration: none;"><i
                                                                    class="fa-solid fa-x"></i></a></p>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </p>
                                    <p class="text-center fw-bold"><a href="<%= request.getContextPath() %>/wishlist" style="color: black;" class="btn">Xem danh sách yêu thích</a></p>
                                </div>
                            </div>
                            </div>

                            <!-- Giỏ hàng -->
                            <div class="dropdown">
                                <a href="#" class="btn position-relative dropdown-toggle" id="cartDropdown"
                                    role="button" data-bs-toggle="dropdown" aria-expanded="false" style="border: none">
                                    <i class="fa-solid fa-cart-shopping"></i>
                                    <span
                                        class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">0</span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-end p-4 text-body-secondary"
                                    style="width: 500px;">
                                    <p>
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th scope="col">#</th>
                                                    <th scope="col">Tên hàng</th>
                                                    <th scope="col">Số lượng</th>
                                                    <th scope="col">Thao tác</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th scope="row">1</th>
                                                    <td>
                                                        <p class="text-break">Hello Kitty</p>
                                                    </td>
                                                    <td>
                                                        <p class="text-center">3</p>
                                                    </td>
                                                    <td>
                                                        <p class="text-center"><a href="" style="text-decoration: none;"><i
                                                                    class="fa-solid fa-x"></i></a></p>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </p>
                                    <p class="text-center fw-bold"><a href="<%= request.getContextPath() %>/cart" style="color: black;" class="btn">Xem giỏ hàng</a></p>
                                </div>
                            </div>
                            <!-- Tài khoản người dùng -->
                            <div class="dropdown">
                                <a href="#" class="btn position-relative dropdown-toggle" id="userDropdown"
                                    role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="fa-regular fa-user"></i>
                                </a>
                                <form class="dropdown-menu dropdown-menu-end p-3" style="width: 300px;">
                                    <div class="mb-3">
                                        <label for="exampleDropdownFormEmail2" class="form-label">Email address</label>
                                        <input type="email" class="form-control" id="exampleDropdownFormEmail2"
                                            placeholder="email@example.com">
                                    </div>
                                    <div class="mb-3">
                                        <label for="exampleDropdownFormPassword2" class="form-label">Password</label>
                                        <input type="password" class="form-control" id="exampleDropdownFormPassword2"
                                            placeholder="Password">
                                    </div>
                                    <div class="mb-3">
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input" id="dropdownCheck2">
                                            <label class="form-check-label" for="dropdownCheck2">
                                                Remember me
                                            </label>
                                        </div>
                                    </div>
                                    <div class="text-center">
                                        <button type="submit" class="btn">Sign in</button>
                                        <button type="submit" class="btn">Chưa có tài khoản? Đăng ký</button>
                                    </div>
                                </form>
                            </div>
                        </div>

                    </div>
                </nav>
            </div>

            <!-- Navbar duoi -->
            <div>
                <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
                    <div class="container">
                        <div class="dropdown">
                            <a class="btn dropdown-toggle " href="#" role="button" data-bs-toggle="dropdown"
                                aria-expanded="false" style="background-color: #EA6C80; color: snow; border: none">
                                Danh mục sản phẩm
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Sách lập trình</a></li>
                                <li><a class="dropdown-item" href="#">Another action</a></li>
                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                            </ul>
                        </div>

                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarMenu" aria-controls="navbarMenu" aria-expanded="false"
                            aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarMenu">
                            <ul class="navbar-nav mx-auto">
                                <li class="nav-item">
                                    <a class="nav-link" href="<%= request.getContextPath() %>/">Trang Chủ</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="<%= request.getContextPath() %>/about">Về Chúng Tôi</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="<%= request.getContextPath() %>/products">Sản Phẩm</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="taiLieuDropdown"
                                        data-bs-toggle="dropdown" aria-expanded="false">
                                        Tài Liệu Học
                                    </a>
                                    <ul class="dropdown-menu" aria-labelledby="taiLieuDropdown">
                                        <li><a class="dropdown-item" href="#">E-books</a></li>
                                        <li><a class="dropdown-item" href="#">Video Hướng Dẫn</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="hoTroDropdown"
                                        data-bs-toggle="dropdown" aria-expanded="false">
                                        Hỗ Trợ Khách Hàng
                                    </a>
                                    <ul class="dropdown-menu" aria-labelledby="hoTroDropdown">
                                        <li><a class="dropdown-item" href="<%= request.getContextPath() %>/contact">Liên Hệ</a></li>
                                        <li><a class="dropdown-item" href="<%= request.getContextPath() %>/faq">Câu Hỏi Thường Gặp</a></li>
                                        <li><a class="dropdown-item" href="<%= request.getContextPath() %>/order-tracking">Theo dõi đơn hàng</a></li>
                                    </ul>
                                </li>
                            </ul>

                            <span class="navbar-text text-white ml-auto">Đường dây nóng: <b>0123.456.789</b></span>
                        </div>
                    </div>
                </nav>
            </div>

        </body>

        </html>