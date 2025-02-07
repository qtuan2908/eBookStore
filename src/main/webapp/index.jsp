<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hanoi Aptech Bookstore</title>
    <%@ include file="/views/includes/frame.jsp" %> <!-- Import frame.jsp chứa các link CSS/JS -->
</head>
<body>
<%-- Trang header --%>
<jsp:include page="/views/partials/header.jsp" />

<%-- Carousel (nếu có) --%>
<jsp:include page="/views/partials/carousel.jsp" />

<a href="register.jsp">Đăng ký</a>
<a href="category.jsp">Category</a>
<a href="dbconnecttest.jsp">Test con</a>

<%-- Thân trang --%>
<br>
<jsp:include page="/views/partials/body.jsp" />
<br>

<%-- Trang footer --%>
<jsp:include page="/views/partials/footer.jsp" />
</body>
</html>
