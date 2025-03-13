package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import com.springmvc.beans.NHM_GiaCaThiTruong;

public class NHM_GiaCaThiTruongDao {
    private JdbcTemplate template;

    public NHM_GiaCaThiTruongDao(JdbcTemplate template) {
        this.template = template;
    }

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    // Lấy toàn bộ giá cả thị trường
    public List<NHM_GiaCaThiTruong> getGiaCaThiTruong() {
        String sql = "SELECT * FROM NHM_GiaCaThiTruong";
        return template.query(sql, new RowMapper<NHM_GiaCaThiTruong>() {
            @Override
            public NHM_GiaCaThiTruong mapRow(ResultSet rs, int rowNum) throws SQLException {
                return new NHM_GiaCaThiTruong(
                    rs.getInt("nhm_gctt_id"),
                    rs.getString("nhm_ten_sp"),
                    rs.getDouble("nhm_gia_thi_truong"),
                    rs.getDate ("nhm_ngay_cap_nhat")
                );
            }
        });
    }

    // Lấy giá cả thị trường theo ID sản phẩm
    public NHM_GiaCaThiTruong getGiaCaById(int sanPhamId) {
        String sql = "SELECT * FROM NHM_GiaCaThiTruong WHERE nhm_gctt_id = ?";
        return template.queryForObject(sql, new Object[]{sanPhamId}, new RowMapper<NHM_GiaCaThiTruong>() {
            @Override
            public NHM_GiaCaThiTruong mapRow(ResultSet rs, int rowNum) throws SQLException {
                return new NHM_GiaCaThiTruong(
                    rs.getInt("nhm_gctt_id"),
                    rs.getString("nhm_ten_sp"),
                    rs.getDouble("nhm_gia_thi_truong"),
                    rs.getDate ("nhm_ngay_cap_nhat")
                );
            }
        });
    }

    // Thêm giá cả sản phẩm mới vào cơ sở dữ liệu
    public int addGiaCaThiTruong(NHM_GiaCaThiTruong giaCaThiTruong) {
        String sql = "INSERT INTO NHM_GiaCaThiTruong (nhm_ten_sp, nhm_gia_thi_truong, nhm_ngay_cap_nhat) VALUES (?, ?, ?)";
        return template.update(sql, 
                               giaCaThiTruong.getNhm_ten_sp(), 
                               giaCaThiTruong.getNhm_gia_thi_truong(),
                               new Timestamp(giaCaThiTruong.getNhm_ngay_cap_nhat().getTime()));
    }

    // Cập nhật giá cả sản phẩm trong cơ sở dữ liệu
    public int updateGiaCaThiTruong(NHM_GiaCaThiTruong gctt) {
        String sql = "UPDATE NHM_GiaCaThiTruong SET nhm_ten_sp = ?, nhm_gia_thi_truong = ?, nhm_ngay_cap_nhat = ? WHERE nhm_gctt_id = ?";
        return template.update(sql, 
        		gctt.getNhm_ten_sp(), 
        		gctt.getNhm_gia_thi_truong(),
                               new Timestamp(gctt.getNhm_ngay_cap_nhat().getTime()), 
                               gctt.getNhm_gctt_id());
    }

    // Xóa giá cả sản phẩm khỏi cơ sở dữ liệu
    public int deleteGiaCaThiTruong(int sanPhamId) {
        String sql = "DELETE FROM NHM_GiaCaThiTruong WHERE nhm_gctt_id = ?";
        return template.update(sql, sanPhamId);
    }
}
