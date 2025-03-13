package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import com.springmvc.beans.NHM_DonHang;

public class NHM_DonHangDao {
    private JdbcTemplate template;

    // Thiết lập JdbcTemplate
    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    // Lấy danh sách tất cả đơn hàng
    public List<NHM_DonHang> getAllDonHang() {
        String sql = "SELECT nhm_dh_id, nhm_ten_nd, nhm_ngay_dat_hang, nhm_chi_tiet FROM NHM_DonHang";
        return template.query(sql, new RowMapper<NHM_DonHang>() {
            public NHM_DonHang mapRow(ResultSet rs, int rowNum) throws SQLException {
                return new NHM_DonHang(
                    rs.getInt("nhm_dh_id"),
                    rs.getString("nhm_ten_nd"),
                    rs.getTimestamp("nhm_ngay_dat_hang"),
                    rs.getString("nhm_chi_tiet")
                );
            }
        });
    }

    // Lấy thông tin đơn hàng theo ID
    public NHM_DonHang getDonHangById(int id) {
        String sql = "SELECT nhm_dh_id, nhm_ten_nd, nhm_ngay_dat_hang, nhm_chi_tiet FROM NHM_DonHang WHERE nhm_dh_id=?";
        return template.queryForObject(sql, new Object[]{id}, new RowMapper<NHM_DonHang>() {
            public NHM_DonHang mapRow(ResultSet rs, int rowNum) throws SQLException {
                return new NHM_DonHang(
                    rs.getInt("nhm_dh_id"),
                    rs.getString("nhm_ten_nd"),
                    rs.getTimestamp("nhm_ngay_dat_hang"),
                    rs.getString("nhm_chi_tiet")
                );
            }
        });
    }

    // Thêm đơn hàng mới
    public int addDonHang(NHM_DonHang donHang) {
        String sql = "INSERT INTO NHM_DonHang (nhm_ten_nd, nhm_ngay_dat_hang, nhm_chi_tiet) VALUES (?, ?, ?)";
        return template.update(sql, 
                               donHang.getNhm_ten_nd(), 
                               new Timestamp(donHang.getNhm_ngay_dat_hang().getTime()), 
                               donHang.getNhm_chi_tiet());
    }

    // Cập nhật thông tin đơn hàng
    public int updateDonHang(NHM_DonHang donHang) {
        String sql = "UPDATE NHM_DonHang SET nhm_ten_nd = ?, nhm_chi_tiet = ? WHERE nhm_dh_id = ?";
        return template.update(sql, 
                               donHang.getNhm_ten_nd(), 
                               donHang.getNhm_chi_tiet(), 
                               donHang.getNhm_dh_id());
    }

    // Xóa đơn hàng
    public int deleteDonHang(int id) {
        String sql = "DELETE FROM NHM_DonHang WHERE nhm_dh_id=?";
        return template.update(sql, id);
    }
}
