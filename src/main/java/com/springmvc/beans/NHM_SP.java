package com.springmvc.beans;

public class NHM_SP {
    private int nhm_sp_id;
    private String nhm_ten_sp;
    private String nhm_mo_ta;
    private double nhm_gia_ban;
    private int nhm_so_luong_ton;
    private String nhm_loai_sp;

    public NHM_SP() {}

    public NHM_SP(int nhm_sp_id, String nhm_ten_sp, String nhm_mo_ta, double nhm_gia_ban, int nhm_so_luong_ton, String nhm_loai_sp) {
        this.nhm_sp_id = nhm_sp_id;
        this.nhm_ten_sp = nhm_ten_sp;
        this.nhm_mo_ta = nhm_mo_ta;
        this.nhm_gia_ban = nhm_gia_ban;
        this.nhm_so_luong_ton = nhm_so_luong_ton;
        this.nhm_loai_sp = nhm_loai_sp;
    }

    public int getNhm_sp_id() { return nhm_sp_id; }
    public void setNhm_sp_id(int nhm_sp_id) { this.nhm_sp_id = nhm_sp_id; }

    public String getNhm_ten_sp() { return nhm_ten_sp; }
    public void setNhm_ten_sp(String nhm_ten_sp) { this.nhm_ten_sp = nhm_ten_sp; }

    public String getNhm_mo_ta() { return nhm_mo_ta; }
    public void setNhm_mo_ta(String nhm_mo_ta) { this.nhm_mo_ta = nhm_mo_ta; }

    public double getNhm_gia_ban() { return nhm_gia_ban; }
    public void setNhm_gia_ban(double nhm_gia_ban) { this.nhm_gia_ban = nhm_gia_ban; }

    public int getNhm_so_luong_ton() { return nhm_so_luong_ton; }
    public void setNhm_so_luong_ton(int nhm_so_luong_ton) { this.nhm_so_luong_ton = nhm_so_luong_ton; }

    public String getNhm_loai_sp() { return nhm_loai_sp; }
    public void setNhm_loai_sp(String nhm_loai_sp) { this.nhm_loai_sp = nhm_loai_sp; }

    @Override
    public String toString() {
        return "NHM_SP{" +
                "nhm_sp_id=" + nhm_sp_id +
                ", nhm_ten_sp='" + nhm_ten_sp + '\'' +
                ", nhm_mo_ta='" + nhm_mo_ta + '\'' +
                ", nhm_gia_ban=" + nhm_gia_ban +
                ", nhm_so_luong_ton=" + nhm_so_luong_ton +
                ", nhm_loai_sp='" + nhm_loai_sp + '\'' +
                '}';
    }
}
