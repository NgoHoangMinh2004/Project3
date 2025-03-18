<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="javax.servlet.http.HttpSession" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    // Nếu bạn muốn kiểm tra đăng nhập, giữ lại đoạn code sau.
    // Nếu không cần đăng nhập thì có thể xóa đoạn này.
    String tenTaiKhoan = (String) session.getAttribute("nhm_ten_tk");
    if (tenTaiKhoan == null) {
        response.sendRedirect("dang_nhap.jsp");
        return;
    }
%>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Giá cả thị trường - Vật Liệu Xây Dựng</title>
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
            background-color: #212529;
            color: #fff;
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
            color: #fff;
            padding: 6px 12px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 14px;
            font-weight: bold;
            display: flex;
            align-items: center;
            transition: background 0.3s;
        }
        .top-bar .fb-btn:hover {
            background-color: #145dbf;
        }
        .top-bar .fb-btn img {
            width: 18px;
            height: 18px;
            margin-right: 5px;
        }
        /* Header */
        .header {
            background-color: #343a40;
            color: #fff;
            text-align: center;
            padding: 20px 0;
            font-size: 28px;
            font-weight: bold;
        }
        /* Navigation Bar */
        .nav-bar {
            background-color: #495057;
            display: flex;
            justify-content: center;
            padding: 12px 0;
        }
        .nav-bar a {
            color: #fff;
            text-decoration: none;
            padding: 10px 20px;
            font-size: 16px;
            margin: 0 5px;
            border-radius: 5px;
            transition: background 0.3s;
        }
        .nav-bar a:hover {
            background-color: #343a40;
        }
        /* Order Details Section */
        .order-details {
            margin: 30px auto;
            width: 90%;
            max-width: 1000px;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        .order-details h2 {
            text-align: center;
            color: #343a40;
            margin-bottom: 20px;
            font-size: 24px;
        }
        .order-details table {
            width: 100%;
            border-collapse: collapse;
        }
        .order-details table th,
        .order-details table td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: center;
        }
        .order-details table th {
            background-color: #f1f1f1;
            font-weight: bold;
        }
        @media screen and (max-width: 600px) {
            .nav-bar a { padding: 10px; font-size: 14px; }
            .header { font-size: 24px; }
        }
    </style>
</head>
<body>
    <!-- Top Bar -->
    <div class="top-bar">
        <div class="phone">Hotline: 0362252912</div>
        <a href="https://www.facebook.com" class="fb-btn" target="_blank">
            <img src="https://coachingskills.vn/wp-content/uploads/2024/07/facebook-logo-icon-facebook-icon-png-images-icons-and-png-backgrounds-1.png" alt="Facebook">
            Facebook
        </a>
         <div class="user-info">
            <span>Chào mừng</span>
            <a href="${pageContext.request.contextPath}/sanpham/taikhoan/logout">Đăng xuất</a>
        </div>
    </div>

    <!-- Header -->
    <div class="header">Giá cả thị trường</div>

    <!-- Navigation Bar -->
    <div class="nav-bar">
        <a href="${pageContext.request.contextPath}/sanpham/taikhoan/TrangchuUser">Trang Chủ</a>
        <a href="http://127.0.0.1:5500/giới thiệu.html">Giới thiệu</a>
        <a href="http://localhost:8081/Project3/sanpham/user">Sản phẩm</a>
        <a href="http://127.0.0.1:5500/liên hệ.html">Liên hệ</a>
        <a href="#" class="btn">Giá Cả Thị Trường</a>
    </div>

    <!-- Order Details Section -->
    <div class="order-details">
        <h2>Thông Tin Chi Tiết Đơn Hàng</h2>
        <table>
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
