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

	public List<CommunityDto> selectHealth(){
		List<CommunityDto> health = sst.selectList("mybatis.mapper.community.selectHealth");
		return health;
	}

	public List<CommunityDto> selectCareer() {
		List<CommunityDto> career = sst.selectList("mybatis.mapper.community.selectCareer");
		return career;
	}

	public List<CommunityDto> selectMoney() {
		List<CommunityDto> moeny = sst.selectList("mybatis.mapper.community.selectMoney");
		return moeny;
	}

	public List<ReviewDto> selectReview() {
		List<ReviewDto> review = sst.selectList("mybatis.mapper.community.selectReview");
		return review;
	}

}
