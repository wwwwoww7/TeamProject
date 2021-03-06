package com.mycompany.webapp.dto;

import java.util.Date;
import org.springframework.web.multipart.MultipartFile;

public class ClassNoticeDto {
	
	private int class_notice_no;
	private Date class_notice_date;
	private String class_notice_title;
	private String class_notice_content;
	private String class_nm_s;
	private String mid;
	private int class_hw_no;
	private String class_hw_file;
	private MultipartFile class_hwFile;
	private String class_hw_type;
	private int class_no;
	
	
	public ClassNoticeDto(int class_no,String class_nm_s) {
		this.class_no = class_no;
		this.class_nm_s = class_nm_s;		
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
	public int getClass_no() {
		return class_no;
	}
	public void setClass_no(int class_no) {
		this.class_no = class_no;
	}
	public int getClass_hw_no() {
		return class_hw_no;
	}
	public void setClass_hw_no(int class_hw_no) {
		this.class_hw_no = class_hw_no;
	}
	public String getClass_hw_file() {
		return class_hw_file;
	}
	public void setClass_hw_file(String class_hw_file) {
		this.class_hw_file = class_hw_file;
	}
	public String getClass_nm_s() {
		return class_nm_s;
	}
	public void setClass_nm_s(String class_nm_s) {
		this.class_nm_s = class_nm_s;
	}
	public MultipartFile getClass_hwFile() {
		return class_hwFile;
	}
	public void setClass_hwFile(MultipartFile class_hwFile) {
		this.class_hwFile = class_hwFile;
	}
	public String getClass_hw_type() {
		return class_hw_type;
	}
	public void setClass_hw_type(String class_hw_type) {
		this.class_hw_type = class_hw_type;
	}
	
}
