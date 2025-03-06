<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"  %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Danh Sách Sản Phẩm</title>
</head>
<body>
    <h2>Danh Sách Sản Phẩm</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Tên sản phẩm</th>
            <th>Mô tả</th>
            <th>Giá bán</th>
            <th>Số lượng tồn</th>
            <th>Loại sản phẩm</th>
            <th>Hành động</th>
        </tr>
        <c:forEach var="sp" items="${listSP}">
            <tr>
                <td>${sp.nhm_sp_id}</td>
                <td>${sp.nhm_ten_sp}</td>
                <td>${sp.nhm_mo_ta}</td>
                <td>${sp.nhm_gia_ban}</td>
                <td>${sp.nhm_so_luong_ton}</td>
                <td>${sp.nhm_loai_sp}</td>
                <td>
                    <a href="/Project3/sanpham/edit/${sp.nhm_sp_id}">Chỉnh Sửa</a> |
                    <a href="/Project3/sanpham/delete/${sp.nhm_sp_id}" onclick="return confirm('Bạn có chắc muốn xóa sản phẩm này?')">Xóa</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <a href="${pageContext.request.contextPath}/sanpham/form">Thêm sản phẩm</a>
 
    
</body>
</html>
