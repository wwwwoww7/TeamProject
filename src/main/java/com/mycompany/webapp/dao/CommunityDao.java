package com.mycompany.webapp.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.CommunityDto;
import com.mycompany.webapp.dto.CommunityPagerDto;
import com.mycompany.webapp.dto.ReviewDto;
import com.mycompany.webapp.dto.ReviewPagerDto;
@Repository
public class CommunityDao {

	@Resource
	private SqlSessionTemplate sst;

	public List<CommunityDto> selectAll(){
		List<CommunityDto> list = sst.selectList("mybatis.mapper.community.selectAll");
		return list;
	}

	public List<CommunityDto> selectChat(){
		List<CommunityDto> chat = sst.selectList("mybatis.mapper.community.selectChat");
		return chat;
	}
	
	public List<CommunityDto> selectTips() {
		List<CommunityDto> tips = sst.selectList("mybatis.mapper.community.selectTips");
		return tips;
	}
	
	public List<CommunityDto> selectBoast() {
		List<CommunityDto> boast = sst.selectList("mybatis.mapper.community.selectBoast");
		return boast;
	}
	
	public List<CommunityDto> selectAssign() {
		List<CommunityDto> assign = sst.selectList("mybatis.mapper.community.selectAssign");
		return assign;
	}
	
	public List<ReviewDto> selectReviewAll() {
		List<ReviewDto> review = sst.selectList("mybatis.mapper.community.selectReviewAll");
		return review;
	}

	public List<ReviewDto> selectCatereview1() {
		List<ReviewDto> catereview1 = sst.selectList("mybatis.mapper.community.selectCatereview1");
		return catereview1;
	}

	public List<ReviewDto> selectCatereview2() {
		List<ReviewDto> catereview2 = sst.selectList("mybatis.mapper.community.selectCatereview2");
		return catereview2;
	}

	public List<ReviewDto> selectCatereview3() {
		List<ReviewDto> catereview3 = sst.selectList("mybatis.mapper.community.selectCatereview3");
		return catereview3;
	}

	/* 20.11.26 지은 추가, class_no 가장 최근 리뷰 두개 조회 */
	public List<ReviewDto> selectByClassNo(int class_no) {
		List<ReviewDto> reviewList = sst.selectList("mybatis.mapper.community.selectByClassNo",class_no);
		return reviewList;
	}
	//community pager
	public int countAll() {
		Integer totalRows = sst.selectOne("mybatis.mapper.community.countAll");
		return totalRows;
	}

	public List<CommunityDto> selectByPage(CommunityPagerDto pager) {
		List<CommunityDto> list = sst.selectList("mybatis.mapper.community.selectByPage", pager);
		return list;
	}
	//review pager
	public int countReviewAll() {
		Integer totalRows = sst.selectOne("mybatis.mapper.community.countReviewAll");
		return totalRows;
	}
	public List<ReviewDto> selectByReviewPage(ReviewPagerDto pager) {
		List<ReviewDto> review = sst.selectList("mybatis.mapper.community.selectByReviewPage", pager);
		return review;
	}

	public CommunityDto selectByComno(int comm_no) {
		CommunityDto communityDetail = sst.selectOne("mybatis.mapper.community.selectByComno", comm_no);
		return communityDetail;
	}

	public ReviewDto selectByReviewno(int review_no) {
		ReviewDto reviewDetail = sst.selectOne("mybatis.mapper.community.selectByReviewno", review_no);
		return reviewDetail;
	}

}
