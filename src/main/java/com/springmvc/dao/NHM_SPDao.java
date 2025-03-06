package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.springmvc.beans.NHM_SP;

public class NHM_SPDao {
    
    private JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    // Thêm sản phẩm mới
    public int save(NHM_SP sp) {
        String sql = "INSERT INTO NHM_SanPham(nhm_ten_sp, nhm_mo_ta, nhm_gia_ban, nhm_so_luong_ton, nhm_loai_sp) VALUES(?, ?, ?, ?, ?)";
        return template.update(sql, sp.getNhm_ten_sp(), sp.getNhm_mo_ta(), sp.getNhm_gia_ban(), sp.getNhm_so_luong_ton(), sp.getNhm_loai_sp());
    }

    // Cập nhật sản phẩm
    public int update(NHM_SP sp) {
        String sql = "UPDATE NHM_SanPham SET nhm_ten_sp=?, nhm_mo_ta=?, nhm_gia_ban=?, nhm_so_luong_ton=?, nhm_loai_sp=? WHERE nhm_sp_id=?";
        return template.update(sql, sp.getNhm_ten_sp(), sp.getNhm_mo_ta(), sp.getNhm_gia_ban(), sp.getNhm_so_luong_ton(), sp.getNhm_loai_sp(), sp.getNhm_sp_id());
    }

    // Xóa sản phẩm
    public int delete(int id) {
        String sql = "DELETE FROM NHM_SanPham WHERE nhm_sp_id=?";
        return template.update(sql, id);
    }

    // Lấy thông tin một sản phẩm theo ID
    public NHM_SP getSPById(int id) {
        String sql = "SELECT * FROM NHM_SanPham WHERE nhm_sp_id=?";
        return template.queryForObject(sql, new Object[]{id}, new RowMapper<NHM_SP>() {
            public NHM_SP mapRow(ResultSet rs, int rowNum) throws SQLException {
                return new NHM_SP(
                    rs.getInt("nhm_sp_id"),
                    rs.getString("nhm_ten_sp"),
                    rs.getString("nhm_mo_ta"),
                    rs.getDouble("nhm_gia_ban"),
                    rs.getInt("nhm_so_luong_ton"),
                    rs.getString("nhm_loai_sp")
                );
            }
        });
    }

    // Lấy danh sách tất cả sản phẩm
    public List<NHM_SP> getAllSP() {
        return template.query("SELECT * FROM NHM_SanPham", new RowMapper<NHM_SP>() {
            public NHM_SP mapRow(ResultSet rs, int row) throws SQLException {
                return new NHM_SP(
                    rs.getInt("nhm_sp_id"),
                    rs.getString("nhm_ten_sp"),
                    rs.getString("nhm_mo_ta"),
                    rs.getDouble("nhm_gia_ban"),
                    rs.getInt("nhm_so_luong_ton"),
                    rs.getString("nhm_loai_sp")
                );
            }
        });
        
    }
}
