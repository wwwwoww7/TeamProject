package com.mycompany.webapp.dto;

import org.springframework.web.multipart.MultipartFile;

public class UserDto {
	private String user_id;
	private String user_pw;
	private String user_nm;
	private String user_nick;
	private String user_tel;
	private String user_email;
	private String user_pro_img;
	private String user_type;
	
	private MultipartFile mphotoAttach;
	private boolean menabled;
	
	public boolean isMenabled() {
		return menabled;
	}
	public void setMenabled(boolean menabled) {
		this.menabled = menabled;
	}
	public MultipartFile getMphotoAttach() {
		return mphotoAttach;
	}
	public void setMphotoAttach(MultipartFile mphotoAttach) {
		this.mphotoAttach = mphotoAttach;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_nm() {
		return user_nm;
	}
	public void setUser_nm(String user_nm) {
		this.user_nm = user_nm;
	}
	public String getUser_nick() {
		return user_nick;
	}
	public void setUser_nick(String user_nick) {
		this.user_nick = user_nick;
	}
	public String getUser_tel() {
		return user_tel;
	}
	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_pro_img() {
		return user_pro_img;
	}
	public void setUser_pro_img(String user_pro_img) {
		this.user_pro_img = user_pro_img;
	}
	public String getUser_type() {
		return user_type;
	}
	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}
}
	
	
