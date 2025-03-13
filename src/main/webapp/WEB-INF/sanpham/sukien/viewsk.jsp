<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách Sự Kiện</title>
</head>
<body>
    <h2>Danh sách Sự Kiện</h2>
    <a href="${pageContext.request.contextPath}/sanpham/sukien/addsk">
        <button>Thêm Sự Kiện</button>
    </a>
      <a href="${pageContext.request.contextPath}/sanpham/taikhoan/TrangchuAdmin">
    <button>Về Trang Chủ Admin</button>
    </a>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Tên Sự Kiện</th>
            <th>Mô tả</th>
            <th>Bắt đầu</th>
            <th>Kết thúc</th>
            <th>Hành động</th>
        </tr>
        <c:forEach var="sk" items="${dsSuKien}">
            <tr>
                <td>${sk.nhm_sk_id}</td>
                <td>${sk.nhm_ten_sk}</td>
                <td>${sk.nhm_mo_ta}</td>
                <td>${sk.nhm_ngay_bat_dau}</td>
                <td>${sk.nhm_ngay_ket_thuc}</td>
                <td>
                    <!-- Nút Sửa -->
                    <a href="${pageContext.request.contextPath}/sanpham/sukien/editsk/${sk.nhm_sk_id}">
                        <button>Sửa</button>
                    </a>
                    <!-- Nút Xoá -->
                    <a href="${pageContext.request.contextPath}/sanpham/sukien/delete/${sk.nhm_sk_id}" 
                       onclick="return confirm('Bạn chắc chắn xoá?');">
                        <button>Xoá</button>
                    </a>
                    <!-- Nút Đăng ký -->
                    <a href="${pageContext.request.contextPath}/sanpham/sukien/dangky/${sk.nhm_sk_id}">
                        <button>Đăng ký</button>
                    </a>
                    <!-- Tuỳ chọn: xem danh sách người đăng ký -->
                    <a href="${pageContext.request.contextPath}/sanpham/sukien/dsdangky/${sk.nhm_sk_id}"
                    onclick="return confirm('Bạn đã đăng kí thành công'');">
                        <button>Xem người đã đăng ký</button>
                    </a>
                </td>
            </tr>
        </c:forEach>
        
    </table>
</body>
</html>
