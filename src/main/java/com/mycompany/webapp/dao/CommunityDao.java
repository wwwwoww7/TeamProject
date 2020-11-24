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
	
	

	public List<CommunityDto> selectByPage(CommunityPagerDto pager) {
		List<CommunityDto> list = sst.selectList("mybatis.mapper.community.selectByPage", pager);
		return list;
	}

	public int countAll() {
		Integer totalRows = sst.selectOne("mybatis.mapper.community.countAll");
		return totalRows;
	}

	public List<CommunityDto> selectAll(){
		List<CommunityDto> all = sst.selectList("mybatis.mapper.community.selectAll");
		return all;
	}

	public List<CommunityDto> selectHealth(int class_cate_no) {
		List<CommunityDto> list = sst.selectList("mybatis.mapper.community.selectHealth");
		return list;
	}
	
	
}
