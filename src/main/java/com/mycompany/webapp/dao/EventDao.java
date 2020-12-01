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


	public List<EventDto> selectByPage(EventPagerDto pager) {
		List<EventDto> all = sst.selectList("mybatis.mapper.event.selectByPage", pager);
		return all;
	}

	public int count(int eenable) {
		int totalRows = sst.selectOne("mybatis.mapper.event.count",eenable);
		return totalRows;
	}

	public List<EventDto> selectByEndPage(EventPagerDto pager) {
		List<EventDto> all2 = sst.selectList("mybatis.mapper.event.selectByEndPage", pager);
		return all2;
	}
	
	public EventDto selectEventDetail(int event_no) {
		EventDto ed = sst.selectOne("mybatis.mapper.event.selectEventDetail",event_no);
		return ed;
	}

	public List<EventDto> selectEight() {
		List<EventDto> elist = sst.selectList("mybatis.mapper.event.selectListEight");
		return elist;
	}


	public EventDto selectEventEndDetail(int event_no) {
		EventDto ed2 = sst.selectOne("mybatis.mapper.event.selectEventEndDetail",event_no);
		return ed2;
	}



}


