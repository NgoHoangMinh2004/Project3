<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sửa Lịch Sử Trạng Thái</title>
</head>
<body>
    <h2>Sửa Lịch Sử Trạng Thái</h2>
    <form action="<spring:url value='/lichsutrangthai/editLSTT'/>" method="POST">
        <input type="hidden" name="nhm_lstt_id" value="${lichSu.nhm_lstt_id}"/>

        <label for="nhm_dh_id">Đơn Hàng ID:</label>
        <input type="text" name="nhm_dh_id" value="${lichSu.nhm_dh_id}" required/><br><br>
        
        <label for="nhm_trang_thai_moi">Trạng Thái Mới:</label>
        <select name="nhm_trang_thai_moi" id="nhm_trang_thai_moi" required>
            <option value="Chờ xác nhận" ${lichSu.nhm_trang_thai_moi == 'Chờ xác nhận' ? 'selected' : ''}>Chờ xác nhận</option>
            <option value="Đang giao" ${lichSu.nhm_trang_thai_moi == 'Đang giao' ? 'selected' : ''}>Đang giao</option>
            <option value="Hoàn thành" ${lichSu.nhm_trang_thai_moi == 'Hoàn thành' ? 'selected' : ''}>Hoàn thành</option>
            <option value="Hủy" ${lichSu.nhm_trang_thai_moi == 'Hủy' ? 'selected' : ''}>Hủy</option>
        </select><br><br>
        
        <label for="nhm_ngay_thay_doi">Ngày Thay Đổi:</label>
        <input type="datetime-local" name="nhm_ngay_thay_doi" value="${lichSu.nhm_ngay_thay_doi}" required/><br><br>
        
        <label for="nhm_admin_id">Admin ID:</label>
        <input type="text" name="nhm_admin_id" value="${lichSu.nhm_admin_id}" required/><br><br>
        
        <input type="submit" value="Cập nhật"/>
    </form>
    <br>
    <a href="<spring:url value='/lichsutrangthai/viewLSTT'/>">Quay lại</a>
</body>
</html>
