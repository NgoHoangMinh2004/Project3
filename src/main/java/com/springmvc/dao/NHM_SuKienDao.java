package com.springmvc.dao;

import com.springmvc.beans.NHM_SuKien;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.*;
import java.util.List;

public class NHM_SuKienDao {
    private JdbcTemplate template;

    public NHM_SuKienDao(JdbcTemplate template) {
        this.template = template;
    }
    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }
    // Lấy tất cả sự kiện
    public List<NHM_SuKien> getAllSuKien() {
        String sql = "SELECT * FROM NHM_SuKien";
        return template.query(sql, new RowMapper<NHM_SuKien>() {
            @Override
            public NHM_SuKien mapRow(ResultSet rs, int rowNum) throws SQLException {
                NHM_SuKien sk = new NHM_SuKien();
                sk.setNhm_sk_id(rs.getInt("nhm_sk_id"));
                sk.setNhm_ten_sk(rs.getString("nhm_ten_sk"));
                sk.setNhm_mo_ta(rs.getString("nhm_mo_ta"));
                sk.setNhm_ngay_bat_dau(rs.getTimestamp("nhm_ngay_bat_dau"));
                sk.setNhm_ngay_ket_thuc(rs.getTimestamp("nhm_ngay_ket_thuc"));
                return sk;
            }
        });
    }

    // Lấy 1 sự kiện theo ID
    public NHM_SuKien getSuKienById(int skId) {
        String sql = "SELECT * FROM NHM_SuKien WHERE nhm_sk_id = ?";
        return template.queryForObject(sql, new Object[]{skId}, (rs, rowNum) -> {
            NHM_SuKien sk = new NHM_SuKien();
            sk.setNhm_sk_id(rs.getInt("nhm_sk_id"));
            sk.setNhm_ten_sk(rs.getString("nhm_ten_sk"));
            sk.setNhm_mo_ta(rs.getString("nhm_mo_ta"));
            sk.setNhm_ngay_bat_dau(rs.getTimestamp("nhm_ngay_bat_dau"));
            sk.setNhm_ngay_ket_thuc(rs.getTimestamp("nhm_ngay_ket_thuc"));
            return sk;
        });
    }

    // Thêm sự kiện
    public int addSuKien(NHM_SuKien sk) {
        String sql = "INSERT INTO NHM_SuKien(nhm_ten_sk, nhm_mo_ta, nhm_ngay_bat_dau, nhm_ngay_ket_thuc) " +
                     "VALUES(?, ?, ?, ?)";
        return template.update(sql,
                sk.getNhm_ten_sk(),
                sk.getNhm_mo_ta(),
                new Timestamp(sk.getNhm_ngay_bat_dau().getTime()),
                new Timestamp(sk.getNhm_ngay_ket_thuc().getTime()));
    }

    // Cập nhật sự kiện
    public int updateSuKien(NHM_SuKien sk) {
        String sql = "UPDATE NHM_SuKien SET nhm_ten_sk=?, nhm_mo_ta=?, nhm_ngay_bat_dau=?, nhm_ngay_ket_thuc=? " +
                     "WHERE nhm_sk_id = ?";
        return template.update(sql,
                sk.getNhm_ten_sk(),
                sk.getNhm_mo_ta(),
                new Timestamp(sk.getNhm_ngay_bat_dau().getTime()),
                new Timestamp(sk.getNhm_ngay_ket_thuc().getTime()),
                sk.getNhm_sk_id());
    }

    // Xóa sự kiện
    public int deleteSuKien(int skId) {
        String sql = "DELETE FROM NHM_SuKien WHERE nhm_sk_id = ?";
        return template.update(sql, skId);
    }
}
