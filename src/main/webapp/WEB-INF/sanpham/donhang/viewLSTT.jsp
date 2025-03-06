<%@ taglib uri="http://www.springframework.org/tags" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lịch Sử Trạng Thái Đơn Hàng</title>
</head>
<body>
    <h1>Lịch Sử Trạng Thái Đơn Hàng</h1>
    <table border="1">
        <thead>
            <tr>
                <th>ID Lịch Sử</th>
                <th>ID Đơn Hàng</th>
                <th>Trạng Thái Mới</th>
                <th>Ngày Thay Đổi</th>
                <th>ID Admin</th>
                <th>Hành Động</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="lichsu" items="${listLSTT}">
                <tr>
                    <td>${lichsu.nhm_lstt_id}</td>
                    <td>${lichsu.nhm_dh_id}</td>
                    <td>${lichsu.nhm_trang_thai_moi}</td>
                    <td>${lichsu.nhm_ngay_thay_doi}</td>
                    <td>${lichsu.nhm_admin_id}</td>
                    <td>
                        <a href="/lichsutrangthai/deleteLSTT?lsttId=${lichsu.nhm_lstt_id}&dhId=${lichsu.nhm_dh_id}">Xóa</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <form action="/lichsutrangthai/addLSTT" method="POST">
        <input type="hidden" name="nhm_dh_id" value="${param.dhId}">
        <label for="nhm_trang_thai_moi">Trạng Thái Mới:</label>
        <select name="nhm_trang_thai_moi">
            <option value="Chờ xác nhận">Chờ xác nhận</option>
            <option value="Đang giao">Đang giao</option>
            <option value="Hoàn thành">Hoàn thành</option>
            <option value="Hủy">Hủy</option>
        </select>
        <label for="nhm_admin_id">ID Admin:</label>
        <input type="text" name="nhm_admin_id">
        <button type="submit">Thêm</button>
    </form>
</body>
</html>
