package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dao.ClassNoticeDao;
import com.mycompany.webapp.dto.ClassNoticeDto;
import com.mycompany.webapp.dto.MyPagerDto;

@Repository
public class ClassNoticeService {
	private static final Logger logger = LoggerFactory.getLogger(ClassNoticeService.class);
	
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

	public ClassNoticeDto getNoticeDetail(int class_notice_no) {
		ClassNoticeDto notice = classNoticeDao.selectNoticeDetail(class_notice_no);		
		return notice;
	}

	public ClassNoticeDto getUpdateForm(int class_notice_no) {
		ClassNoticeDto notice = classNoticeDao.selectByNoticeNo(class_notice_no);
		return notice;
	}

	public void noticeUpdate(ClassNoticeDto classNoticeDto) {
		int rows = classNoticeDao.updateNotice(classNoticeDto);
	}

	public void noticeDelete(int class_notice_no) {
		int rows = classNoticeDao.deleteNotice(class_notice_no);
		
	}

	public void noticeWrite(ClassNoticeDto classNoticeDto) {
		classNoticeDao.insertNotice(classNoticeDto);
	}

	public List<ClassNoticeDto> selectClassNo(List<ClassNoticeDto> list) {
		List<ClassNoticeDto> classNamelist = classNoticeDao.selectClassName(list);
		return classNamelist;
	}

	
}
