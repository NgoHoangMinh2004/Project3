<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Thêm Sự Kiện</title>
</head>
<body>
    <h2>Thêm Sự Kiện Mới</h2>
    <form action="${pageContext.request.contextPath}/sanpham/sukien/addsk" method="POST">
        <table>
            <tr>
                <td><label for="nhm_ten_sk">Tên Sự Kiện:</label></td>
                <td><input type="text" id="nhm_ten_sk" name="nhm_ten_sk" required/></td>
            </tr>
            <tr>
                <td><label for="nhm_mo_ta">Mô Tả:</label></td>
                <td><textarea id="nhm_mo_ta" name="nhm_mo_ta" required></textarea></td>
            </tr>
            <tr>
                <td><label for="nhm_ngay_bat_dau">Ngày Bắt Đầu:</label></td>
                <td><input type="date" id="nhm_ngay_bat_dau" name="nhm_ngay_bat_dau" required/></td>
            </tr>
            <tr>
                <td><label for="nhm_ngay_ket_thuc">Ngày Kết Thúc:</label></td>
                <td><input type="date" id="nhm_ngay_ket_thuc" name="nhm_ngay_ket_thuc" required/></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;">
                    <button type="submit">Lưu</button>
                    <a href="${pageContext.request.contextPath}/sanpham/sukien/">
                        <button type="button">Hủy</button>
                    </a>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
