package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.EventDao;
import com.mycompany.webapp.dto.EventDto;
import com.mycompany.webapp.dto.EventPagerDto;

@Service
public class EventService {
	@Resource
	public EventDao eventDao;

	public List<EventDto> getEventList(int eenable){
		List<EventDto> all = eventDao.selectAll(eenable);
		return all;
	}

	public List<EventDto> getEndEventList(EventPagerDto pager){
		List<EventDto> all2 = eventDao.selectByEndPage(pager);
		return all2;
	}

	public int getTotalRows(int eenable) {
		int totalRows = eventDao.count(eenable);
		return totalRows;
	}

	public List<EventDto> getEventList(EventPagerDto pager) {
		List<EventDto> all = eventDao.selectByPage(pager);
		return all;
	}

	public EventDto getEventDetail(int event_no) {
		EventDto ed = eventDao.selectEventDetail(event_no);
		return ed;	
	
	}
	

	public EventDto getEventEndDetail(int event_no) {
		EventDto ed2 = eventDao.selectEventEndDetail(event_no);
		return ed2;
	}
	
	//진행중인가장 최근 이벤트 8개 
	public List<EventDto> getEventList() {
		List<EventDto> elist = eventDao.selectEight();
		return elist;
	}

	public void eventWrite(EventDto event) {
		eventDao.insert(event);
		
	} 
	 
	
}
