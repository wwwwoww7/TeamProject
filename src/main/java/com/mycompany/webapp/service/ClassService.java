package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.ClassDao;
import com.mycompany.webapp.dto.ClassDto;
import com.mycompany.webapp.dto.PickDto;

@Service
public class ClassService {

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
		int pickYn = classDao.selectPickByMidClassNo(pickDto);
		return pickYn;
	}


	
	
	
	
	
	
	
}
