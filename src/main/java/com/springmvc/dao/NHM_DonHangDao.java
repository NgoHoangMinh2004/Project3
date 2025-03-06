package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.springmvc.beans.NHM_DonHang;

public class NHM_DonHangDao {

    private JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    // Lấy danh sách đơn hàng
    public List<NHM_DonHang> getAllDonHang() {
        String sql = "SELECT * FROM NHM_DonHang";
        return template.query(sql, new RowMapper<NHM_DonHang>() {
            public NHM_DonHang mapRow(ResultSet rs, int rowNum) throws SQLException {
                return new NHM_DonHang(
                        rs.getInt("nhm_dh_id"),
                        rs.getInt("nhm_tk_id"),
                        rs.getTimestamp("nhm_ngay_dat_hang"),
                        rs.getDouble("nhm_tong_tien"),
                        rs.getString("nhm_trang_thai")
                );
            }
        });
    }

    // Lấy đơn hàng theo ID
    public NHM_DonHang getDonHangById(int id) {
        String sql = "SELECT * FROM NHM_DonHang WHERE nhm_dh_id=?";
        return template.queryForObject(sql, new Object[]{id}, new RowMapper<NHM_DonHang>() {
            public NHM_DonHang mapRow(ResultSet rs, int rowNum) throws SQLException {
                return new NHM_DonHang(
                        rs.getInt("nhm_dh_id"),
                        rs.getInt("nhm_tk_id"),
                        rs.getTimestamp("nhm_ngay_dat_hang"),
                        rs.getDouble("nhm_tong_tien"),
                        rs.getString("nhm_trang_thai")
                );
            }
        });
    }
}
