<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"  %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách Giá Cả</title>
</head>
<body>
    <h2>Danh sách Giá Cả Thị Trường</h2>
    
    <!-- Nút thêm mới -->
    <a href="${pageContext.request.contextPath}/sanpham/giacathitruong/addgctt" style="margin-bottom: 10px; display: inline-block;">
        <button>Thêm mới</button>
    </a>
    
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Tên sản phẩm</th>
            <th>Giá thị trường</th>
            <th>Ngày cập nhật</th>
            <th>Thao tác</th>  <!-- Cột mới cho các nút thao tác -->
        </tr>
        
        <!-- Lặp qua danh sách giá cả -->
        <c:forEach var="gctt" items="${listGCTT}">
            <tr>
                <td>${gctt.nhm_gctt_id}</td>
                <td>${gctt.nhm_ten_sp}</td>
                <td>${gctt.nhm_gia_thi_truong}</td>
                <td>${gctt.nhm_ngay_cap_nhat}</td>
                
                <!-- Nút sửa -->
                <td>
                    <a href="${pageContext.request.contextPath}/sanpham/giacathitruong/editgctt/${gctt.nhm_gctt_id}">
                        <button>Sửa</button>
                    </a>
                    
                    <!-- Nút xoá -->
                    <a href="${pageContext.request.contextPath}/sanpham/giacathitruong/deletegctt/${gctt.nhm_gctt_id}" 
   onclick="return confirm('Bạn có chắc chắn muốn xóa sản phẩm này không?');">
    <button>Xoá</button>
</a>

                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
