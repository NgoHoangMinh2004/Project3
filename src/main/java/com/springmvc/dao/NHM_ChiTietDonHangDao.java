package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.springmvc.beans.NHM_ChiTietDonHang;

public class NHM_ChiTietDonHangDao {

    private JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    // Lấy danh sách chi tiết đơn hàng theo ID đơn hàng
    public List<NHM_ChiTietDonHang> getChiTietDonHangByDHId(int dhId) {
        String sql = "SELECT * FROM NHM_ChiTietDonHang WHERE nhm_dh_id=?";
        return template.query(sql, new Object[]{dhId}, new RowMapper<NHM_ChiTietDonHang>() {
            public NHM_ChiTietDonHang mapRow(ResultSet rs, int rowNum) throws SQLException {
                return new NHM_ChiTietDonHang(
                        rs.getInt("nhm_ctdh_id"),
                        rs.getInt("nhm_dh_id"),
                        rs.getInt("nhm_sp_id"),
                        rs.getInt("nhm_so_luong"),
                        rs.getDouble("nhm_gia_ban")
                );
            }
        });
    }
}
