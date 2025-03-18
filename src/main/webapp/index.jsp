<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Trang Chủ - Vật Liệu Xây Dựng</title>
    <style>
        /* Reset & Body */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
        }
        /* Top Bar */
        .top-bar {
            width: 100%;
            background-color: black;
            color: white;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .top-bar .right-section {
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .top-bar .phone {
            font-size: 14px;
        }
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
        /* Header & Navigation */
        .header {
            text-align: center;
            font-size: 30px;
            font-weight: bold;
            padding: 20px 0;
            background-color: #343a40;
            color: white;
        }
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
            line-height: 1.5;
        }
    </style>
</head>
<body>
    <!-- Top Bar -->
    <div class="top-bar">
        <div class="phone">📞 0362252912</div>
        <div class="right-section">
            <a href="https://www.facebook.com/profile.php?id=100092964797457" class="fb-btn" target="_blank">
                <img src="https://static.vecteezy.com/system/resources/thumbnails/018/930/476/small_2x/facebook-logo-facebook-icon-transparent-free-png.png" alt="FB">
                Facebook
            </a>
            <a href="${pageContext.request.contextPath}/sanpham/taikhoan/dang-nhap" class="login-btn">Đăng nhập</a>
            <a href="${pageContext.request.contextPath}/sanpham/taikhoan/dang-ky" class="register-btn">Đăng ký</a>
        </div>
    </div>
    <!-- Header -->
    <div class="header">VLXD Hoàng Minh</div>
    <!-- Navigation -->

    <!-- Banner with 2 lines -->
    <div class="banner">
        <div class="banner-text">
            <div>Hoàng Minh</div>
            <div>Chuyên cung cấp vật liệu xây dựng tại Hà Nội</div>
        </div>
    </div>

    <div class="container">
        <div class="content-section">
            <h2>BÁO GIÁ VẬT LIỆU XÂY DỰNG</h2>
            <p>Cập nhật báo giá vật liệu xây dựng mới nhất hàng ngày...</p>
        </div>
        <div class="content-section">
            <h3>BÁO GIÁ CÁT XÂY DỰNG</h3>
            <p>Giá cát xây dựng thay đổi hàng ngày...</p>
        </div>
        <div class="content-section">
            <h3>BÁO GIÁ ĐÁ XÂY DỰNG</h3>
            <p>Báo giá đá xây dựng với chất lượng tốt nhất...</p>
        </div>
        <div class="content-section">
            <h3>BÁO GIÁ XI MĂNG</h3>
            <p>Giá xi măng cập nhật theo biến động thị trường...</p>
        </div>
    </div>
</body>
</html>
