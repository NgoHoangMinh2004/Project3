<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Đăng ký tài khoản</title>
</head>
<body>
    <h2>Đăng ký tài khoản</h2>
   <form action="${pageContext.request.contextPath}/taikhoan/save" method="post">

        <label>Tên tài khoản:</label>
        <input type="text" name="nhm_ten_tk" required /><br>

        <label>Email:</label>
        <input type="email" name="nhm_email" required /><br>

        <label>Số điện thoại:</label>
        <input type="text" name="nhm_sdt" required /><br>

        <label>Mật khẩu:</label>
        <input type="password" name="nhm_mat_khau" required /><br>
        <button type="submit">Đăng ký</button>
       
       
        <a href="http://localhost:8081/Project3/" class="btn">Trờ về trang chủ</a>
    </form>
</body>
</html>
