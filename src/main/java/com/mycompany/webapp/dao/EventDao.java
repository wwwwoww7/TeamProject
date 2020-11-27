package com.mycompany.webapp.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.EventDto;
import com.mycompany.webapp.dto.EventPagerDto;

@Repository
public class EventDao {
	
	@Resource
	private SqlSessionTemplate sst;
	
	public  List<EventDto> selectAll(int eenable) {
		List<EventDto> all = sst.selectList("mybatis.mapper.event.selectAll",eenable);
		return all;
	}
	
	public  List<EventDto> selectEndAll(int eenable) {
		List<EventDto> all2 = sst.selectList("mybatis.mapper.event.selectEndAll",eenable);
		return all2;
	}

	public List<EventDto> selectByPage(EventPagerDto pager) {
		List<EventDto> all = sst.selectList("mybatis.mapper.event.selectByPage", pager);
		return all;
	}

	public int count() {
		int totalRows = sst.selectOne("mybatis.mapper.event.count");
		return totalRows;
	}


}


