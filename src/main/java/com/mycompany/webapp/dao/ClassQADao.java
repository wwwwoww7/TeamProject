package com.mycompany.webapp.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.ClassNoticeDto;
import com.mycompany.webapp.dto.ClassQADto;
import com.mycompany.webapp.dto.MyPagerDto;

@Repository
public class ClassQADao {

	@Resource
	private SqlSessionTemplate sst;
	
	//사용자가 문의한 내역 가져오기
	public List<ClassQADto> selectMyQa(String user_id){
		List<ClassQADto> qaList = sst.selectList("mybatis.mapper.class_QA.selectMyQa", user_id);
		return qaList;
	}
	//qa목록의 전체 행수 가져오기
	public int countAll() {
		int totalRows = sst.selectOne("mybatis.mapper.class_QA.countAll");
		return totalRows;
	}
	public List<ClassQADto> selectQa(MyPagerDto pager) {
		List<ClassQADto> qaList = sst.selectList("mybatis.mapper.class_QA.selectQa",pager);
		return qaList;
	}
	
}
