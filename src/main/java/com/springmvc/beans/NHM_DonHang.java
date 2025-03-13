package com.springmvc.beans;

import java.util.Date;

public class NHM_DonHang {
    private int nhm_dh_id;
    private String nhm_ten_nd;  // Thay nhm_tk_id bằng nhm_ten_nd (tên người dùng)
    private Date nhm_ngay_dat_hang;
    private String nhm_chi_tiet;

    public NHM_DonHang() {}

    public NHM_DonHang(int nhm_dh_id, String nhm_ten_nd, Date nhm_ngay_dat_hang, String nhm_chi_tiet) {
        this.nhm_dh_id = nhm_dh_id;
        this.nhm_ten_nd = nhm_ten_nd;
        this.nhm_ngay_dat_hang = new Date();
        this.nhm_chi_tiet = nhm_chi_tiet;
    }

    public int getNhm_dh_id() {
        return nhm_dh_id;
    }

    public void setNhm_dh_id(int nhm_dh_id) {
        this.nhm_dh_id = nhm_dh_id;
    }

    public String getNhm_ten_nd() {
        return nhm_ten_nd;
    }

    public void setNhm_ten_nd(String nhm_ten_nd) {
        this.nhm_ten_nd = nhm_ten_nd;
    }

    public Date getNhm_ngay_dat_hang() {
        return nhm_ngay_dat_hang;
    }

    public void setNhm_ngay_dat_hang(Date nhm_ngay_dat_hang) {
        this.nhm_ngay_dat_hang = nhm_ngay_dat_hang;
    }

    public String getNhm_chi_tiet() {
        return nhm_chi_tiet;
    }

    public void setNhm_chi_tiet(String nhm_chi_tiet) {
        this.nhm_chi_tiet = nhm_chi_tiet;
    }
}
