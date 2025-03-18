<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách sản phẩm - VLXD Hoàng Minh</title>
    <style>
        /* Reset & Body */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
        }
        /* Header Section */
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
        .top-bar .right-section {
            display: flex;
            align-items: center;
            gap: 10px;
        }
        /* Thông tin người dùng */
        .user-info {
            font-size: 14px;
            margin-right: 15px;
        }
        .user-info a {
            color: white;
            text-decoration: none;
            background-color: #dc3545;
            padding: 5px 10px;
            border-radius: 4px;
            font-weight: bold;
            transition: background 0.3s;
        }
        .user-info a:hover {
            background-color: #c82333;
        }
        /* Các nút khác trong top-bar */
        .top-bar a {
            text-decoration: none;
            padding: 6px 12px;
            border-radius: 5px;
            font-size: 14px;
            font-weight: bold;
            color: white;
            display: flex;
            align-items: center;
            transition: 0.3s;
        }
        .top-bar .fb-btn {
            background-color: #1877F2;
        }
        .top-bar .login-btn {
            background-color: #28a745;
        }
        .top-bar .register-btn {
            background-color: #dc3545;
        }
        .top-bar a:hover {
            opacity: 0.8;
        }
        .top-bar img {
            width: 18px;
            height: 18px;
            margin-right: 5px;
        }
        /* Header */
        .header {
            text-align: center;
            font-size: 30px;
            font-weight: bold;
            padding: 20px 0;
            background-color: #343a40;
            color: white;
        }
        /* Navigation Bar */
        .nav-bar {
            display: flex;
            justify-content: center;
            background-color: #495057;
            padding: 12px 0;
            gap: 10px;
        }
        .nav-bar a {
            color: white;
            text-decoration: none;
            padding: 10px 18px;
            font-size: 16px;
            border-radius: 5px;
            transition: 0.3s;
            background-color: #6c757d;
        }
        .nav-bar a:hover {
            background-color: #343a40;
        }
        /* Banner */
        .banner {
            position: relative;
            width: 100%;
            height: 350px;
            background: url('https://source.unsplash.com/1600x900/?construction,building') no-repeat center;
            background-size: cover;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .banner-text {
            color: white;
            font-size: 28px;
            font-weight: bold;
            text-align: center;
            padding: 20px;
            background: rgba(0, 0, 0, 0.6);
            border-radius: 10px;
        }
        /* Product List Section */
        h2.page-title {
            color: #333;
            margin: 20px 0;
            text-align: center;
        }
        .product-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 20px;
            padding: 20px;
            max-width: 1200px;
            margin: 0 auto;
        }
        .product-card {
            border: 1px solid #ddd;
            padding: 15px;
            text-align: center;
            border-radius: 8px;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            transition: transform 0.2s, box-shadow 0.2s;
        }
        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 4px 4px 15px rgba(0, 0, 0, 0.2);
        }
        .product-card h3 {
            font-size: 18px;
            margin: 10px 0;
            color: #007bff;
        }
        .price {
            color: red;
            font-size: 16px;
            font-weight: bold;
        }
        .btn-home {
            display: inline-block;
            margin: 20px;
            padding: 10px 15px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background 0.3s;
        }
        .btn-home:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <div class="top-bar">
        <div class="phone">📞 0362252912</div>
        <div class="right-section">
            <div class="user-info">
                <span>Chào mừng</span>
                <a href="${pageContext.request.contextPath}/sanpham/taikhoan/logout">Đăng xuất</a>
            </div>
            <a href="https://www.facebook.com/profile.php?id=100092964797457" class="fb-btn" target="_blank">
                <img src="https://static.vecteezy.com/system/resources/thumbnails/018/930/476/small_2x/facebook-logo-facebook-icon-transparent-free-png.png" alt="FB">
                Facebook
            </a>
            <a href="${pageContext.request.contextPath}/sanpham/taikhoan/dang-nhap" class="login-btn">Đăng nhập</a>
            <a href="${pageContext.request.contextPath}/sanpham/taikhoan/dang-ky" class="register-btn">Đăng ký</a>
        </div>
    </div>
    <div class="header">VLXD Hoàng Minh</div>
    <div class="nav-bar">
        <a href="http://127.0.0.1:5500/gi%E1%BB%9Bi%20thi%E1%BB%87u.html">Giới thiệu</a>
        <a href="http://localhost:8081/Project3/sanpham/user">Sản phẩm</a>
        <a href="http://127.0.0.1:5500/li%C3%AAn%20h%E1%BB%87.html">Liên hệ</a>
        <a href="http://127.0.0.1:5500/Gi%C3%A1%20C%E1%BA%A3%20Th%E1%BB%8B%20Tr%C6%B0%E1%BB%9Dng.html">Giá cả thị trường</a>
        <a href="${pageContext.request.contextPath}/sanpham/sukien/viewskUser" class="btn">Sự Kiện</a>
    </div>
    <div class="banner">
        <div class="banner-text">Hoàng Minh / Chuyên cung cấp vật liệu xây dựng tại Hà Nội</div>
    </div>
    
    <!-- Product List -->
    <h2 class="page-title">Danh sách sản phẩm</h2>
    <div class="product-container">
        <c:forEach var="sp" items="${listSP}">
            <div class="product-card">
                <h3>${sp.nhm_ten_sp}</h3>
                <p class="price">${sp.nhm_gia_ban} VNĐ</p>
                <p><strong>Mô tả:</strong> ${sp.nhm_mo_ta}</p>
                <p><strong>Số lượng tồn:</strong> ${sp.nhm_so_luong_ton}</p>
                <p><strong>Loại sản phẩm:</strong> ${sp.nhm_loai_sp}</p>
            </div>
        </c:forEach>
    </div>
    <br>
    <a href="${pageContext.request.contextPath}/sanpham/taikhoan/TrangchuUser" class="btn-home">Trang Chủ</a>	
</body>
</html>
