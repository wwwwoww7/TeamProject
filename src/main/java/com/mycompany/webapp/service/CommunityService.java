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

@Service
public class CommunityService {
	private static final Logger logger = LoggerFactory.getLogger(CommunityService.class);
	
	@Resource
	private CommunityDao communityDao;
	
	public List<CommunityDto> getCommunityAll(){
		List<CommunityDto> list = communityDao.selectAll();
		return list;
	}

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

	public List<ReviewDto> getCommunityReview() {
		List<ReviewDto> review = communityDao.selectReview();
		return review;
	}

	
}
