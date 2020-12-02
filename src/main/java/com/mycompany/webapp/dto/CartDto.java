package com.mycompany.webapp.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class CartDto {
	private String mid;
	private String mtel;
	private String mname;
	private int class_no;
	private String class_nm;
	private String class_thum;
	private int class_price;
	private String class_nm_s;
	private int sumPrice;
	@DateTimeFormat(pattern = "yyyy-MM-dd") private Date class_date;
	
	/**
	 * @return the mid
	 */
	public String getMid() {
		return mid;
	}
	
	/**
	 * @param mid the mid to set
	 */
	public void setMid(String mid) {
		this.mid = mid;
	}
	/**
	 * @return the mtel
	 */
	public String getMtel() {
		return mtel;
	}
	/**
	 * @param mtel the mtel to set
	 */
	public void setMtel(String mtel) {
		this.mtel = mtel;
	}
	/**
	 * @return the mname
	 */
	public String getMname() {
		return mname;
	}
	/**
	 * @param mname the mname to set
	 */
	public void setMname(String mname) {
		this.mname = mname;
	}
	/**
	 * @return the class_no
	 */
	public int getClass_no() {
		return class_no;
	}
	/**
	 * @param class_no the class_no to set
	 */
	public void setClass_no(int class_no) {
		this.class_no = class_no;
	}
	/**
	 * @return the class_nm
	 */
	public String getClass_nm() {
		return class_nm;
	}
	/**
	 * @param class_nm the class_nm to set
	 */
	public void setClass_nm(String class_nm) {
		this.class_nm = class_nm;
	}
	/**
	 * @return the class_thum
	 */
	public String getClass_thum() {
		return class_thum;
	}
	/**
	 * @param class_thum the class_thum to set
	 */
	public void setClass_thum(String class_thum) {
		this.class_thum = class_thum;
	}
	/**
	 * @return the class_price
	 */
	public int getClass_price() {
		return class_price;
	}
	/**
	 * @param class_price the class_price to set
	 */
	public void setClass_price(int class_price) {
		this.class_price = class_price;
	}
	/**
	 * @return the class_nm_s
	 */
	public String getClass_nm_s() {
		return class_nm_s;
	}
	/**
	 * @param class_nm_s the class_nm_s to set
	 */
	public void setClass_nm_s(String class_nm_s) {
		this.class_nm_s = class_nm_s;
	}

	/**
	 * @return the sumPrice
	 */
	public int getSumPrice() {
		return sumPrice;
	}

	/**
	 * @param sumPrice the sumPrice to set
	 */
	public void setSumPrice(int sumPrice) {
		this.sumPrice = sumPrice;
	}

	/**
	 * @return the class_date
	 */
	public Date getClass_date() {
		return class_date;
	}

	/**
	 * @param class_date the class_date to set
	 */
	public void setClass_date(Date class_date) {
		this.class_date = class_date;
	}

	
	
	
	
	
	
}
