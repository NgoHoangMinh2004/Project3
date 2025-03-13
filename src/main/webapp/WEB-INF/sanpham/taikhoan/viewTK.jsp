<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh Sách Tài Khoản</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <h2 class="text-center mt-4">Danh Sách Tài Khoản</h2>
    
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>Tên tài khoản</th>
                <th>Email</th>
                <th>Số điện thoại</th>
                <th>Loại tài khoản</th>
                <th>Hành động</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="tk" items="${danhSachTaiKhoan}">
                <tr>
                    <td>${tk.nhm_tk_id}</td>
                    <td>${tk.nhm_ten_tk}</td>
                    <td>${tk.nhm_email}</td>
                    <td>${tk.nhm_sdt}</td>
                    <td>${tk.nhm_loai_tk}</td>
                    <td>
                        <a href="edit/${tk.nhm_tk_id}" class="btn btn-warning btn-sm">Sửa</a>
                        <a href="delete/${tk.nhm_tk_id}" class="btn btn-danger btn-sm">Xóa</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</div>

</body>
</html>
