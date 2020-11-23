package com.mycompany.webapp.dto;

import java.util.Date;

public class CommunityDto {
	private int comm_no;
	private Date comm_date;
	private String comm_title;
	private String comm_content;
	private int comm_hitno;
	private String user_id;
	private String class_cate_no;
	
	
	public int getComm_no() {
		return comm_no;
	}
	public void setComm_no(int comm_no) {
		this.comm_no = comm_no;
	}
	public Date getComm_date() {
		return comm_date;
	}
	public void setComm_date(Date comm_date) {
		this.comm_date = comm_date;
	}
	public String getComm_title() {
		return comm_title;
	}
	public void setComm_title(String comm_title) {
		this.comm_title = comm_title;
	}
	public String getComm_content() {
		return comm_content;
	}
	public void setComm_content(String comm_content) {
		this.comm_content = comm_content;
	}
	public int getComm_hitno() {
		return comm_hitno;
	}
	public void setComm_hitno(int comm_hitno) {
		this.comm_hitno = comm_hitno;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getClass_cate_no() {
		return class_cate_no;
	}
	public void setClass_cate_no(String class_cate_no) {
		this.class_cate_no = class_cate_no;
	}
	
	
}
