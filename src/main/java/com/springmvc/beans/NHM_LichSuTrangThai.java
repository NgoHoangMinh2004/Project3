package com.springmvc.beans;

import java.sql.Timestamp;

public class NHM_LichSuTrangThai {

    private int nhm_lstt_id;
    private int nhm_dh_id;
    private String nhm_trang_thai_moi;
    private Timestamp nhm_ngay_thay_doi;
    private int nhm_admin_id;

    // Constructor
    public NHM_LichSuTrangThai(int nhm_lstt_id, int nhm_dh_id, String nhm_trang_thai_moi, Timestamp nhm_ngay_thay_doi, int nhm_admin_id) {
        this.nhm_lstt_id = nhm_lstt_id;
        this.nhm_dh_id = nhm_dh_id;
        this.nhm_trang_thai_moi = nhm_trang_thai_moi;
        this.nhm_ngay_thay_doi = nhm_ngay_thay_doi;
        this.nhm_admin_id = nhm_admin_id;
    }

    // Getters and Setters
    public int getNhm_lstt_id() {
        return nhm_lstt_id;
    }

    public void setNhm_lstt_id(int nhm_lstt_id) {
        this.nhm_lstt_id = nhm_lstt_id;
    }

    public int getNhm_dh_id() {
        return nhm_dh_id;
    }

    public void setNhm_dh_id(int nhm_dh_id) {
        this.nhm_dh_id = nhm_dh_id;
    }

    public String getNhm_trang_thai_moi() {
        return nhm_trang_thai_moi;
    }

    public void setNhm_trang_thai_moi(String nhm_trang_thai_moi) {
        this.nhm_trang_thai_moi = nhm_trang_thai_moi;
    }

    public Timestamp getNhm_ngay_thay_doi() {
        return nhm_ngay_thay_doi;
    }

    public void setNhm_ngay_thay_doi(Timestamp nhm_ngay_thay_doi) {
        this.nhm_ngay_thay_doi = nhm_ngay_thay_doi;
    }

    public int getNhm_admin_id() {
        return nhm_admin_id;
    }

    public void setNhm_admin_id(int nhm_admin_id) {
        this.nhm_admin_id = nhm_admin_id;
    }
}
