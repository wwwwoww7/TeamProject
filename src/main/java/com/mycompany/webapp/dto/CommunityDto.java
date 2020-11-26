package com.mycompany.webapp.dto;

import java.util.Date;

public class CommunityDto {
	private int comm_no;
	private Date comm_date;
	private String comm_title;
	private String comm_content;
	private int comm_hitno;
	private String mid;
	private int comm_cate_no;
	private String comm_cate_nm;
	
	
	
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
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public int getComm_cate_no() {
		return comm_cate_no;
	}
	public void setComm_cate_no(int comm_cate_no) {
		this.comm_cate_no = comm_cate_no;
	}
	public String getComm_cate_nm() {
		return comm_cate_nm;
	}
	public void setComm_cate_nm(String comm_cate_nm) {
		this.comm_cate_nm = comm_cate_nm;
	}
	
		
}
