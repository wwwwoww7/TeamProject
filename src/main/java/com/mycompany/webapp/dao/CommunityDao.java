package com.mycompany.webapp.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.CommunityDto;
import com.mycompany.webapp.dto.CommunityPagerDto;
@Repository
public class CommunityDao {

	@Resource
	private SqlSessionTemplate sst;
	
	public List<CommunityDto> selectAll(){
		List<CommunityDto> list = sst.selectList("mybatis.mapper.community.selectAll");
		return list;
	}

	public List<CommunityDto> selectByPage(CommunityPagerDto pager) {
		List<CommunityDto> list = sst.selectList("mybatis.mapper.community.selectByPage", pager);
		return list;
	}

	public int countAll() {
		Integer totalRows = sst.selectOne("mybatis.mapper.community.countAll");
		return totalRows;
	}
	
	
}
