package com.mycompany.webapp.dto;

import org.springframework.web.multipart.MultipartFile;

public class MemberDto {
	private String mid;
	private String mpw;
	private String mname;
	private String mnick;
	private String mtel;
	private String memail;
	private String mpro_img;
	private String mtype;
	private MultipartFile mphotoAttach;
	private boolean menabled;
	
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMpw() {
		return mpw;
	}
	public void setMpw(String mpw) {
		this.mpw = mpw;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMnick() {
		return mnick;
	}
	public void setMnick(String mnick) {
		this.mnick = mnick;
	}
	public String getMtel() {
		return mtel;
	}
	public void setMtel(String mtel) {
		this.mtel = mtel;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public String getMpro_img() {
		return mpro_img;
	}
	public void setMpro_img(String mpro_img) {
		this.mpro_img = mpro_img;
	}
	public String getMtype() {
		return mtype;
	}
	public void setMtype(String mtype) {
		this.mtype = mtype;
	}
	public MultipartFile getMphotoAttach() {
		return mphotoAttach;
	}
	public void setMphotoAttach(MultipartFile mphotoAttach) {
		this.mphotoAttach = mphotoAttach;
	}
	public boolean isMenabled() {
		return menabled;
	}
	public void setMenabled(boolean menabled) {
		this.menabled = menabled;
	}

	
}
	
	
