package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.controller.HomeController;
import com.mycompany.webapp.dao.ClassDao;
import com.mycompany.webapp.dto.ClassDto;
import com.mycompany.webapp.dto.ClassVideoDto;
import com.mycompany.webapp.dto.PickDto;

@Service
public class ClassService {
	private static final Logger logger = LoggerFactory.getLogger(ClassService.class);
	

	@Resource
	ClassDao classDao;
	
	public List<ClassDto> getClassList(int orderby){
		
		List<ClassDto> classList = null;
		
		
		switch(orderby) {
		case 0:
			classList = classDao.selectClasses();
			break; 
		case 1:
			
			classList = classDao.selectClassesOrderByNew();
			break;
		
		case 2:
			classList = classDao.selectClassesOrderByHot();
			break;
		}
		
		
		return classList;
	}
	
	public List<ClassDto> getClassList(int orderby, String mid){
		
		List<ClassDto> classList = null;
		
		
		switch(orderby) {
		case 0:
			classList = classDao.selectClasses();
			break; 
		case 1:
			classList = classDao.selectClassesOrderByNew();
			break;
		
		case 2:
			classList = classDao.selectClassesOrderByHotPick(mid);
			break;
		}
		
		
		return classList;
	}


	
	//강의 1개 조회
	public ClassDto getClass(int classNo) {
		ClassDto classOne = classDao.selectbyClassNo(classNo);
		return classOne;
	}


	public List<ClassDto> getTutoringClasses(String tutor_id) {
		List<ClassDto> classList = classDao.selectbyTutorId(tutor_id);
		return classList;
	}


	public int getPickYN(PickDto pickDto) {
		logger.info("실행");
		int pickYn = classDao.selectPickByMidClassNo(pickDto);
		return pickYn;
	}

	public int setPick(PickDto pickinfo, int clk) {
		/* clk - 1: insert, 2: delete */
		int result = 0 ;
		if(clk == 1) {
			logger.info("삽입 실행");
			classDao.insertPick(pickinfo);
			result = 1;
		} else if(clk == 2) {
			logger.info("삭제 실행");
			classDao.deletePick(pickinfo);
			result = 0;
		} 
		
		return result;
	}

	public String getTutorId(int class_no) {
		String tutor_id = classDao.selectTutorIdByClassNo(class_no);
		return tutor_id;
	}

	public List<ClassVideoDto> getClassVideo(int class_no) {
		List<ClassVideoDto> vlist = classDao.selectVideoList(class_no);
		return vlist;
	}

	
	
	
	
	
}
