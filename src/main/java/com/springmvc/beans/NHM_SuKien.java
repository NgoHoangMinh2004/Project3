package com.springmvc.beans;

import java.util.Date;

public class NHM_SuKien {
    private int nhm_sk_id;
    private String nhm_ten_sk;
    private String nhm_mo_ta;
    private Date nhm_ngay_bat_dau;
    private Date nhm_ngay_ket_thuc;


    public NHM_SuKien() {
		super();
	}


	public NHM_SuKien(int nhm_sk_id, String nhm_ten_sk, String nhm_mo_ta, Date nhm_ngay_bat_dau, Date nhm_ngay_ket_thuc) {
        this.nhm_sk_id = nhm_sk_id;
        this.nhm_ten_sk = nhm_ten_sk;
        this.nhm_mo_ta = nhm_mo_ta;
        this.nhm_ngay_bat_dau = nhm_ngay_bat_dau;
        this.nhm_ngay_ket_thuc = nhm_ngay_ket_thuc;
    }


	/**
	 * @return the nhm_sk_id
	 */
	public int getNhm_sk_id() {
		return nhm_sk_id;
	}


	/**
	 * @param nhm_sk_id the nhm_sk_id to set
	 */
	public void setNhm_sk_id(int nhm_sk_id) {
		this.nhm_sk_id = nhm_sk_id;
	}


	/**
	 * @return the nhm_ten_sk
	 */
	public String getNhm_ten_sk() {
		return nhm_ten_sk;
	}


	/**
	 * @param nhm_ten_sk the nhm_ten_sk to set
	 */
	public void setNhm_ten_sk(String nhm_ten_sk) {
		this.nhm_ten_sk = nhm_ten_sk;
	}


	/**
	 * @return the nhm_mo_ta
	 */
	public String getNhm_mo_ta() {
		return nhm_mo_ta;
	}


	/**
	 * @param nhm_mo_ta the nhm_mo_ta to set
	 */
	public void setNhm_mo_ta(String nhm_mo_ta) {
		this.nhm_mo_ta = nhm_mo_ta;
	}


	/**
	 * @return the nhm_ngay_bat_dau
	 */
	public Date getNhm_ngay_bat_dau() {
		return nhm_ngay_bat_dau;
	}


	/**
	 * @param nhm_ngay_bat_dau the nhm_ngay_bat_dau to set
	 */
	public void setNhm_ngay_bat_dau(Date nhm_ngay_bat_dau) {
		this.nhm_ngay_bat_dau = nhm_ngay_bat_dau;
	}


	/**
	 * @return the nhm_ngay_ket_thuc
	 */
	public Date getNhm_ngay_ket_thuc() {
		return nhm_ngay_ket_thuc;
	}


	/**
	 * @param nhm_ngay_ket_thuc the nhm_ngay_ket_thuc to set
	 */
	public void setNhm_ngay_ket_thuc(Date nhm_ngay_ket_thuc) {
		this.nhm_ngay_ket_thuc = nhm_ngay_ket_thuc;
	}
   
}
