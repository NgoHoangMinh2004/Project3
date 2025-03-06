<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Thêm Đơn Hàng Mới</title>
</head>
<body>
    <h2>Thêm Đơn Hàng Mới</h2>

    <!-- Form để thêm đơn hàng mới -->
    <form:form modelAttribute="donHang" action="/donhang/saveDH" method="post">
        <div>
            <label for="nhm_tk_id">Tài Khoản Người Đặt:</label>
            <form:input path="nhm_tk_id" id="nhm_tk_id" />
        </div>
        <div>
            <label for="nhm_ngay_dat_hang">Ngày Đặt Hàng:</label>
            <form:input path="nhm_ngay_dat_hang" id="nhm_ngay_dat_hang" type="date"/>
        </div>
        <div>
            <label for="nhm_tong_tien">Tổng Tiền:</label>
            <form:input path="nhm_tong_tien" id="nhm_tong_tien" type="number" step="0.01" />
        </div>
        <div>
            <label for="nhm_trang_thai">Trạng Thái Đơn Hàng:</label>
            <form:select path="nhm_trang_thai">
                <form:option value="Chờ xác nhận">Chờ xác nhận</form:option>
                <form:option value="Đang giao">Đang giao</form:option>
                <form:option value="Hoàn thành">Hoàn thành</form:option>
                <form:option value="Hủy">Hủy</form:option>
            </form:select>
        </div>
        <div>
            <button type="submit">Lưu Đơn Hàng</button>
        </div>
    </form:form>

</body>
</html>
