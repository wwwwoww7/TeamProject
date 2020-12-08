package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.CommunityDao;
import com.mycompany.webapp.dto.ClassApplDto;
import com.mycompany.webapp.dto.ClassCateDto;
import com.mycompany.webapp.dto.CommunityDto;
import com.mycompany.webapp.dto.CommunityPagerDto;
import com.mycompany.webapp.dto.ReviewDto;
import com.mycompany.webapp.dto.ReviewPagerDto;

@Service
public class CommunityService {
	private static final Logger logger = LoggerFactory.getLogger(CommunityService.class);
	
	@Resource
	private CommunityDao communityDao;

	/*//pager추가한 community 불러오기
	public List<CommunityDto> getCommunityAll(CommunityPagerDto pager) {
		List<CommunityDto> list = communityDao.selectByPage(pager);
		return list;
	}*/
		
	
	//분야별 list 받아오기
	public List<CommunityDto> getCommunityChat(CommunityPagerDto pager){
		List<CommunityDto> chat = communityDao.selectChat(pager);
		return chat;
	}
	
	public List<CommunityDto> getCommunityTips(CommunityPagerDto pager){
		List<CommunityDto> tips = communityDao.selectTips(pager);
		return tips;
	}
	
	public List<CommunityDto> getCommunityRecommend(CommunityPagerDto pager){
		List<CommunityDto> recommend = communityDao.selectRecommend(pager);
		return recommend;
	}
	
	public List<CommunityDto> getCommunityAssign(CommunityPagerDto pager){
		List<CommunityDto> assign = communityDao.selectAssign(pager);
		return assign;
	}

	//분야별 review 받아오기
	public List<ReviewDto> getReviewCatereview(int cateno) {
		List<ReviewDto> catereview1 = communityDao.selectCatereview(cateno);
		return catereview1;
	}

	
	/* 20.11.26 지은 추가, class_no 가장 최근 리뷰 두개 조회 */
	public int getTotalRows() {
		int totalRows = communityDao.countAll();
		return totalRows;
	}
	
	public List<ReviewDto> getReviewList(int classNo) {
		List<ReviewDto> reviewList = communityDao.selectByClassNo(classNo);
		return reviewList;
	}

	//pager추가한 community 불러오기
	public List<CommunityDto> getCommunityAll(CommunityPagerDto pager) {
		List<CommunityDto> list = communityDao.selectByPage(pager);
		return list;
	}

	public int getTotalReviewRows() {
		int totalRows = communityDao.countReviewAll();
		return totalRows;
	}
	
	//pager추가한 Review 불러오기
	public List<ReviewDto> getReviewAll(ReviewPagerDto pager) {
		List<ReviewDto> list = communityDao.selectByReviewPage(pager);
		return list;
	}

	//community&review 상세페이지 불러오기
	public CommunityDto getCommunityDetail(int comm_no) {
		CommunityDto communityDetail = communityDao.selectByComno(comm_no);
		return communityDetail;
	}

	public ReviewDto getReviewDetail(int review_no) {
		ReviewDto reviewDetail = communityDao.selectByReviewno(review_no);
		return reviewDetail;
	}

	public List<CommunityDto> getCommunityCateList() {
		List<CommunityDto>  communityWrite = communityDao.selectCommunityCateList();
		return communityWrite;
	}

	public List<ReviewDto> getcateReview() {
		List<ReviewDto> cateReview = communityDao.selectcateReview();
		return cateReview;
	}

	public List<ClassCateDto> getCateList() {
		List<ClassCateDto> catelist = communityDao.selectCateList();
		return catelist;
	}

	public String getCatenm(int cateno) {
		String catanm = communityDao.selectCatenmByCateno(cateno);
		return catanm;
	}

	public int communityWriteApply(CommunityDto writeapply) {
		int result = communityDao.insertCommunityWriteApply(writeapply);
		return result;
	}

	public List<ClassApplDto> getCommunitReviewList(String mid) {
		List<ClassApplDto> reviewList = communityDao.selectReviewList(mid);
		return reviewList;
	}

	public int CommunityReviewApply(ReviewDto reviewapply) {
		int result = communityDao.insertCommunityReviewApply(reviewapply);
		return result;
	}

	public int addCommunityHitno(int comm_no) {
		int result = communityDao.addCommunityHitno(comm_no);
		return result;
	}

	public int addReviewHitno(int review_no) {
		int result = communityDao.addReviewHitno(review_no);
		return result;
	}

	public int setCommunityModify(CommunityDto modify) {
		int result = communityDao.updateCommunity(modify);
		return result;
	}

	public void communityDeleteform(int comm_no) {
		int result = communityDao.deleteByCommno(comm_no);
		
	}

	public int setReviewModify(ReviewDto modify) {
		int result = communityDao.updateReview(modify);
		return result;
	}

	public String getClassName(int review_no) {
		String class_nm = communityDao.selectClassNameByReviewNo(review_no);
		return class_nm;
	}

	public void reviewDeleteform(int review_no) {
		int result = communityDao.deleteByReviewno(review_no);
	}

	/*public List<CommunityDto> getCommunityAll(){
	List<CommunityDto> list = communityDao.selectAll();
	return list;
}*/
/*public List<ReviewDto> getReviewAll() {
	List<ReviewDto> review = communityDao.selectReviewAll();
	return review;
	}*/
/*//community&review 상세페이지 불러오기
	public CommunityDto getCommunityDetail(int comm_no) {
		CommunityDto communityDetail = communityDao.selectByComno(comm_no);
		return communityDetail;
	}
*/
	


	
	
	
	
	
}


