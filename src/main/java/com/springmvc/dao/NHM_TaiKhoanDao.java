package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.springmvc.beans.NHM_TaiKhoan;

public class NHM_TaiKhoanDao {

    private JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    // Lưu tài khoản mới
    public int save(NHM_TaiKhoan tk) {
        String sql = "INSERT INTO NHM_TaiKhoan (nhm_ten_tk, nhm_email, nhm_sdt, nhm_mat_khau) " +
                     "VALUES (?, ?, ?, ?)";
        return template.update(sql, tk.getNhm_ten_tk(), tk.getNhm_email(), tk.getNhm_sdt(), tk.getNhm_mat_khau());
    }

    // Cập nhật tài khoản
    public int update(NHM_TaiKhoan tk) {
        String sql = "UPDATE NHM_TaiKhoan " +
                     "SET nhm_ten_tk=?, nhm_email=?, nhm_sdt=?, nhm_mat_khau=?, nhm_loai_tk=? " +
                     "WHERE nhm_tk_id=?";
        return template.update(sql, tk.getNhm_ten_tk(), tk.getNhm_email(), tk.getNhm_sdt(), tk.getNhm_mat_khau(), tk.getNhm_loai_tk(), tk.getNhm_tk_id());
    }

    // Xóa tài khoản
    public int delete(int id) {
        String sql = "DELETE FROM NHM_TaiKhoan WHERE nhm_tk_id=?";
        return template.update(sql, id);
    }

    // Lấy thông tin tài khoản theo ID
    public NHM_TaiKhoan getTaiKhoanById(int id) {
        String sql = "SELECT * FROM NHM_TaiKhoan WHERE nhm_tk_id=?";
        return template.queryForObject(sql, new Object[]{id}, new TaiKhoanMapper());
    }

    // Lấy danh sách tất cả tài khoản
    public List<NHM_TaiKhoan> getAllTaiKhoan() {
        String sql = "SELECT * FROM NHM_TaiKhoan";
        return template.query(sql, new TaiKhoanMapper());
    }

    // Kiểm tra đăng nhập
    public NHM_TaiKhoan checkLogin(String email, String matkhau) {
        String sql = "SELECT * FROM NHM_TaiKhoan WHERE nhm_email = ? AND nhm_mat_khau = ?";
        List<NHM_TaiKhoan> accounts = template.query(sql, new Object[]{email, matkhau}, new TaiKhoanMapper());
        return accounts.isEmpty() ? null : accounts.get(0);
    }

    // Lớp ánh xạ dữ liệu từ ResultSet vào NHM_TaiKhoan
    private static class TaiKhoanMapper implements RowMapper<NHM_TaiKhoan> {
        @Override
        public NHM_TaiKhoan mapRow(ResultSet rs, int rowNum) throws SQLException {
            return new NHM_TaiKhoan(
                rs.getInt("nhm_tk_id"),
                rs.getString("nhm_ten_tk"),
                rs.getString("nhm_email"),
                rs.getString("nhm_sdt"),
                rs.getString("nhm_mat_khau"),
                rs.getString("nhm_loai_tk")
            );
        }
    }
}
