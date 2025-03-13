<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách đăng ký</title>
</head>
<body>
    <h2>Danh sách đăng ký cho sự kiện</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>ID Sự Kiện</th>
            <th>ID Tài Khoản</th>
            <th>Tên Tài Khoản</th>
            <th>Ngày ĐK</th>
            <th>Hành động</th>
        </tr>
        <c:forEach var="dk" items="${dsDangKy}">
            <tr>
                <td>${dk.nhm_skdk_id}</td>
                <td>${dk.nhm_sk_id}</td>
                <td>${dk.nhm_tk_id}</td>
                <td>${dk.nhm_ten_tk}</td>
                <td>${dk.nhm_ngay_dk}</td>
                <!-- Cột Xoá -->
                <td>
                    <a href="${pageContext.request.contextPath}/sanpham/sukien/deleteDangKy/${dk.nhm_sk_id}/${dk.nhm_skdk_id}"
                       onclick="return confirm('Bạn chắc chắn muốn xóa đăng ký này?');">
                       Xoá
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
