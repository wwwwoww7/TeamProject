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

	//페이지 전체 행수 가져오기
	public int getTotalRow() {
		int totalRows = classNoticeDao.countAll();
		return totalRows;
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

	public int noticeUpdate(ClassNoticeDto classNoticeDto) {
		int rows = classNoticeDao.updateNotice(classNoticeDto);
		return rows;
	}

	public void noticeDelete(int class_notice_no) {
		int rows = classNoticeDao.deleteNotice(class_notice_no);
		
	}

	public void noticeWrite(ClassNoticeDto classNoticeDto) {
		classNoticeDao.insertNotice(classNoticeDto);
	}

	public List<ClassNoticeDto> selectClassNo(ClassNoticeDto list) {
		List<ClassNoticeDto> classNamelist = classNoticeDao.selectClassName(list);
		return classNamelist;
	}


	
	
}
