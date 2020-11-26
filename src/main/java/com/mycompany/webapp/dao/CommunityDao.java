package com.mycompany.webapp.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.CommunityDto;
import com.mycompany.webapp.dto.CommunityPagerDto;
import com.mycompany.webapp.dto.ReviewDto;
@Repository
public class CommunityDao {

	@Resource
	private SqlSessionTemplate sst;

	public List<CommunityDto> selectAll(){
		List<CommunityDto> list = sst.selectList("mybatis.mapper.community.selectAll");
		return list;
	}

	public List<CommunityDto> selectChat(){
		List<CommunityDto> chat = sst.selectList("mybatis.mapper.community.selectChat");
		return chat;
	}
	
	public List<CommunityDto> selectTips() {
		List<CommunityDto> tips = sst.selectList("mybatis.mapper.community.selectTips");
		return tips;
	}
	
	public List<CommunityDto> selectBoast() {
		List<CommunityDto> boast = sst.selectList("mybatis.mapper.community.selectBoast");
		return boast;
	}
	
	public List<CommunityDto> selectAssign() {
		List<CommunityDto> assign = sst.selectList("mybatis.mapper.community.selectAssign");
		return assign;
	}
	
	public List<ReviewDto> selectReview() {
		List<ReviewDto> review = sst.selectList("mybatis.mapper.community.selectReview");
		return review;
	}

}
