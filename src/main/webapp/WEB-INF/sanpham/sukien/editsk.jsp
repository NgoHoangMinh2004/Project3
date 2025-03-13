<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Sửa Sự Kiện</title>
</head>
<body>
    <h2>Sửa Sự Kiện</h2>
   <form action="${pageContext.request.contextPath}/sanpham/sukien/editsk/${sukien.nhm_sk_id}" method="post">

        <input type="hidden" name="nhm_sk_id" value="${sukien.nhm_sk_id}"/>

        <div>
            <label for="nhm_ten_sk">Tên Sự Kiện:</label>
            <input type="text" id="nhm_ten_sk" name="nhm_ten_sk" value="${sukien.nhm_ten_sk}" required/>
        </div>

        <div>
            <label for="nhm_mo_ta">Mô Tả:</label>
            <textarea id="nhm_mo_ta" name="nhm_mo_ta" required>${sukien.nhm_mo_ta}</textarea>
        </div>

        <div>
            <label for="nhm_ngay_bat_dau">Ngày Bắt Đầu:</label>
            <input type="date" id="nhm_ngay_bat_dau" name="nhm_ngay_bat_dau" value="${sukien.nhm_ngay_bat_dau}" required/>
        </div>

        <div>
            <label for="nhm_ngay_ket_thuc">Ngày Kết Thúc:</label>
            <input type="date" id="nhm_ngay_ket_thuc" name="nhm_ngay_ket_thuc" value="${sk.nhm_ngay_ket_thuc}" required/>
        </div>

        <div>
            <button type="submit">Cập Nhật</button>
            <a href="${pageContext.request.contextPath}/sanpham/sukien">
                <button type="button">Hủy</button>
            </a>
        </div>
    </form>
</body>
</html>
