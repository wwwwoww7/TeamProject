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

	public List<EventDto> getEndEventList(int eenable){
		List<EventDto> all2 = eventDao.selectEndAll(eenable);
		return all2;
	}

	public int getTotalRows() {
		int totalRows = eventDao.count();
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


}
