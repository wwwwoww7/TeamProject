package com.mycompany.webapp.dto;

import java.util.Date;

public class ClassNoticeDto {
	
	private int class_notice_no;
	private Date class_notice_date;
	private String class_notice_title;
	private String class_notice_content;
	private String class_nm;
	private String mid;
	
	public String getClass_nm() {
		return class_nm;
	}
	public void setClass_nm(String class_nm) {
		this.class_nm = class_nm;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public int getClass_notice_no() {
		return class_notice_no;
	}
	public void setClass_notice_no(int class_notice_no) {
		this.class_notice_no = class_notice_no;
	}
	public Date getClass_notice_date() {
		return class_notice_date;
	}
	public void setClass_notice_date(Date class_notice_date) {
		this.class_notice_date = class_notice_date;
	}
	public String getClass_notice_title() {
		return class_notice_title;
	}
	public void setClass_notice_title(String class_notice_title) {
		this.class_notice_title = class_notice_title;
	}
	public String getClass_notice_content() {
		return class_notice_content;
	}
	public void setClass_notice_content(String class_notice_content) {
		this.class_notice_content = class_notice_content;
	}
	
}
