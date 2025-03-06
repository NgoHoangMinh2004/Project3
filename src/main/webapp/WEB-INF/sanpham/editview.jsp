<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Chỉnh sửa sản phẩm</title>
</head>
<body>
    <h2>Chỉnh sửa sản phẩm</h2>
    <form:form action="../editsave" modelAttribute="command">
        <form:hidden path="nhm_sp_id"/> <!-- Trường ID ẩn -->
        <table>
            <tr>
                <td>Tên sản phẩm:</td>
                <td><form:input path="nhm_ten_sp" /></td>
            </tr>
            <tr>
                <td>Mô tả:</td>
                <td><form:textarea path="nhm_mo_ta" /></td>
            </tr>
            <tr>
                <td>Giá bán:</td>
                <td><form:input path="nhm_gia_ban" type="number" step="/1" /></td>
            </tr>
            <tr>
                <td>Số lượng tồn:</td>
                <td><form:input path="nhm_so_luong_ton" type="number" /></td>
            </tr>
            <tr>
                <td>Loại sản phẩm:</td>
                <td>
                    <form:select path="nhm_loai_sp">
                        <form:option value="Vật Liệu Xây Dựng">Vật Liệu Xây Dựng</form:option>
                    </form:select>
                </td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Cập nhật sản phẩm" /></td>
            </tr>
        </table>
    </form:form>
    <br>
    <a href="../view">Quay lại danh sách</a>
</body>
</html>
