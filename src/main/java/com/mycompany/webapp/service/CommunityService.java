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

	public List<CommunityDto> getCommunityHealth(){
		List<CommunityDto> health = communityDao.selectHealth();
		return health;
	}
	
	public List<CommunityDto> getCommunityCareer(){
		List<CommunityDto> career = communityDao.selectCareer();
		return career;
	}
	
	public List<CommunityDto> getCommunityMoney(){
		List<CommunityDto> money = communityDao.selectMoney();
		return money;
	}

	public List<ReviewDto> getCommunityReview() {
		List<ReviewDto> review = communityDao.selectReview();
		return review;
	}

	
}
