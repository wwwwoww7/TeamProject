package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.EventDao;
import com.mycompany.webapp.dto.CommunityDto;
import com.mycompany.webapp.dto.EventDto;

@Service
public class EventService {
	@Resource
	public EventDao eventDao;

	public List<EventDto> getEventList(){
		List<EventDto> all = eventDao.selectAll();
		return all;
	}
}
