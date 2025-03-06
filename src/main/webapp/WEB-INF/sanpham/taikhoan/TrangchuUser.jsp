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
        /* Ảnh nền cố định */
        .banner {
            position: relative;
            width: 100%;
            height: 300px;
            background: url('data:image/jpeg;base64,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') no-repeat center center;
            background-size: cover;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .banner-text {
            color: white;
            font-size: 26px;
            font-weight: bold;
            text-align: center;
            text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.7);
        }
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
        <a href="http://127.0.0.1:5500/Gi%C3%A1%20C%E1%BA%A3%20Th%E1%BB%8B%20Tr%C6%B0%E1%BB%9Dng.html">Giá cả thị trường</a>
    </div>

    <!-- Ảnh nền cố định -->
    <div class="banner">
        <div class="banner-text">
            Hoàng Minh / Chuyên cung cấp vật liệu xây dựng tại Hà Nội
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