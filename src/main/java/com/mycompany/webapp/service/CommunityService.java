package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.CommunityDao;
import com.mycompany.webapp.dto.CommunityDto;
import com.mycompany.webapp.dto.CommunityPagerDto;

@Service
public class CommunityService {
	private static final Logger logger = LoggerFactory.getLogger(CommunityService.class);
	
	@Resource
	private CommunityDao communityDao;
	
	public List<CommunityDto> getCommunityList(){
		List<CommunityDto> list = communityDao.selectAll();
		return list;
	}

	public List<CommunityDto> getBoardList(CommunityPagerDto pager) {
		List<CommunityDto> list = communityDao.selectByPage(pager);
		return list;
	}

	public int getTotalRows() {
		int totalRows = communityDao.countAll();
		return totalRows;
	}
	
}
