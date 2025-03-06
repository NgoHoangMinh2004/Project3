<%@ taglib uri="http://www.springframework.org/tags" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi Tiết Đơn Hàng</title>
</head>
<body>
    <h1>Chi Tiết Đơn Hàng</h1>
    <table border="1">
        <thead>
            <tr>
                <th>ID Chi Tiết Đơn Hàng</th>
                <th>ID Đơn Hàng</th>
                <th>ID Sản Phẩm</th>
                <th>Số Lượng</th>
                <th>Giá Bán</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="chitiet" items="${listCTDH}">
                <tr>
                    <td>${chitiet.nhm_ctdh_id}</td>
                    <td>${chitiet.nhm_dh_id}</td>
                    <td>${chitiet.nhm_sp_id}</td>
                    <td>${chitiet.nhm_so_luong}</td>
                    <td>${chitiet.nhm_gia_ban}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
