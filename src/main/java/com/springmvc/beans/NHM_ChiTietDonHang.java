package com.springmvc.beans;

public class NHM_ChiTietDonHang {

    private int nhm_ctdh_id;   // ID chi tiết đơn hàng
    private int nhm_dh_id;     // ID đơn hàng
    private int nhm_sp_id;     // ID sản phẩm
    private int nhm_so_luong;  // Số lượng sản phẩm trong đơn hàng
    private double nhm_gia_ban; // Giá bán sản phẩm trong đơn hàng

    // Constructor
    public NHM_ChiTietDonHang(int nhm_ctdh_id, int nhm_dh_id, int nhm_sp_id, int nhm_so_luong, double nhm_gia_ban) {
        this.nhm_ctdh_id = nhm_ctdh_id;
        this.nhm_dh_id = nhm_dh_id;
        this.nhm_sp_id = nhm_sp_id;
        this.nhm_so_luong = nhm_so_luong;
        this.nhm_gia_ban = nhm_gia_ban;
    }

    // Getter và Setter cho các thuộc tính
    public int getNhm_ctdh_id() {
        return nhm_ctdh_id;
    }

    public void setNhm_ctdh_id(int nhm_ctdh_id) {
        this.nhm_ctdh_id = nhm_ctdh_id;
    }

    public int getNhm_dh_id() {
        return nhm_dh_id;
    }

    public void setNhm_dh_id(int nhm_dh_id) {
        this.nhm_dh_id = nhm_dh_id;
    }

    public int getNhm_sp_id() {
        return nhm_sp_id;
    }

    public void setNhm_sp_id(int nhm_sp_id) {
        this.nhm_sp_id = nhm_sp_id;
    }

    public int getNhm_so_luong() {
        return nhm_so_luong;
    }

    public void setNhm_so_luong(int nhm_so_luong) {
        this.nhm_so_luong = nhm_so_luong;
    }

    public double getNhm_gia_ban() {
        return nhm_gia_ban;
    }

    public void setNhm_gia_ban(double nhm_gia_ban) {
        this.nhm_gia_ban = nhm_gia_ban;
    }

    @Override
    public String toString() {
        return "NHM_ChiTietDonHang{" +
                "nhm_ctdh_id=" + nhm_ctdh_id +
                ", nhm_dh_id=" + nhm_dh_id +
                ", nhm_sp_id=" + nhm_sp_id +
                ", nhm_so_luong=" + nhm_so_luong +
                ", nhm_gia_ban=" + nhm_gia_ban +
                '}';
    }
}
