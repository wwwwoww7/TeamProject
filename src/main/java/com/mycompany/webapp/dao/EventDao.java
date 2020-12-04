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
	
	

	public List<EventDto> selectEight() {
		List<EventDto> elist = sst.selectList("mybatis.mapper.event.selectListEight");
		return elist;
	}
	
	public EventDto selectEventDetail(int event_no) {
		EventDto ed = sst.selectOne("mybatis.mapper.event.selectEventDetail",event_no);
		return ed;
	}

	public int insert(EventDto event) {
		int rows = sst.insert("mybatis.mapper.event.insert", event);
		return rows;
	}


	public EventDto selectByBno(int event_no) {
		EventDto event = sst.selectOne("mybatis.mapper.event.selectByBno", event_no);
		return event;
	}


	public int UpdateEvent(EventDto event) {
		int rows = sst.update("mybatis.mapper.event.update", event);
		return rows;
	}

	
		public int deleteByBno(int event_no) {
			int rows = sst.delete("mybatis.mapper.event.deleteByBno", event_no);
			return rows;
		}
	


}


