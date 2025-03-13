<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Sửa Giá Cả Thị Trường</title>
</head>
<body>
    <h2>Sửa Thông Tin Sản Phẩm</h2>
  <form action="<c:url value='/sanpham/giacathitruong/editgctt/${gctt.nhm_gctt_id}'/>" method="POST">

    <label for="nhm_ten_sp">Tên sản phẩm:</label>
    <input type="text" name="nhm_ten_sp" value="${gctt.nhm_ten_sp}" required>

    <label for="nhm_gia_thi_truong">Giá thị trường:</label>
    <input type="text" name="nhm_gia_thi_truong" value="${gctt.nhm_gia_thi_truong}" required>

    <label for="nhm_ngay_cap_nhat">Ngày cập nhật:</label>
<input type="datetime-local" name="nhm_ngay_cap_nhat" 
       value="<fmt:formatDate value='${gctt.nhm_ngay_cap_nhat}' pattern='yyyy-MM-dd\'T\'HH:mm'/>" required>
    <button type="submit">Cập nhật</button>
</form>

</body>
</html>
