package com.springmvc.beans;

import java.sql.Date;
import java.sql.Timestamp;

public class NHM_GiaCaThiTruong {
    private int nhm_gctt_id;
    private String nhm_ten_sp;
    private double nhm_gia_thi_truong;
    private Date  nhm_ngay_cap_nhat;

    public NHM_GiaCaThiTruong() {}

    public NHM_GiaCaThiTruong(int nhm_gctt_id, String nhm_ten_sp, double nhm_gia_thi_truong, Date  nhm_ngay_cap_nhat) {
        this.nhm_gctt_id = nhm_gctt_id;
        this.nhm_ten_sp = nhm_ten_sp;
        this.nhm_gia_thi_truong = nhm_gia_thi_truong;
        this.nhm_ngay_cap_nhat = nhm_ngay_cap_nhat;
    }

    public int getNhm_gctt_id() {
        return nhm_gctt_id;
    }

    public void setNhm_gctt_id(int nhm_gctt_id) {
        this.nhm_gctt_id = nhm_gctt_id;
    }

    public String getNhm_ten_sp() {
        return nhm_ten_sp;
    }

    public void setNhm_ten_sp(String nhm_ten_sp) {
        this.nhm_ten_sp = nhm_ten_sp;
    }

    public double getNhm_gia_thi_truong() {
        return nhm_gia_thi_truong;
    }

    public void setNhm_gia_thi_truong(double nhm_gia_thi_truong) {
        this.nhm_gia_thi_truong = nhm_gia_thi_truong;
    }

    public Date  getNhm_ngay_cap_nhat() {
        return nhm_ngay_cap_nhat;
    }

    public void setNhm_ngay_cap_nhat(Date  nhm_ngay_cap_nhat) {
        this.nhm_ngay_cap_nhat = nhm_ngay_cap_nhat;
    }
}
