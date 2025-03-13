<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm Giá Thị Trường</title>
</head>
<body>
    <h2>Thêm Giá Thị Trường</h2>
    <form action="${pageContext.request.contextPath}/sanpham/giacathitruong/addgctt" method="post">
        <label for="nhm_ten_sp">Tên Sản Phẩm:</label>
        <input type="text" id="nhm_ten_sp" name="nhm_ten_sp" required>
        
        <label for="nhm_gia_thi_truong">Giá Thị Trường:</label>
        <input type="number" id="nhm_gia_thi_truong" name="nhm_gia_thi_truong" required>

        <label for="nhm_ngay_cap_nhat">Ngày Cập Nhật:</label>
        <input type="datetime-local" id="nhm_ngay_cap_nhat" name="nhm_ngay_cap_nhat" required>

        <button type="submit">Thêm Sản Phẩm</button>
    </form>
</body>
</html>
