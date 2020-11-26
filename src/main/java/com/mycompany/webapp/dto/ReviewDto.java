package com.mycompany.webapp.dto;

import java.util.Date;

public class ReviewDto {
	private int review_no;
	private Date review_date;
	private String review_title;
	private String review_content;
	private int review_hitno;
	private String mid;
	private String class_no;
	private int review_star;
	private String class_cate_no;
	private String class_cate_nm;
	private String class_cate;
	private String mnick;
	private String mpro_img;
	
	
	public int getReview_no() {
		return review_no;
	}
	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}
	public Date getReview_date() {
		return review_date;
	}
	public void setReview_date(Date review_date) {
		this.review_date = review_date;
	}
	public String getReview_title() {
		return review_title;
	}
	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public int getReview_hitno() {
		return review_hitno;
	}
	public void setReview_hitno(int review_hitno) {
		this.review_hitno = review_hitno;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getClass_no() {
		return class_no;
	}
	public void setClass_no(String class_no) {
		this.class_no = class_no;
	}
	public int getReview_star() {
		return review_star;
	}
	public void setReview_star(int review_star) {
		this.review_star = review_star;
	}
	public String getClass_cate_no() {
		return class_cate_no;
	}
	public void setClass_cate_no(String class_cate_no) {
		this.class_cate_no = class_cate_no;
	}
	public String getClass_cate_nm() {
		return class_cate_nm;
	}
	public void setClass_cate_nm(String class_cate_nm) {
		this.class_cate_nm = class_cate_nm;
	}
	public String getClass_cate() {
		return class_cate;
	}
	public void setClass_cate(String class_cate) {
		this.class_cate = class_cate;
	}
	public String getMnick() {
		return mnick;
	}
	public void setMnick(String mnick) {
		this.mnick = mnick;
	}
	public String getMpro_img() {
		return mpro_img;
	}
	public void setMpro_img(String mpro_img) {
		this.mpro_img = mpro_img;
	}
	
	
}