<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Thêm sản phẩm</title>
    <script>
        function showTable() {
            document.getElementById("productTable").style.display = "table";
        }

        function selectProduct(value) {
            document.getElementById("nhm_loai_sp").value = value;
            document.getElementById("productTable").style.display = "none";
        }
    </script>
</head>
<body>
    <h2>Thêm sản phẩm mới</h2>
   <form:form action="${pageContext.request.contextPath}/sanpham/save" modelAttribute="command">

        <table>
            <tr>
                <td>Tên Sản Phẩm:</td>
                <td><form:input path="nhm_ten_sp" /></td>
            </tr>
            <tr>
                <td>Mô tả:</td>
                <td><form:textarea path="nhm_mo_ta" /></td>
            </tr>
            <tr>
                <td>Giá bán:</td>
                <td><form:input path="nhm_gia_ban" type="number" step="0.01" /></td>
            </tr>
            <tr>
                <td>Số lượng tồn:</td>
                <td><form:input path="nhm_so_luong_ton" type="number" /></td>
            </tr>
            <tr>
                <td>Loại sản phẩm:</td>
                <td>
                    <form:select path="nhm_loai_sp" id="nhm_loai_sp" onchange="showTable()">
                        <form:option value="">-- Chọn loại sản phẩm --</form:option>
                        <form:option value="Điện tử">Vật Liệu Xây Dựng</form:option>
                      
                    </form:select>

                    <!-- Bảng hiển thị danh sách sản phẩm -->
                    <table id="productTable" border="1" style="display: none; margin-top: 10px;">
                        <tr>
                            <th>Loại</th>
                            <th>Mô tả</th>
                        </tr>
                        <tr onclick="selectProduct('Điện tử')">
                            <td>VLXD</td>
                            <td>Vật liệu xây dựng uy tín 100% </td>
                        </tr>
                  
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Lưu sản phẩm" /></td>
            </tr>
        </table>
    </form:form>
    <br>
    <a href="view">Quay lại danh sách</a>
</body>
</html>
