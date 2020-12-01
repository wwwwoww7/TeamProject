package com.mycompany.webapp.dto;

import java.util.Date;

public class EventDto {
	private int event_no;
	private String event_nm;
	private String event_img;
	private Date event_start;
	private Date event_end;
	private int class_no;
	private int eenable; 
	private String event_detail;
	private String event_ct;
	
	
	public String getEvent_ct() {
		return event_ct;
	}
	public void setEvent_ct(String event_ct) {
		this.event_ct = event_ct;
	}
	public int getEenable() {
		return eenable;
	}
	public void setEenable(int eenable) {
		this.eenable = eenable;
	}
	public int getEvent_no() {
		return event_no;
	}
	public void setEvent_no(int event_no) {
		this.event_no = event_no;
	}
	public String getEvent_nm() {
		return event_nm;
	}
	public void setEvent_nm(String event_nm) {
		this.event_nm = event_nm;
	}
	public String getEvent_img() {
		return event_img;
	}
	public void setEvent_img(String event_img) {
		this.event_img = event_img;
	}
	public Date getEvent_start() {
		return event_start;
	}
	public void setEvent_start(Date event_start) {
		this.event_start = event_start;
	}
	
	
	public int getClass_no() {
		return class_no;
	}
	public void setClass_no(int class_no) {
		this.class_no = class_no;
	}
	public Date getEvent_end() {
		return event_end;
	}
	public void setEvent_end(Date event_end) {
		this.event_end = event_end;
	}
	public String getEvent_detail() {
		return event_detail;
	}
	public void setEvent_detail(String event_detail) {
		this.event_detail = event_detail;
	}

	
	
}
