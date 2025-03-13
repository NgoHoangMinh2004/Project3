package com.springmvc.beans;

import java.util.Date;

public class NHM_SuKienDangKy {
    private int nhm_skdk_id;
    private int nhm_sk_id;        // ID Sự kiện
    private int nhm_tk_id;        // ID Tài khoản
    private String nhm_ten_tk;    // Tên tài khoản
    private Date nhm_ngay_dk;     // Ngày đăng ký

    public NHM_SuKienDangKy() {
    	super();
    }

    public NHM_SuKienDangKy(int nhm_skdk_id, int nhm_sk_id, int nhm_tk_id, String nhm_ten_tk, Date nhm_ngay_dk) {
        this.nhm_skdk_id = nhm_skdk_id;
        this.nhm_sk_id = nhm_sk_id;
        this.nhm_tk_id = nhm_tk_id;
        this.nhm_ten_tk = nhm_ten_tk;
        this.nhm_ngay_dk = nhm_ngay_dk;
    }

	/**
	 * @return the nhm_skdk_id
	 */
	public int getNhm_skdk_id() {
		return nhm_skdk_id;
	}

	/**
	 * @param nhm_skdk_id the nhm_skdk_id to set
	 */
	public void setNhm_skdk_id(int nhm_skdk_id) {
		this.nhm_skdk_id = nhm_skdk_id;
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
	 * @return the nhm_tk_id
	 */
	public int getNhm_tk_id() {
		return nhm_tk_id;
	}

	/**
	 * @param nhm_tk_id the nhm_tk_id to set
	 */
	public void setNhm_tk_id(int nhm_tk_id) {
		this.nhm_tk_id = nhm_tk_id;
	}

	/**
	 * @return the nhm_ten_tk
	 */
	public String getNhm_ten_tk() {
		return nhm_ten_tk;
	}

	/**
	 * @param nhm_ten_tk the nhm_ten_tk to set
	 */
	public void setNhm_ten_tk(String nhm_ten_tk) {
		this.nhm_ten_tk = nhm_ten_tk;
	}

	/**
	 * @return the nhm_ngay_dk
	 */
	public Date getNhm_ngay_dk() {
		return nhm_ngay_dk;
	}

	/**
	 * @param nhm_ngay_dk the nhm_ngay_dk to set
	 */
	public void setNhm_ngay_dk(Date nhm_ngay_dk) {
		this.nhm_ngay_dk = nhm_ngay_dk;
	}
 
}
