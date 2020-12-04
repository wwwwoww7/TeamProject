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
	//이벤트 상세페이지
	public EventDto getEventDetail(int event_no) {
		EventDto ed = eventDao.selectEventDetail(event_no);
		return ed;	
	
	}
	
	//진행중인가장 최근 이벤트 8개 
	public List<EventDto> getEventList() {
		List<EventDto> elist = eventDao.selectEight();
		return elist;
	}
	//이벤트 등록
	public void eventWrite(EventDto event) {
		eventDao.insert(event);
		
	}
	//이벤트 업데이트
	public EventDto getevent(int event_no) {
		EventDto event = eventDao.selectByBno(event_no);
		return event;
	}

	public int eventUpdate(EventDto event) {
		int rows = eventDao.UpdateEvent(event);
		return rows;
	}

	public int eventDelete(int evnet_no) {
		int rows = eventDao.deleteByBno(evnet_no);
		return rows;
	}




	
}
