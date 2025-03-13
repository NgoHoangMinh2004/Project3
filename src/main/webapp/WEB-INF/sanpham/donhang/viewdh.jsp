<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh sách đơn hàng</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        .btn {
            padding: 5px 10px;
            text-decoration: none;
            border-radius: 5px;
            color: white;
        }
        .btn-edit { background-color: #f0ad4e; }
        .btn-delete { background-color: #d9534f; }
    </style>
</head>
<body>
    <h2>Danh sách đơn hàng</h2>

    <table>
        <thead>
            <tr>
                <th>ID Đơn Hàng</th>
                <th>Tên Người Dùng</th>
                <th>Ngày Đặt Hàng</th>
                <th>Chi Tiết</th>
                <th>Hành Động</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="donhang" items="${listDonHang}">
                <tr>
                    <td>${donhang.nhm_dh_id}</td>
                    <td>${donhang.nhm_ten_nd}</td>
                    <td>${donhang.nhm_ngay_dat_hang}</td>
                    <td>${donhang.nhm_chi_tiet}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/sanpham/donhang/edit/${donhang.nhm_dh_id}" class="btn btn-edit">Sửa</a>
  <form action="${pageContext.request.contextPath}/sanpham/donhang/delete/${donhang.nhm_dh_id}" method="post">
    <button type="submit" class="btn btn-delete">Xóa</button>
</form>

            </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <br>
    <a href="${pageContext.request.contextPath}/sanpham/donhang/add">Thêm đơn hàng mới</a>
</body>
</html>
