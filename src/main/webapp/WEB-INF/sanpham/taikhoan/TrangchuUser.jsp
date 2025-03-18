<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page language="java" import="javax.servlet.http.HttpSession" %>
<%
    String tenTaiKhoan = (String) session.getAttribute("nhm_ten_tk");
    if (tenTaiKhoan == null) {
        response.sendRedirect("dang_nhap.jsp");
        return;
    }
%>
<html>
<head>
    <title>Trang Chủ - Vật Liệu Xây Dựng</title>
    <style>
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
        /* Header */
        .header {
            text-align: center;
            font-size: 28px;
            font-weight: bold;
            padding: 20px 0;
            background-color: #343a40;
            color: white;
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
        /* Ảnh nền cố định */
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
        /* Báo giá vật liệu xây dựng */
        .bao-gia {
            padding: 20px;
            background-color: #fff;
            text-align: left;
        }
        .bao-gia h2 {
            color: #343a40;
            font-size: 22px;
            text-align: center;
            margin-bottom: 15px;
        }
        .bao-gia h3 {
            color: #007bff;
            font-size: 18px;
            margin-top: 15px;
        }
        .bao-gia p {
            font-size: 16px;
            line-height: 1.5;
            color: #555;
        }
        /* Thông tin người dùng */
        .user-info {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 14px;
        }
        .user-info a {
            background-color: #dc3545;
            color: white;
            padding: 5px 10px;
            border-radius: 5px;
            text-decoration: none;
        }
    </style>
</head>
<body>

    <!-- Thanh thông tin trên cùng -->
    <div class="top-bar">
        <div class="phone">
            Hotline: 0362252912
        </div>
        <div class="user-info">
            <span>Chào mừng, <%= tenTaiKhoan %></span>
            <a href="${pageContext.request.contextPath}/sanpham/taikhoan/logout">Đăng xuất</a>
        </div>
        <a href="https://www.facebook.com" class="fb-btn">
            <img src="https://coachingskills.vn/wp-content/uploads/2024/07/facebook-logo-icon-facebook-icon-png-images-icons-and-png-backgrounds-1.png" alt="Facebook"> Facebook
        </a>
    </div>

    <!-- Tiêu đề -->
    <div class="header">VLXD Hoàng Minh</div>

    <!-- Thanh menu điều hướng -->
    <div class="nav-bar">
        <a href="http://127.0.0.1:5500/gi%E1%BB%9Bi%20thi%E1%BB%87u.html">Giới thiệu</a>
        <a href="http://localhost:8081/Project3/sanpham/user">Sản phẩm</a>
        <a href="http://127.0.0.1:5500/li%C3%AAn%20h%E1%BB%87.html">Liên hệ</a>
        <a href="${pageContext.request.contextPath}/sanpham/giacathitruong/viewgctt" class="btn">Giá cả thị trường</a>
        <a href="${pageContext.request.contextPath}/sanpham/sukien/viewskUser" class="btn">Sự Kiện</a>
    </div>
    
    <!-- Ảnh nền cố định với banner 2 dòng -->
    <div class="banner">
        <div class="banner-text">
            <div>Hoàng Minh</div>
            <div>Chuyên cung cấp vật liệu xây dựng tại Hà Nội</div>
        </div>
    </div>
    <!-- Báo giá vật liệu xây dựng -->
    <div class="bao-gia">
        <h2>BÁO GIÁ VẬT LIỆU XÂY DỰNG</h2>
        <p>
            Báo giá vật liệu xây dựng bao gồm thông tin báo giá vật liệu xây dựng mới nhất hàng ngày, 
            giá vật liệu cát đá xây dựng tại khu vực Nam Trung Yên – Hà Nội, thị trường bất động sản hay 
            liên quan tới ngành xây dựng được cập nhật liên tục một cách chính xác nhất tới khách hàng 
            thông qua kênh thông tin của công ty chúng tôi.
        </p>

        <h3>BÁO GIÁ CÁT XÂY DỰNG</h3>
        <p>
            Giá cát xây dựng hiện nay đang có sự thay đổi hàng ngày, một trong những sản phẩm điển hình mà chúng tôi đang cung cấp.
        </p>

        <h3>BÁO GIÁ ĐÁ XÂY DỰNG</h3>
        <p>
            Chuyên cung cấp báo giá đá xây dựng có thâm niên trên thị trường, sẵn sàng đáp ứng mọi nhu cầu của quý khách hàng.
        </p>

        <h3>BÁO GIÁ XI MĂNG XÂY DỰNG</h3>
        <p>
            Báo giá xi măng cung cấp sẽ thay đổi theo thời gian, biến động thị trường hoặc theo khối lượng đặt hàng của quý khách hàng.
        </p>

        <h3>BÁO GIÁ GẠCH XÂY DỰNG</h3>
        <p>
            Vật liệu không thể thiếu cho mọi công trình xây dựng, được cập nhật liên tục bởi nhà phân phối VLXD chuyên nghiệp tại Hà Nội.
        </p>

        <h3>BÁO GIÁ PHÁ DỠ</h3>
        <p>
            Chúng tôi chuyên nhận phá dỡ công trình, đào móng nhà, vận chuyển chạc phế thải… với giá thành cạnh tranh nhất thị trường.
        </p>

        <h3>BÁO GIÁ VẬT LIỆU KHÁC</h3>
        <p>
            Với hệ thống kho hàng cùng phương tiện và đội ngũ nhân viên nhiệt tình, khẳng định đáp ứng tốt mọi nhu cầu của quý khách hàng.
        </p>
    </div>
</body>
</html>
