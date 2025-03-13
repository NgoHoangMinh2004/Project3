<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
        .user-info {
            font-size: 14px;
            margin-right: 15px;
        }
        .user-info a {
            color: white;
            margin-left: 10px;
            text-decoration: none;
            background-color: #dc3545;
            padding: 5px 10px;
            border-radius: 4px;
            font-weight: bold;
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
            background: url('https://cdn.pixabay.com/photo/2017/08/28/09/16/build-2685060_960_720.jpg') no-repeat center center;
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

        /* Bảng sự kiện */
        .event-section {
            padding: 20px;
            background-color: #f1f1f1;
        }
        .event-section h2 {
            text-align: center;
            color: #343a40;
            margin-bottom: 15px;
        }
        table.event-table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
        }
        table.event-table th,
        table.event-table td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }
        table.event-table th {
            background-color: #e9ecef;
        }
        table.event-table td button {
            background-color: #007bff;
            border: none;
            color: white;
            padding: 6px 12px;
            cursor: pointer;
            border-radius: 4px;
        }
        table.event-table td button:hover {
            background-color: #0056b3;
        }
        /* Button "Thêm Sự Kiện" và "Về Trang Chủ User" */
        .top-buttons {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }
        .top-buttons a {
            margin: 0 10px;
        }
        .top-buttons button {
            background-color: #28a745;
            border: none;
            color: white;
            padding: 8px 16px;
            cursor: pointer;
            border-radius: 4px;
        }
        .top-buttons button:hover {
            background-color: #218838;
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
            <img src="https://coachingskills.vn/wp-content/uploads/2024/07/facebook-logo-icon-facebook-icon-png-images-icons-and-png-backgrounds-1.png" alt="Facebook"> 
            Facebook
        </a>
    </div>

    <!-- Tiêu đề -->
    <div class="header">VLXD Hoàng Minh</div>

    <!-- Thanh menu điều hướng -->
    <div class="nav-bar">
   	    <a href="${pageContext.request.contextPath}/sanpham/taikhoan/TrangchuUser">Trang Chủ</a>
        <a href="http://127.0.0.1:5500/gi%E1%BB%9Bi%20thi%E1%BB%87u.html">Giới thiệu</a>
        <a href="http://localhost:8081/Project3/sanpham/user">Sản phẩm</a>
        <a href="http://127.0.0.1:5500/li%C3%AAn%20h%E1%BB%87.html">Liên hệ</a>
        <a href="${pageContext.request.contextPath}/sanpham/giacathitruong/viewgctt" class="btn">Giá Cả Thị Trường</a>
        <a href="#" class="btn">Sự Kiện</a>
    </div>

    <!-- Ảnh nền cố định -->
    <div class="banner">
        <div class="banner-text">
            Hoàng Minh / Chuyên cung cấp vật liệu xây dựng tại Hà Nội
        </div>
    </div>

    <div class="event-section">
        <h2>Danh sách Sự Kiện</h2>
        
  
        <div class="top-buttons">

            <a href="${pageContext.request.contextPath}/sanpham/taikhoan/TrangchuUser">
                <button>Về Trang Chủ User</button>
            </a>
        </div>
        
        <table class="event-table">
            <tr>
                <th>ID</th>
                <th>Tên Sự Kiện</th>
                <th>Mô tả</th>
                <th>Bắt đầu</th>
                <th>Kết thúc</th>
                <th>Hành động</th>
            </tr>
            <c:forEach var="sk" items="${dsSuKien}">
                <tr>
                    <td>${sk.nhm_sk_id}</td>
                    <td>${sk.nhm_ten_sk}</td>
                    <td>${sk.nhm_mo_ta}</td>
                    <td>${sk.nhm_ngay_bat_dau}</td>
                    <td>${sk.nhm_ngay_ket_thuc}</td>
                    <td>
                        <!-- Nút Đăng ký -->
                        <a href="${pageContext.request.contextPath}/sanpham/sukien/dangky/${sk.nhm_sk_id}">
                            <button>Đăng ký</button>
                        </a>
                        <c:if test="${not empty errorMessage}">
    <script>alert('${errorMessage}');</script>
</c:if>
<c:if test="${not empty successMessage}">
    <script>alert('${successMessage}');</script>
</c:if>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>

</body>
</html>
