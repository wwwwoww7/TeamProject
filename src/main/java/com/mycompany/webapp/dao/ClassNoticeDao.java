package com.mycompany.webapp.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.ClassNoticeDto;
import com.mycompany.webapp.dto.ClassNoticePagerDto;
import com.mycompany.webapp.dto.MyPagerDto;


@Repository
public class ClassNoticeDao {
	
	private static final Logger logger = LoggerFactory.getLogger(ClassNoticeDao.class);
	
	@Resource
	private SqlSessionTemplate sst;
	
	//강사가 등록한 공지사항 가져오기
	public List<ClassNoticeDto> selectNotice(MyPagerDto pager){
		List<ClassNoticeDto> noticeList = sst.selectList("mybatis.mapper.class_notice.selectNotice",pager);
		return noticeList;
	}
	
	//강사가 공지사항 등록하기
	public int insertNotice(ClassNoticeDto noticeDto) {
		int rows = sst.insert("mybatis.mapper.class_notice.insertNotice",noticeDto);
		return rows;
	}	
	
	//공지사항의 첨부파일 넣기
	public int noticeFileInput(ClassNoticeDto classNotice) {
		int rows = sst.insert("mybatis.mapper.class_notice.noticeFileInput",classNotice);
		return rows;
	}

	
	//강사가 공지사항 삭제하기
	public int deleteNotice(int class_notice_no) {
		int rows = sst.delete("mybatis.mapper.class_notice.deleteNotice",class_notice_no);
		return rows;
	}
	
	//강사가 공지사항 수정하기
	public int updateNotice(ClassNoticeDto classNoticeDto) {
		
		int rows = sst.update("mybatis.mapper.class_notice.updateNotice",classNoticeDto);
		return rows;
	}
	
	//강사가 공지사항 "파일"수정하기
	public int updateFile(ClassNoticeDto classNoticeDto) {
		int rows = sst.update("mybatis.mapper.class_notice.updateFile",classNoticeDto);
		return rows;
	}
	
	//공지사항 상세내용 불러오기
	public ClassNoticeDto selectNoticeDetail(int class_notice_no) {
		logger.info("here !!!!  ========>class_notice_no: " + class_notice_no);
		
		ClassNoticeDto notice = sst.selectOne("mybatis.mapper.class_notice.selectNoticeDetail",class_notice_no);
		
		logger.info("notice .classno =====> "+ notice.getClass_no());
		return notice;
	}
	
	public ClassNoticeDto selectByNoticeNo(int class_notice_no) {
		ClassNoticeDto notice = sst.selectOne("mybatis.mapper.class_notice.selectByNoticeNo",class_notice_no);
		return notice;
	}

	public List<ClassNoticeDto> selectByTutorId(String mid) {
		List<ClassNoticeDto> classNamelist = sst.selectList("mybatis.mapper.class_notice.selectByTutorId",mid);
		return classNamelist;
	}
	
	/* 페이지수를 가져오기 위한 전체 행 수 가져오기*/
	public int countAll() {
		int totalRows = sst.selectOne("mybatis.mapper.class_notice.countAll");
		return totalRows;
	}

	/* 해당 게시물의 파일가져오기 */
	public List<ClassNoticeDto> getFiles(int class_hw_no) {
		List<ClassNoticeDto> fileList = sst.selectList("mybatis.mapper.class_notice.getFiles",class_hw_no);
		return fileList;
	}

	public int selectAllByClassNo(int class_no) {
		int totalRows = sst.selectOne("mybatis.mapper.class_notice.countAllByClassNo", class_no);
		return totalRows;
	}

	public List<ClassNoticeDto> selectNoticeByClassNo(ClassNoticePagerDto pager) {
		List<ClassNoticeDto> noticeList = sst.selectList("mybatis.mapper.class_notice.selectNoticeByClassNo", pager);
		return noticeList;
	}

	public int deleteNoticeFile(int class_notice_no) {
		int rows = sst.delete("mybatis.mapper.class_notice.deleteNoticeFile",class_notice_no);
		return rows;
	}

	


	
}
