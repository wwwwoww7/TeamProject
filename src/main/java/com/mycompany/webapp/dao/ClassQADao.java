package com.mycompany.webapp.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.controller.HomeController;
import com.mycompany.webapp.dto.ClassNoticeDto;
import com.mycompany.webapp.dto.ClassQADto;
import com.mycompany.webapp.dto.MyPagerDto;

@Repository
public class ClassQADao {
	private static final Logger logger = LoggerFactory.getLogger(ClassQADao.class);

	@Resource
	private SqlSessionTemplate sst;
	
	//qa목록의 전체 행수 가져오기
	public int countAllByTutorID(String mid) {
		int totalRows = sst.selectOne("mybatis.mapper.class_QA.countAllByTutorID",mid);
		return totalRows;
	}
	public int countAllByUserID(String mid) {
		int totalRows = sst.selectOne("mybatis.mapper.class_QA.countAllByUserID",mid);
		return totalRows;
	}
	public List<ClassQADto> selectQa(MyPagerDto pager) {
		List<ClassQADto> qaList = sst.selectList("mybatis.mapper.class_QA.selectByTutorQa",pager);
		return qaList;
	}
	public List<ClassQADto> selectByUserQa(MyPagerDto pager) {
		List<ClassQADto> qaList = sst.selectList("mybatis.mapper.class_QA.selectByUserQa",pager);
		return qaList;
	}
	public ClassQADto selectQADetail(int class_qa_no) {
		ClassQADto qa = sst.selectOne("mybatis.mapper.class_QA.selectQADetail",class_qa_no);
		return qa;
	}
	public int updateQAAnswer(ClassQADto qaAnswer) {
		int rows = sst.insert("mybatis.mapper.class_QA.updateQAAnswer", qaAnswer);
		return rows;
	}
	
	
	//강의번호로 qalist 조회
	public List<ClassQADto> selectQaListByClassNo(int class_no) {
		List<ClassQADto> qlist = sst.selectList("mybatis.mapper.class_QA.selectQAListClassNo", class_no);
		logger.info("===================>" + qlist.size());
		return qlist;
	}
	public int insertQa(ClassQADto qa) {
		int rows = sst.insert("mybatis.mapper.class_QA.insertQA", qa);
		return rows;
	}
	public int QaDelete(int class_qa_no) {
		int rows = sst.update("mybatis.mapper.class_QA.QaDelete", class_qa_no);
		return rows;
	}
	
}
