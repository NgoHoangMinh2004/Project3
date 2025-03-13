<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Thêm Đơn Hàng</title>
</head>
<body>
    <h2>Thêm Đơn Hàng</h2>

    <!-- Hiển thị lỗi nếu có -->
    <c:if test="${not empty errorMessage}">
        <div style="color: red;">
            <p>${errorMessage}</p>
        </div>
    </c:if>

    <!-- Form thêm đơn hàng -->
    <form action="${pageContext.request.contextPath}/sanpham/donhang/add" method="post">
        <label for="nhm_chi_tiet">Chi tiết đơn hàng:</label>
        <input type="text" id="nhm_chi_tiet" name="nhm_chi_tiet" required />
        <br><br>

        <!-- Thêm trường nhm_ten_nd để người dùng nhập vào -->
        <label for="nhm_ten_nd">Nhập Tên Người Dùng:</label>
        <input type="text" id="nhm_ten_nd" name="nhm_ten_nd" required />
        <br><br>
        
        <input type="submit" value="Thêm Đơn Hàng" />
    </form>

</body>
</html>
