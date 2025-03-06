<%@ taglib uri="http://www.springframework.org/tags" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sách Đơn Hàng</title>
</head>
<body>
    <h1>Danh sách Đơn Hàng</h1>
    <table border="1">
        <thead>
            <tr>
                <th>ID Đơn Hàng</th>
                <th>ID Tài Khoản</th>
                <th>Ngày Đặt Hàng</th>
                <th>Tổng Tiền</th>
                <th>Trạng Thái</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="donhang" items="${listDH}">
                <tr>
                    <td>${donhang.nhm_dh_id}</td>
                    <td>${donhang.nhm_tk_id}</td>
                    <td>${donhang.nhm_ngay_dat_hang}</td>
                    <td>${donhang.nhm_tong_tien}</td>
                    <td>${donhang.nhm_trang_thai}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
