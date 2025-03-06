<!-- editDH.jsp -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chỉnh sửa đơn hàng</title>
</head>
<body>

    <h2>Chỉnh sửa thông tin đơn hàng</h2>

    <form action="${pageContext.request.contextPath}/donhang/saveDH" method="post">
        <!-- Lấy thông tin đơn hàng từ model và đưa vào các trường chỉnh sửa -->
        <input type="hidden" name="nhm_dh_id" value="${donHang.nhm_dh_id}" />
        
        <label for="nhm_tk_id">Tài khoản ID:</label>
        <input type="text" name="nhm_tk_id" value="${donHang.nhm_tk_id}" required /><br>

        <label for="nhm_ngay_dat_hang">Ngày đặt hàng:</label>
        <input type="date" name="nhm_ngay_dat_hang" value="${donHang.nhm_ngay_dat_hang}" required /><br>

        <label for="nhm_tong_tien">Tổng tiền:</label>
        <input type="number" name="nhm_tong_tien" value="${donHang.nhm_tong_tien}" required /><br>

        <label for="nhm_trang_thai">Trạng thái:</label>
        <input type="text" name="nhm_trang_thai" value="${donHang.nhm_trang_thai}" required /><br>

        <button type="submit">Lưu thay đổi</button>
    </form>

</body>
</html>
