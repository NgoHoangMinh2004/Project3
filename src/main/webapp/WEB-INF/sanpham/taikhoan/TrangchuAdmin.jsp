<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Trang Chủ Admin</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
        }
        .container {
            width: 50%;
            margin: auto;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        .btn-danger {
            background-color: red;
        }
        .btn-danger:hover {
            background-color: darkred;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Chào mừng Admin đến với hệ thống!</h2>

        
        <a href="/Project3/taikhoan/view" class="btn">Xem danh sách tài khoản</a>

    
        <a href="/Project3/sanpham/view" class="btn">Xem Sản Phẩm</a>

        
        <a href="/taikhoan/logout" class="btn btn-danger">Đăng xuất</a>
    </div>
</body>
</html>
