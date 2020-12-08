package com.mycompany.webapp.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.ClassApplDto;
import com.mycompany.webapp.dto.ClassCateDto;
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
	
	/* comm_전체 pager
	 * public List<CommunityDto> selectByPage(CommunityPagerDto pager) {
		List<CommunityDto> list = sst.selectList("mybatis.mapper.community.selectByPage", pager);
		return list;
	}*/

	public List<CommunityDto> selectChat(CommunityPagerDto pager){
		List<CommunityDto> chat = sst.selectList("mybatis.mapper.community.selectChat" , pager);
		return chat;
	}
	
	public List<CommunityDto> selectTips(CommunityPagerDto pager) {
		List<CommunityDto> tips = sst.selectList("mybatis.mapper.community.selectTips", pager);
		return tips;
	}
	
	public List<CommunityDto> selectRecommend(CommunityPagerDto pager) {
		List<CommunityDto> recommend = sst.selectList("mybatis.mapper.community.selectRecommend", pager);
		return recommend;
	}
	
	public List<CommunityDto> selectAssign(CommunityPagerDto pager) {
		List<CommunityDto> assign = sst.selectList("mybatis.mapper.community.selectAssign", pager);
		return assign;
	}
	
	public List<ReviewDto> selectReviewAll() {
		List<ReviewDto> review = sst.selectList("mybatis.mapper.community.selectReviewAll");
		return review;
	}

	public List<ReviewDto> selectCatereview(int cateno) {
		List<ReviewDto> catereview = sst.selectList("mybatis.mapper.community.selectCatereview", cateno);
		return catereview;
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

	public List<CommunityDto> selectCommunityCateList() {
		List<CommunityDto> communityWrite = sst.selectList("mybatis.mapper.community.selectCommunityCateList");
		return communityWrite;
	}

	public List<ReviewDto> selectcateReview() {
		List<ReviewDto> cateReview = sst.selectList("mybatis.mapper.community.selectcateReview");
		return cateReview;
	}

	public List<ClassCateDto> selectCateList() {
		List<ClassCateDto> catelist = sst.selectList("mybatis.mapper.community.selectCateList");
		return catelist;
	}

	public String selectCatenmByCateno(int cateno) {
		String catenm = sst.selectOne("mybatis.mapper.community.selectCatenmByCateno", cateno);
		return catenm;
	}

	
	//mid가 구매한 강의 리스트+이미 리뷰를 작성한 강의 제외 
	public List<ClassApplDto> selectReviewList(String mid) {
		List<ClassApplDto> reviewCateList = sst.selectList("mybatis.mapper.community.selectReviewList", mid);
		return reviewCateList;
	}

	public int insertCommunityWriteApply(CommunityDto writeapply) {
		int result = sst.insert("mybatis.mapper.community.insertCommunityWriteApply", writeapply);
		return result;
	}
	public int insertCommunityReviewApply(ReviewDto reviewapply) {
		int result = sst.insert("mybatis.mapper.community.insertCommunityReviewApply", reviewapply);
		return result;
	}

	public int addCommunityHitno(int comm_no) {
		int result = sst.insert("mybatis.mapper.community.addCommunityHitno", comm_no);
		return result;
	}

	public int addReviewHitno(int review_no) {
		int result = sst.insert("mybatis.mapper.community.addReviewHitno", review_no);
		return result;
	}
	//community_내용 수정하기
	public int updateCommunity(CommunityDto modify) {
		int result = sst.update("mybatis.mapper.community.updateCommunity", modify);
		return result;
	}
	//community_글 삭제하기
	public int deleteByCommno(int comm_no) {
		int result = sst.delete("mybatis.mapper.community.deleteByCommbno", comm_no);
		return result;
	}
	//Review_내용수정하기
	public int updateReview(ReviewDto modify) {
		int result = sst.update("mybatis.mapper.community.updateReview", modify);
		return result;
	}

	public String selectClassNameByReviewNo(int review_no) {
		String class_nm = sst.selectOne("mybatis.mapper.community.selectClassNameByReviewNo", review_no);
		return class_nm;
	}

	public int deleteByReviewno(int review_no) {
		int result = sst.delete("mybatis.mapper.community.deleteByReviewno", review_no);
		return result;
	}

}
