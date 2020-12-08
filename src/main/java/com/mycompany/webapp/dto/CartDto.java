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
	@DateTimeFormat(pattern = "yyyy-MM-dd") private Date cart_date;
	
	
	
	public String getMid() {
		return mid;
	}
	
	public void setMid(String mid) {
		this.mid = mid;
	}
	
	public String getMtel() {
		return mtel;
	}
	
	public void setMtel(String mtel) {
		this.mtel = mtel;
	}
	
	public String getMname() {
		return mname;
	}
	
	public void setMname(String mname) {
		this.mname = mname;
	}
	
	public int getClass_no() {
		return class_no;
	}
	
	public void setClass_no(int class_no) {
		this.class_no = class_no;
	}
	
	public String getClass_nm() {
		return class_nm;
	}
	
	public void setClass_nm(String class_nm) {
		this.class_nm = class_nm;
	}
	
	public String getClass_thum() {
		return class_thum;
	}
	
	public void setClass_thum(String class_thum) {
		this.class_thum = class_thum;
	}
	
	public int getClass_price() {
		return class_price;
	}
	
	public void setClass_price(int class_price) {
		this.class_price = class_price;
	}
	
	public String getClass_nm_s() {
		return class_nm_s;
	}
	
	public void setClass_nm_s(String class_nm_s) {
		this.class_nm_s = class_nm_s;
	}

	public Date getCart_date() {
		return cart_date;
	}

	
	public void setCart_date(Date cart_date) {
		this.cart_date = cart_date;
	}



	

	

	
	
	
	
	
	
}
