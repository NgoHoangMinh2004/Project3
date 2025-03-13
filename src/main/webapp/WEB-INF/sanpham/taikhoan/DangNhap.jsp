<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Đăng nhập</title>
</head>
<body>
    <h2>Trang Đăng Nhập</h2>
    <form action="${pageContext.request.contextPath}/sanpham/taikhoan/login" method="post">
    <label>Email:</label>
    <input type="text" name="email" required>
    
    <label>Mật khẩu:</label>
    <input type="password" name="matkhau" required>
    
    <button type="submit">Đăng nhập</button>

    <c:if test="${not empty error}">
        <p style="color: red">${error}</p>
    </c:if>
</form>
<a href="http://localhost:8081/Project3/" class="btn">Trờ về trang chủ</a>
</body>
</html>
