package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.CommunityDao;
import com.mycompany.webapp.dto.CommunityDto;
import com.mycompany.webapp.dto.CommunityPagerDto;
import com.mycompany.webapp.dto.ReviewDto;
import com.mycompany.webapp.dto.ReviewPagerDto;

@Service
public class CommunityService {
	private static final Logger logger = LoggerFactory.getLogger(CommunityService.class);
	
	@Resource
	private CommunityDao communityDao;

	/*public List<CommunityDto> getCommunityAll(){
		List<CommunityDto> list = communityDao.selectAll();
		return list;
	}*/

	public List<CommunityDto> getCommunityChat(){
		List<CommunityDto> chat = communityDao.selectChat();
		return chat;
	}
	
	public List<CommunityDto> getCommunityTips(){
		List<CommunityDto> tips = communityDao.selectTips();
		return tips;
	}
	
	public List<CommunityDto> getCommunityBoast(){
		List<CommunityDto> boast = communityDao.selectBoast();
		return boast;
	}
	
	public List<CommunityDto> getCommunityAssign(){
		List<CommunityDto> assign = communityDao.selectAssign();
		return assign;
	}

	/*	public List<ReviewDto> getReviewAll() {
			List<ReviewDto> review = communityDao.selectReviewAll();
			return review;
		}*/

	public List<ReviewDto> getReviewCatereview1() {
		List<ReviewDto> catereview1 = communityDao.selectCatereview1();
		return catereview1;
	}

	public List<ReviewDto> getReviewCatereview2() {
		List<ReviewDto> catereview2 = communityDao.selectCatereview2();
		return catereview2;
	}

	public List<ReviewDto> getReviewCatereview3() {
		List<ReviewDto> catereview3 = communityDao.selectCatereview3();
		return catereview3;
	}

	
	/* 20.11.26 지은 추가, class_no 가장 최근 리뷰 두개 조회 */
	public int getTotalRows() {
		int totalRows = communityDao.countAll();
		return totalRows;
	}
	
	public List<ReviewDto> getReviewList(int classNo) {
		List<ReviewDto> reviewList = communityDao.selectByClassNo(classNo);
		return reviewList;
	}


	public List<CommunityDto> getCommunityAll(CommunityPagerDto pager) {
		List<CommunityDto> list = communityDao.selectByPage(pager);
		return list;
	}

	public int getTotalReviewRows() {
		int totalRows = communityDao.countReviewAll();
		return totalRows;
	}

	public List<ReviewDto> getReviewAll(ReviewPagerDto pager) {
		List<ReviewDto> list = communityDao.selectByReviewPage(pager);
		return list;
	}
	
	
	
	
}


