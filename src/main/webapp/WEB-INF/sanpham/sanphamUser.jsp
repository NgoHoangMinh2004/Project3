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
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }
        .product-card {
            border: 1px solid #ddd;
            padding: 15px;
            width: 250px;
            text-align: center;
            border-radius: 5px;
            box-shadow: 2px 2px 10px rgba(0,0,0,0.1);
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
        .btn-order {
            display: block;
            width: 100%;
            padding: 8px;
            background-color: #28a745;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 10px;
        }
        .btn-order:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <h2>Danh sách sản phẩm</h2>
    <div class="product-container">
        <c:forEach var="sp" items="${danhSachSanPham}">
            <div class="product-card">
                <h3>${sp.nhm_ten_sp}</h3>
                <p class="price">${sp.nhm_gia_ban} VNĐ</p>
                <p><strong>Mô tả:</strong> ${sp.nhm_mo_ta}</p>
                <p><strong>Số lượng tồn:</strong> ${sp.nhm_so_luong_ton}</p>
                <p><strong>Loại sản phẩm:</strong> ${sp.nhm_loai_sp}</p>
                <a href="/thanh-toan/${sp.nhm_sp_id}" class="btn-order">Đặt hàng</a>
            </div>
        </c:forEach>
    </div>
      <a href="http://localhost:8081/Project3/taikhoan/trangchu-user" class="btn">Trờ về trang chủ</a>
    
</body>
</html>
