<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Chỉnh Sửa Đơn Hàng</title>
</head>
<body>
    <h2>Chỉnh Sửa Đơn Hàng</h2>
    <form:form method="post" modelAttribute="nhm_don_hang" action="editCTDH">
        <input type="hidden" path="nhm_dh_id" />
        
        <label for="nhm_tk_id">Tài Khoản:</label>
        <form:input path="nhm_tk_id" type="number" disabled="true" /><br/>
        
        <label for="nhm_ngay_dat_hang">Ngày Đặt Hàng:</label>
        <form:input path="nhm_ngay_dat_hang" type="date" /><br/>
        
        <label for="nhm_tong_tien">Tổng Tiền:</label>
        <form:input path="nhm_tong_tien" type="number" step="0.01" /><br/>
        
        <label for="nhm_trang_thai">Trạng Thái:</label>
        <form:select path="nhm_trang_thai">
            <form:option value="Chờ xác nhận" label="Chờ xác nhận"/>
            <form:option value="Đang giao" label="Đang giao"/>
            <form:option value="Hoàn thành" label="Hoàn thành"/>
            <form:option value="Hủy" label="Hủy"/>
        </form:select><br/>
        
        <input type="submit" value="Cập Nhật Đơn Hàng" />
    </form:form>
</body>
</html>
