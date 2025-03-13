<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách sản phẩm</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
        }
        .product-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 20px;
            padding: 20px;
        }
        .product-card {
            border: 1px solid #ddd;
            padding: 15px;
            text-align: center;
            border-radius: 5px;
            box-shadow: 2px 2px 10px rgba(0,0,0,0.1);
            background-color: #fff;
            width: 300px;
        }
        .product-card h3 {
            font-size: 18px;
            margin: 10px 0;
        }
        .price {
            color: red;
            font-size: 16px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h2>Danh sách sản phẩm</h2>
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
   <a href="${pageContext.request.contextPath}/sanpham/taikhoan/TrangchuUser">Trang Chủ</a>
</body>
</html>