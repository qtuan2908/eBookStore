<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Về Chúng Tôi</title>

    <!-- Dùng jsp:include thay vì include file -->
    <jsp:include page="/views/includes/frame.jsp" />
</head>

<body>

<jsp:include page="/views/partials/header.jsp"/>
<div class="container mt-5">
    <!-- Tiêu đề -->
    <div class="text-center mb-5">
        <h1>Về Chúng Tôi</h1>
        <p class="text-muted">Tìm hiểu thêm về Cửa Hàng Sách của chúng tôi</p>
    </div>

    <!-- Nội dung chính -->
    <div class="row">
        <!-- Phần giới thiệu -->
        <div class="col-md-6">
            <h2>Sứ Mệnh Của Chúng Tôi</h2>
            <p>
                Tại <strong>Cửa Hàng Sách</strong>, chúng tôi cam kết mang đến cho khách hàng những cuốn sách chất lượng nhất, phong phú về nội dung và thể loại. Chúng tôi tin rằng sách là nguồn tri thức vô giá, giúp kết nối con người với thế giới.
            </p>
            <p>
                Từ những tác phẩm kinh điển đến các đầu sách hiện đại, cửa hàng của chúng tôi luôn cập nhật để đáp ứng nhu cầu đa dạng của độc giả.
            </p>
        </div>

        <!-- Hình ảnh minh họa -->
        <div class="col-md-6">
            <img src="https://via.placeholder.com/500x300" class="img-fluid rounded" alt="Giới thiệu về chúng tôi">
        </div>
    </div>

    <!-- Giá trị cốt lõi -->
    <div class="row mt-5">
        <div class="col-md-4 text-center">
            <i class="fas fa-book fa-3x text-primary mb-3"></i>
            <h5>Chất Lượng Cao</h5>
            <p>Chỉ cung cấp những cuốn sách có giá trị, được chọn lọc kỹ lưỡng.</p>
        </div>
        <div class="col-md-4 text-center">
            <i class="fas fa-heart fa-3x text-danger mb-3"></i>
            <h5>Đam Mê Đọc Sách</h5>
            <p>Lan tỏa niềm yêu thích đọc sách đến mọi đối tượng độc giả.</p>
        </div>
        <div class="col-md-4 text-center">
            <i class="fas fa-users fa-3x text-success mb-3"></i>
            <h5>Khách Hàng Là Trọng Tâm</h5>
            <p>Luôn nỗ lực để mang lại trải nghiệm tuyệt vời cho khách hàng.</p>
        </div>
    </div>

    <!-- Đội ngũ -->
    <div class="mt-5">
        <h2 class="text-center mb-4">Đội Ngũ Của Chúng Tôi</h2>
        <div class="row">
            <div class="col-md-4 text-center">
                <img src="https://via.placeholder.com/150" class="rounded-circle mb-3" alt="Thành viên">
                <h5>Nguyễn Văn A</h5>
                <p>Giám Đốc Điều Hành</p>
            </div>
            <div class="col-md-4 text-center">
                <img src="https://via.placeholder.com/150" class="rounded-circle mb-3" alt="Thành viên">
                <h5>Trần Thị B</h5>
                <p>Trưởng Phòng Marketing</p>
            </div>
            <div class="col-md-4 text-center">
                <img src="https://via.placeholder.com/150" class="rounded-circle mb-3" alt="Thành viên">
                <h5>Phạm Văn C</h5>
                <p>Chuyên Gia Tư Vấn Sách</p>
            </div>
        </div>
    </div>
</div>

<!-- Bao gồm Footer -->
<jsp:include page="/views/partials/footer.jsp" />

</body>

</html>
