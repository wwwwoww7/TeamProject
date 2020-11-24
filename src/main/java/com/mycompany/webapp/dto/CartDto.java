package com.mycompany.webapp.dto;

public class CartDto {
	private String user_id;
	private String user_tel;
	private String user_nm;
	private int class_no;
	private String class_nm;
	private String class_thum;
	private int class_price;
	
	public CartDto(String user_id, String user_tel, String user_nm, int class_no, String class_nm, String class_thum,
			int class_price) {
		
		this.user_id = user_id;
		this.user_tel = user_tel;
		this.user_nm = user_nm;
		this.class_no = class_no;
		this.class_nm = class_nm;
		this.class_thum = class_thum;
		this.class_price = class_price;
	}

	
	public String getUser_id() {
		return user_id;
	}

	
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	
	public String getUser_tel() {
		return user_tel;
	}

	
	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}

	
	public String getUser_nm() {
		return user_nm;
	}

	
	public void setUser_nm(String user_nm) {
		this.user_nm = user_nm;
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
	
	
	
}
