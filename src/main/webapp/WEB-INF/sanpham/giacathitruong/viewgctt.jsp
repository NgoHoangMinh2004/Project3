<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="javax.servlet.http.HttpSession" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String tenTaiKhoan = (String) session.getAttribute("nhm_ten_tk");
    if (tenTaiKhoan == null) {
        response.sendRedirect("dang_nhap.jsp");
        return;
    }
%>
<html>
<head>
    <title>Giá cả thị trường - Vật Liệu Xây Dựng</title>
    <style>
        /* Thêm các kiểu mới cho header và navigation */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
        }

        /* Thanh thông tin trên cùng */
        .top-bar {
            width: 100%;
            background-color: black;
            color: white;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .top-bar .phone {
            font-size: 14px;
        }
        .top-bar .fb-btn {
            background-color: #1877F2;
            color: white;
            padding: 5px 10px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 14px;
            display: flex;
            align-items: center;
            font-weight: bold;
        }
        .top-bar .fb-btn img {
            width: 18px;
            height: 18px;
            margin-right: 5px;
        }

        /* Tiêu đề */
        .header {
            text-align: center;
            font-size: 28px;
            font-weight: bold;
            padding: 20px 0;
        }

        /* Menu điều hướng */
        .nav-bar {
            display: flex;
            justify-content: center;
            background-color: #343a40;
            padding: 10px 0;
        }
        .nav-bar a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            font-size: 16px;
            border: 1px solid white;
            margin: 0 5px;
            transition: 0.3s;
        }
        .nav-bar a:hover {
            background-color: #495057;
        }

        /* Nội dung chi tiết đơn hàng */
        .order-details {
            padding: 20px;
            background-color: #fff;
            margin: 20px;
            border-radius: 8px;
        }
        .order-details h2 {
            font-size: 22px;
            color: #343a40;
            text-align: center;
        }
        .order-details table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
        }
        .order-details table, .order-details th, .order-details td {
            border: 1px solid #ddd;
        }
        .order-details th, .order-details td {
            padding: 10px;
            text-align: center;
        }
        .order-details th {
            background-color: #f8f9fa;
        }
    </style>
</head>
<body>

    <!-- Thanh thông tin trên cùng -->
    <div class="top-bar">
        <div class="phone">
            Hotline:0362252912
        </div>

        <div class="user-info">
            <span>Chào mừng, <%= tenTaiKhoan %></span>
            <a href="${pageContext.request.contextPath}/sanpham/taikhoan/logout" class="btn btn-danger">Đăng xuất</a>
        </div>

        <a href="https://www.facebook.com" class="fb-btn">
            <img src="https://coachingskills.vn/wp-content/uploads/2024/07/facebook-logo-icon-facebook-icon-png-images-icons-and-png-backgrounds-1.png" alt="Facebook"> Facebook
        </a>
    </div>

    <!-- Tiêu đề -->
    <div class="header">Giá cả thị trường</div>

    <!-- Thanh menu điều hướng -->
    <div class="nav-bar">
        <a href="${pageContext.request.contextPath}/sanpham/taikhoan/TrangchuUser">Trang Chủ</a>
        <a href="http://127.0.0.1:5500/giới thiệu.html">Giới thiệu</a>
        <a href="http://localhost:8081/Project3/sanpham/user">Sản phẩm</a>
        <a href="http://127.0.0.1:5500/liên hệ.html">Liên hệ</a>
        <a href="#" class="btn">Giá Cả Thị Trường</a>
    </div>

    <!-- Nội dung chi tiết đơn hàng -->
    <div class="order-details">
        <h2>Thông Tin Chi Tiết Đơn Hàng</h2>
        	    <table border="1">
	        <tr>
	            <th>ID</th>
	            <th>Tên sản phẩm</th>
	            <th>Giá thị trường</th>
	            <th>Ngày cập nhật</th>
	        </tr>
	        <c:forEach var="gctt" items="${listGCTT}">
	            <tr>
	                <td>${gctt.nhm_gctt_id}</td>
	                <td>${gctt.nhm_ten_sp}</td>
	                <td>${gctt.nhm_gia_thi_truong}</td>
	                <td>${gctt.nhm_ngay_cap_nhat}</td>
	            </tr>
	        </c:forEach>
	    </table>
    </div>

</body>
</html>
