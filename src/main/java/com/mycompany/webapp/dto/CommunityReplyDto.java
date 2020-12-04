package com.mycompany.webapp.dto;

public class CommunityReplyDto {
	private int reply_no;
	private int reply_content;
	private int reply_date;
	private int mid;
	private int comm_no;
	
	
	public int getReply_no() {
		return reply_no;
	}
	public void setReply_no(int reply_no) {
		this.reply_no = reply_no;
	}
	public int getReply_content() {
		return reply_content;
	}
	public void setReply_content(int reply_content) {
		this.reply_content = reply_content;
	}
	public int getReply_date() {
		return reply_date;
	}
	public void setReply_date(int reply_date) {
		this.reply_date = reply_date;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public int getComm_no() {
		return comm_no;
	}
	public void setComm_no(int comm_no) {
		this.comm_no = comm_no;
	}
	
	

}
