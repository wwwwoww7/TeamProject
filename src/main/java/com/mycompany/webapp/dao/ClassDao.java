package com.mycompany.webapp.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.ClassDto;


@Repository
public class ClassDao {

	@Resource
	private SqlSessionTemplate sst;
	
	//강사가 진행하고 있는 강의목록 가져오기
	public List<ClassDto> selectTutorClass(String tutorId){
		List<ClassDto> classList = sst.selectList("mybatis.mapper.class.selectTutorClass", tutorId);
		return classList;
	}

	
	
	
	/* 20. 11. 23  지은 */
	public List<ClassDto> selectClasses() {
		List<ClassDto> classList = sst.selectList("mybatis.mapper.class.selectClasses");
		return classList;
	}
	
	
	public List<ClassDto> selectClassesOrderByNew() {
		List<ClassDto> classList = sst.selectList("mybatis.mapper.class.selectClassesOrderByNew");
		return classList;
	}

	public List<ClassDto> selectClassesOrderByHot() {
		List<ClassDto> classList = sst.selectList("mybatis.mapper.class.selectClassesOrderByHot");
		return classList;
	}



	//강의 번호로 강의 1개 상세 조회
	public ClassDto selectbyClassNo(int class_no) {
		ClassDto classOne = sst.selectOne("mybatis.mapper.class.selectbyClassNo", class_no);
		return classOne;
	}
	
	
	
}
