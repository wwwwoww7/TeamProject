package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dao.ClassQADao;
import com.mycompany.webapp.dto.ClassNoticeDto;
import com.mycompany.webapp.dto.ClassQADto;
import com.mycompany.webapp.dto.MyPagerDto;

@Repository
public class ClassQAService {
	private static final Logger logger = LoggerFactory.getLogger(ClassQAService.class);
	
	@Resource
	private ClassQADao classQADao;

	//페이지 전체 행수 가져오기
	public int getTotalRow() {
		int totalRows = classQADao.countAll();
		return totalRows;
	}

	//페이징 단위 만큼 가져오기
	public List<ClassQADto> getQa(MyPagerDto pager) {
		List<ClassQADto> list = classQADao.selectQa(pager);
		return list;
	}

	//강의 문의 상세 내용 가져오기
	public ClassQADto getQADetail(int class_qa_no) {
		ClassQADto qa = classQADao.selectQADetail(class_qa_no);		
		return qa;
	
	}
	//강의 답변 달기
	public void setQAAnswer(ClassQADto qaAnswer) {
		int qa = classQADao.updateQAAnswer(qaAnswer);		
	}

	public List<ClassQADto> getQAListByClassNo(int class_no) {
		List<ClassQADto> qlist = classQADao.selectQaListByClassNo(class_no);
		return qlist;
	}
	
	
}
