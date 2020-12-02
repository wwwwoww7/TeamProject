package com.mycompany.webapp.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.controller.HomeController;
import com.mycompany.webapp.dto.ClassDto;
import com.mycompany.webapp.dto.ClassVideoDto;
import com.mycompany.webapp.dto.PickDto;


@Repository
public class ClassDao {

	private static final Logger logger = LoggerFactory.getLogger(ClassDao.class);
	
	@Resource
	private SqlSessionTemplate sst;
	
	//강사가 진행하고 있는 강의목록 가져오기
	public List<ClassDto> selectTutorClass(String tutorId){
		List<ClassDto> classList = sst.selectList("mybatis.mapper.class.selectTutorClass", tutorId);
		return classList;
	}

	
	
	
	/* 20. 11. 23  지은 */
	//전체 강의 조회
	public List<ClassDto> selectClasses() {
		List<ClassDto> classList = sst.selectList("mybatis.mapper.class.selectClasses");
		return classList;
	}
	//신규 강의 4개 조회
	public List<ClassDto> selectClassesOrderByNew() {
		List<ClassDto> classList = sst.selectList("mybatis.mapper.class.selectClassesOrderByNew");
		return classList;
	}
	//평덤 높은 순 강의 4개 조회
	public List<ClassDto> selectClassesOrderByHot() {
		List<ClassDto> classList = sst.selectList("mybatis.mapper.class.selectClassesOrderByHot");
		return classList;
	}

	//강의 번호로 강의 1개 상세 조회
	public ClassDto selectbyClassNo(int class_no) {
		ClassDto classOne = sst.selectOne("mybatis.mapper.class.selectbyClassNo", class_no);
		return classOne;
	}

	//tutor_id(mid)가 진행중인 강의 리스트
	public List<ClassDto> selectbyTutorId(String tutor_id) {
		List<ClassDto> classList = sst.selectList("mybatis.mapper.class.selectbyTutorId", tutor_id);
		return classList;
	}

	//강의번호로 강사 아이디 조회 12.01
	public String selectTutorIdByClassNo(int class_no) {
		String tutor_id =  sst.selectOne("mybatis.mapper.class.selectTutorIdByClassNo", class_no);
		return tutor_id;
	}
	
	
	//로그인한 사용자, 찜 유무 포함 select 11.30
	public List<ClassDto> selectClassesOrderByHotPick(String mid) {
		List<ClassDto> classList = sst.selectList("mybatis.mapper.class.selectClassesOrderByHotPick", mid);
		return classList;
	}
	
	public int selectPickByMidClassNo(PickDto pickDto) {
		int pickYn =  sst.selectOne("mybatis.mapper.pick.selectPickByMidClassNo", pickDto);
		return pickYn;
	}


	//찜하기! 12.01
	public int insertPick(PickDto pickinfo) {
		int result = sst.insert("mybatis.mapper.pick.inserPick",pickinfo);
		return result;
	}

	//찜해제! 12.01
	public int deletePick(PickDto pickinfo) {
		int result = sst.insert("mybatis.mapper.pick.deletePick", pickinfo);
		
		return result;
	}



	public List<ClassVideoDto> selectVideoList(int class_no) {
		List<ClassVideoDto> vlist = sst.selectList("mybatis.mapper.video.selectVideoList", class_no);
		return vlist;
	}



	
	
	
	
}
