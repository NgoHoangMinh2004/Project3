package com.springmvc.dao;

import com.springmvc.beans.NHM_LichSuTrangThai;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class NHM_LichSuTrangThaiDao {

    private JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    // Thêm mới lịch sử trạng thái
    public int addLichSuTrangThai(NHM_LichSuTrangThai lichSu) {
        String sql = "INSERT INTO NHM_LichSuTrangThai(nhm_dh_id, nhm_trang_thai_moi, nhm_admin_id) VALUES(?, ?, ?)";
        return template.update(sql, lichSu.getNhm_dh_id(), lichSu.getNhm_trang_thai_moi(), lichSu.getNhm_admin_id());
    }

    // Lấy tất cả lịch sử trạng thái của một đơn hàng
    public List<NHM_LichSuTrangThai> getLichSuTrangThaiByDHId(int dhId) {
        String sql = "SELECT * FROM NHM_LichSuTrangThai WHERE nhm_dh_id=?";
        return template.query(sql, new Object[]{dhId}, new RowMapper<NHM_LichSuTrangThai>() {
            public NHM_LichSuTrangThai mapRow(ResultSet rs, int rowNum) throws SQLException {
                return new NHM_LichSuTrangThai(
                        rs.getInt("nhm_lstt_id"),
                        rs.getInt("nhm_dh_id"),
                        rs.getString("nhm_trang_thai_moi"),
                        rs.getTimestamp("nhm_ngay_thay_doi"),
                        rs.getInt("nhm_admin_id")
                );
            }
        });
    }

    // Cập nhật trạng thái của một đơn hàng
    public int updateLichSuTrangThai(NHM_LichSuTrangThai lichSu) {
        String sql = "UPDATE NHM_LichSuTrangThai SET nhm_trang_thai_moi=?, nhm_admin_id=? WHERE nhm_lstt_id=?";
        return template.update(sql, lichSu.getNhm_trang_thai_moi(), lichSu.getNhm_admin_id(), lichSu.getNhm_lstt_id());
    }

    // Xóa lịch sử trạng thái của một đơn hàng
    public int deleteLichSuTrangThai(int lsttId) {
        String sql = "DELETE FROM NHM_LichSuTrangThai WHERE nhm_lstt_id=?";
        return template.update(sql, lsttId);
    }
}
