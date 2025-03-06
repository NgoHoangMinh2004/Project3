package com.springmvc.beans;

import java.util.Date;

public class NHM_DonHang {

    private int nhm_dh_id;           // ID đơn hàng
    private int nhm_tk_id;           // ID tài khoản người đặt hàng
    private Date nhm_ngay_dat_hang;  // Ngày đặt hàng
    private double nhm_tong_tien;    // Tổng tiền của đơn hàng
    private String nhm_trang_thai;   // Trạng thái đơn hàng (Chờ xác nhận, Đang giao, Hoàn thành, Hủy)

    // Constructor
    public NHM_DonHang(int nhm_dh_id, int nhm_tk_id, Date nhm_ngay_dat_hang, double nhm_tong_tien, String nhm_trang_thai) {
        this.nhm_dh_id = nhm_dh_id;
        this.nhm_tk_id = nhm_tk_id;
        this.nhm_ngay_dat_hang = nhm_ngay_dat_hang;
        this.nhm_tong_tien = nhm_tong_tien;
        this.nhm_trang_thai = nhm_trang_thai;
    }

    // Getter và Setter cho các thuộc tính
    public int getNhm_dh_id() {
        return nhm_dh_id;
    }

    public void setNhm_dh_id(int nhm_dh_id) {
        this.nhm_dh_id = nhm_dh_id;
    }

    public int getNhm_tk_id() {
        return nhm_tk_id;
    }

    public void setNhm_tk_id(int nhm_tk_id) {
        this.nhm_tk_id = nhm_tk_id;
    }

    public Date getNhm_ngay_dat_hang() {
        return nhm_ngay_dat_hang;
    }

    public void setNhm_ngay_dat_hang(Date nhm_ngay_dat_hang) {
        this.nhm_ngay_dat_hang = nhm_ngay_dat_hang;
    }

    public double getNhm_tong_tien() {
        return nhm_tong_tien;
    }

    public void setNhm_tong_tien(double nhm_tong_tien) {
        this.nhm_tong_tien = nhm_tong_tien;
    }

    public String getNhm_trang_thai() {
        return nhm_trang_thai;
    }

    public void setNhm_trang_thai(String nhm_trang_thai) {
        this.nhm_trang_thai = nhm_trang_thai;
    }

    @Override
    public String toString() {
        return "NHM_DonHang{" +
                "nhm_dh_id=" + nhm_dh_id +
                ", nhm_tk_id=" + nhm_tk_id +
                ", nhm_ngay_dat_hang=" + nhm_ngay_dat_hang +
                ", nhm_tong_tien=" + nhm_tong_tien +
                ", nhm_trang_thai='" + nhm_trang_thai + '\'' +
                '}';
    }
}
