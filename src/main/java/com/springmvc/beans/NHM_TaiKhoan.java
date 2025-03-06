package com.springmvc.beans;

public class NHM_TaiKhoan {
    private int nhm_tk_id;
    private String nhm_ten_tk;
    private String nhm_email;
    private String nhm_sdt;
    private String nhm_mat_khau;
    private String nhm_loai_tk;

    // Constructor mặc định
    public NHM_TaiKhoan() {
    }

    // Constructor đầy đủ
    public NHM_TaiKhoan(int nhm_tk_id, String nhm_ten_tk, String nhm_email, String nhm_sdt, String nhm_mat_khau, String nhm_loai_tk) {
        this.nhm_tk_id = nhm_tk_id;
        this.nhm_ten_tk = nhm_ten_tk;
        this.nhm_email = nhm_email;
        this.nhm_sdt = nhm_sdt;
        this.nhm_mat_khau = nhm_mat_khau;
        this.nhm_loai_tk = nhm_loai_tk;
    }

    // Getter và Setter
    public int getNhm_tk_id() {
        return nhm_tk_id;
    }

    public void setNhm_tk_id(int nhm_tk_id) {
        this.nhm_tk_id = nhm_tk_id;
    }

    public String getNhm_ten_tk() {
        return nhm_ten_tk;
    }

    public void setNhm_ten_tk(String nhm_ten_tk) {
        this.nhm_ten_tk = nhm_ten_tk;
    }

    public String getNhm_email() {
        return nhm_email;
    }

    public void setNhm_email(String nhm_email) {
        this.nhm_email = nhm_email;
    }

    public String getNhm_sdt() {
        return nhm_sdt;
    }

    public void setNhm_sdt(String nhm_sdt) {
        this.nhm_sdt = nhm_sdt;
    }

    public String getNhm_mat_khau() {
        return nhm_mat_khau;
    }

    public void setNhm_mat_khau(String nhm_mat_khau) {
        this.nhm_mat_khau = nhm_mat_khau;
    }

    public String getNhm_loai_tk() {
        return nhm_loai_tk;
    }

    public void setNhm_loai_tk(String nhm_loai_tk) {
        this.nhm_loai_tk = nhm_loai_tk;
    }
}
