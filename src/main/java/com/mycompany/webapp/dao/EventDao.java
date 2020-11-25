package com.mycompany.webapp.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.EventDto;

@Repository
public class EventDao {
	@Resource
	private SqlSessionTemplate sst;
	
	public  List<EventDto> selectAll() {
		List<EventDto> all = sst.selectList("mybatis.mapper.event.selectAll");
		return all;
	}
}


