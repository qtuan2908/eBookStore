<%--
    Code by qtuan2908
    File dùng để hiển thị danh sách sản phẩm trong trang index
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>

<body>
    <div class="container">
        <div class="row row-cols-1 row-cols-md-4 g-4">
    <%--        Bắt đầu làm vòng lặp từ cái này--%>
            <div class="col">
                <div class="card">
                    <a href=""><img src="./static/image/demo.jpg" class="card-img-top" alt="Ném bừa cái ảnh"></a>
                    <div class="card-body">
                        <h5 class="card-title"><a href="">Tiếng anh cơ bản cho con nít</a></h5>
                        <p class="card-text badge rounded-pill text-bg-light"><a href="">Sách Tiếng Anh</a></p>
                        <div class="d-flex justify-content-between align-items-center">
                            <span class="h5 mb-0">200.000 VNĐ</span>
                            <button class="btn btn-outline-primary"><i class="fa-solid fa-cart-plus"></i></button>
                        </div>
                    </div>
<%--                    <div class="card-footer bg-transparent border-success">--%>
<%--                        <!-- Thẻ a bên trên: cái href thì viết cái số sao ng ta đánh giá, còn lại cái kia thì vẫn là số sao ng ta đánh giá (VD 5 sao thì là 5 ngôi sao) -->--%>
<%--                        <a href="" onclick="event.preventDefault();" class="card-link btn" style="border: none;">(Đánh giá)</a>--%>
<%--                        <a href="#" class="card-link btn float-end" style="background-color: #FFD9BE;border: none;"></a>--%>
<%--                    </div>--%>
                </div>
            </div>
    <%--        Cho đến cái này là kết thúc vòng lặp show toàn bộ sách trong csdl--%>
        </div>
    </div>
</body>
</html>