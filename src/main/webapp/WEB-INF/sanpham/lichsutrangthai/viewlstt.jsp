<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Lịch Sử Trạng Thái</title>
</head>
<body>
    <h2>Lịch sử trạng thái đơn hàng</h2>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Đơn Hàng ID</th>
                <th>Trạng Thái Mới</th>
                <th>Ngày Thay Đổi</th>
                <th>Admin ID</th>
                <th>Thao Tác</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="lichSu" items="${lichSuTrangThaiList}">
                <tr>
                    <td>${lichSu.nhm_lstt_id}</td>
                    <td>${lichSu.nhm_dh_id}</td>
                    <td>${lichSu.nhm_trang_thai_moi}</td>
                    <td>${lichSu.nhm_ngay_thay_doi}</td>
                    <td>${lichSu.nhm_admin_id}</td>
                    <td>
                        <a href="<spring:url value='/lichsutrangthai/editLSTT/${lichSu.nhm_lstt_id}'/>">Sửa</a> |
                        <a href="<spring:url value='/lichsutrangthai/deleteLSTT/${lichSu.nhm_lstt_id}'/>">Xóa</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <br>
    <a href="<spring:url value='/lichsutrangthai/saveLSTT'/>">Thêm Lịch Sử Trạng Thái</a>
</body>
</html>
