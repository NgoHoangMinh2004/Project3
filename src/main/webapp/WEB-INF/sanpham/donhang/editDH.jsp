<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Chỉnh Sửa Đơn Hàng</title>
</head>
<body>
    <h2>Chỉnh Sửa Đơn Hàng</h2>
    
    <form action="/Project3/sanpham/donhang/edit" method="post">
        <input type="hidden" name="nhm_dh_id" value="${donHang.nhm_dh_id}" />
        <label>Chi tiết đơn hàng:</label>
        <input type="text" name="nhm_chi_tiet" value="${donHang.nhm_chi_tiet}" required />
        <button type="submit">Lưu thay đổi</button>
    </form>

    <br/>
    <a href="${pageContext.request.contextPath}/sanpham/donhang/viewdh">Quay Lại</a>
</body>
</html>
