package com.springmvc.dao;

import com.springmvc.beans.NHM_SuKienDangKy;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.*;
import java.util.List;

public class NHM_SuKienDangKyDao {
    private JdbcTemplate template;

    public NHM_SuKienDangKyDao(JdbcTemplate template) {
        this.template = template;
    }
    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }
    // Lưu đăng ký
    public int addDangKy(NHM_SuKienDangKy dk) {
        String sql = "INSERT INTO NHM_SuKienDangKy (nhm_sk_id, nhm_tk_id, nhm_ten_tk, nhm_ngay_dk) " +
                     "VALUES (?, ?, ?, ?)";
        return template.update(sql,
                dk.getNhm_sk_id(),
                dk.getNhm_tk_id(),
                dk.getNhm_ten_tk(),
                new Timestamp(dk.getNhm_ngay_dk().getTime()));
    }

  
    public List<NHM_SuKienDangKy> getDangKyBySuKien(int skId) {
        String sql = "SELECT * FROM NHM_SuKienDangKy WHERE nhm_sk_id = ?";
        return template.query(sql, new Object[]{skId}, new RowMapper<NHM_SuKienDangKy>() {
            @Override
            public NHM_SuKienDangKy mapRow(ResultSet rs, int rowNum) throws SQLException {
                NHM_SuKienDangKy dk = new NHM_SuKienDangKy();
                dk.setNhm_skdk_id(rs.getInt("nhm_skdk_id"));
                dk.setNhm_sk_id(rs.getInt("nhm_sk_id"));
                dk.setNhm_tk_id(rs.getInt("nhm_tk_id"));
                dk.setNhm_ten_tk(rs.getString("nhm_ten_tk"));
                dk.setNhm_ngay_dk(rs.getTimestamp("nhm_ngay_dk"));
                return dk;
            }
        });
    }

    public List<NHM_SuKienDangKy> getDangKyByUser(int tkId) {
        String sql = "SELECT * FROM NHM_SuKienDangKy WHERE nhm_tk_id = ?";
        return template.query(sql, new Object[]{tkId}, (rs, rowNum) -> {
            NHM_SuKienDangKy dk = new NHM_SuKienDangKy();
            dk.setNhm_skdk_id(rs.getInt("nhm_skdk_id"));
            dk.setNhm_sk_id(rs.getInt("nhm_sk_id"));
            dk.setNhm_tk_id(rs.getInt("nhm_tk_id"));
            dk.setNhm_ten_tk(rs.getString("nhm_ten_tk"));
            dk.setNhm_ngay_dk(rs.getTimestamp("nhm_ngay_dk"));
            return dk;
        });
    }
    public boolean checkDangKyTonTai(int skId, int tkId) {
        String sql = "SELECT COUNT(*) FROM NHM_SuKienDangKy WHERE nhm_sk_id = ? AND nhm_tk_id = ?";
        Integer count = template.queryForObject(sql, new Object[]{skId, tkId}, Integer.class);
        return (count != null && count > 0);
    }

 
    public int deleteDangKy(int skdkId) {
        String sql = "DELETE FROM NHM_SuKienDangKy WHERE nhm_skdk_id = ?";
        return template.update(sql, skdkId);
    }
}
