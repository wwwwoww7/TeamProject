package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dao.ClassNoticeDao;
import com.mycompany.webapp.dto.ClassNoticeDto;
import com.mycompany.webapp.dto.CommunityPagerDto;
import com.mycompany.webapp.dto.MyPagerDto;

@Repository
public class ClassNoticeService {

	@Resource
	private ClassNoticeDao classNoticeDao;

	public int getTotalRow() {
		// TODO Auto-generated method stub
		return 0;
	}
	
	public List<ClassNoticeDto> getNotice(MyPagerDto pager){
		List<ClassNoticeDto> list = classNoticeDao.selectNotice(pager);
		return list;
	}
}
