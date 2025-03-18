<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập & Đăng ký</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
            text-align: center;
        }
        .top-bar {
            width: 100%;
            background-color: black;
            color: white;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .top-bar .phone { font-size: 14px; }
        .header {
            font-size: 28px;
            font-weight: bold;
            padding: 20px 0;
        }
        .form-container {
            width: 100%;
            max-width: 400px;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin: 20px auto;
        }
        .form-container h2 {
            margin-bottom: 20px;
        }
        .form-container input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .form-container button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        .form-container button:hover {
            background-color: #0056b3;
        }
        .footer {
            margin-top: 30px;
            padding: 10px;
            background-color: #343a40;
            color: white;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Đăng ký tài khoản</h2>
        <form action="${pageContext.request.contextPath}/taikhoan/save" method="post">
            <input type="text" name="nhm_ten_tk" placeholder="Tên tài khoản" required>
            <input type="email" name="nhm_email" placeholder="Email" required>
            <input type="text" name="nhm_sdt" placeholder="Số điện thoại" required>
            <input type="password" name="nhm_mat_khau" placeholder="Mật khẩu" required>
            <button type="submit">Đăng ký</button>
        </form>
    </div>
    
    <div class="footer">&copy; 2025 VLXD Hoàng Minh | Hotline: 0362252912</div>
</body>
</html>
