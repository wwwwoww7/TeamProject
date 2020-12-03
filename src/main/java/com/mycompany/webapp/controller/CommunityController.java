package com.mycompany.webapp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.print.attribute.standard.PageRanges;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.webapp.dto.ClassCateDto;
import com.mycompany.webapp.dto.CommunityDto;
import com.mycompany.webapp.dto.CommunityPagerDto;
import com.mycompany.webapp.dto.ReviewDto;
import com.mycompany.webapp.dto.ReviewPagerDto;
import com.mycompany.webapp.service.CommunityService;

/**
 * 2020. 11. 17
 *
 */
@Controller
@RequestMapping("/community")
public class CommunityController {
	private static final Logger logger = LoggerFactory.getLogger(CommunityController.class);

	@Resource
	private CommunityService service;

	@GetMapping("/communityAll")
	public String communityAll(@RequestParam(defaultValue = "1") int pageNo, Model model) {
		int totalRows = service.getTotalRows();
		CommunityPagerDto pager = new CommunityPagerDto(2, 5, totalRows, pageNo);
		List<CommunityDto> list = service.getCommunityAll(pager);
		
		model.addAttribute("cate", 1);
		model.addAttribute("list", list);
		model.addAttribute("pager", pager);

		return "community/community_list";
	}

	@GetMapping("/reviewAll")
	public String reviewAll(@RequestParam(defaultValue = "1") int pageNo, Model model) {

		int totalRows = service.getTotalReviewRows();
		ReviewPagerDto pager = new ReviewPagerDto(3, 5, totalRows, pageNo);
		List<ReviewDto> review = service.getReviewAll(pager);
		List<ClassCateDto> catelist = service.getCateList();
		model.addAttribute("catelist", catelist);
		model.addAttribute("review", review);
		model.addAttribute("cate", "전체");
		model.addAttribute("pager", pager);

		return "community/community_list_review";
	}

	@GetMapping("/communityChat")
	public String communityChat(Model model) {

		List<CommunityDto> chat = service.getCommunityChat();

		model.addAttribute("chat", chat);
		model.addAttribute("cate", 2);
		logger.info("Chat야 오고있니");

		return "community/community_list";
	}

	@GetMapping("/communityTips")
	public String communityCareer(Model model) {
		List<CommunityDto> tips = service.getCommunityTips();
		model.addAttribute("tips", tips);
		model.addAttribute("cate", 3);
		return "community/community_list";
	}

	@GetMapping("/communityBoast")
	public String communityBoast(Model model) {
		List<CommunityDto> boast = service.getCommunityBoast();
		model.addAttribute("boast", boast);
		model.addAttribute("cate", 4);
		return "community/community_list";
	}

	@GetMapping("/communityAssign")
	public String communityAssign(Model model) {
		List<CommunityDto> assign = service.getCommunityAssign();
		model.addAttribute("assign", assign);
		model.addAttribute("cate", 5);
		return "community/community_list";
	}

	@GetMapping("/communityDetail")
	public String communityDetail(int comm_no, Model model) {
		CommunityDto communityDetail = service.getCommunityDetail(comm_no);
		model.addAttribute("communityDetail", communityDetail);
		int result = service.addCommunityHitno(comm_no);
		logger.info("result="+result);
		return "community/community_detail";
		}

	@GetMapping("/communityDetailReview")
	public String communityDetailReview(int review_no, Model model) {
		ReviewDto reviewDetail = service.getReviewDetail(review_no);
		model.addAttribute("reviewDetail", reviewDetail);
		int result = service.addReviewHitno(review_no);
		return "community/community_detail_review";
	}
	
	//community_글쓰기 누르면 뜨는 페이지
	@GetMapping("/communityWrite")
	public String communityWrite(Model model) {
		//class_cate_nm을 불러와야된다. & 작성자 불러와야된다.
		logger.info("안녕하셈");
		List<CommunityDto> communityCateList = service.getCommunityCateList();
		
		model.addAttribute("communityCateList", communityCateList);
		return "community/community_writeform";
	}
	//class.class_no, review.review_star불러와야됨
	@GetMapping("/communityWriteReview") 
	public String communityWriteReview(Model model) {
		//class.class_nm & review.review_star 불러와야함.
		logger.info("나올차례임니다.");
		List<ReviewDto> reviewCateList = service.getCommunitReviewCateList();
		model.addAttribute("reviewCateList", reviewCateList);
		return "community/community_reviewform";
	}
	
	@PostMapping("/communityWrite")
	public String communityWriteApply(CommunityDto writeapply,HttpSession session,HttpServletResponse response) throws Exception {
		
		logger.info("와ㅓ이라누 =====> "+writeapply.getComm_content() );
		logger.info("와ㅓ이라누 =====> "+writeapply.getComm_title() );
		
		String sessionMid = (String) session.getAttribute("sessionMid");
		writeapply.setMid(sessionMid);
		int result = service.communityWriteApply(writeapply);
		if(result==1) {
			return "redirect:/community";
//			JSONObject object = new JSONObject();
//			object.put("result", "success");
//
//			String json = object.toString(); // {"result" : "success"}
//
//			// 응답보내기
//			PrintWriter out = response.getWriter();
//			response.setContentType("application/json;charset=utf-8");
//			out.println(json);
//			out.flush();
//			out.close();
		}else {
			return "redirect:/community";
		}
			
	}
	
	@PostMapping("/communityWriteReview")
	public String communityWriteReview(ReviewDto reviewapply, HttpSession session, HttpServletResponse response) throws Exception {
		logger.info("지금 이게 찍혀야 정상임");
		String sessionMid = (String) session.getAttribute("sessionMid");
		reviewapply.setMid(sessionMid);
		int result = service.CommunityReviewApply(reviewapply);
		if(result==1) {
			return "redirect:/community";
//			JSONObject object = new JSONObject();
//			object.put("result", "success");
//
//			String json = object.toString(); // {"result" : "success"}
//
//			// 응답보내기
//			PrintWriter out = response.getWriter();
//			response.setContentType("application/json;charset=utf-8");
//			out.println(json);
//			out.flush();
//			out.close();
		}else {
			return "redirect:/community";
		}
		
	}

	@GetMapping("/catereview")
	public String catereview1(int cateno, Model model) {
		logger.info("여기가찍히나요");
		
		List<ReviewDto> catereview = service.getReviewCatereview(cateno);
		model.addAttribute("review", catereview);
		List<ClassCateDto> catelist = service.getCateList();
		model.addAttribute("catelist", catelist);
		String catenm = service.getCatenm(cateno);
		model.addAttribute("cate", catenm);

		return "community/community_list_review";
	}

	
	@GetMapping("/cateReview")
	public String cateReview(Model model) {
		List<ReviewDto> cateReview = service.getcateReview();
		model.addAttribute("cateReview", cateReview);
		return "community/community_list_review";
	}
	
	//커뮤니티_상세페이지_수정
	@GetMapping("/communityUpdateform")
	public String communityUpdateform(int comm_no, Model model) {
		logger.info("자 수정해보자");
		List<CommunityDto> communityCateList = service.getCommunityCateList();
		model.addAttribute("communityCateList", communityCateList);
		CommunityDto communityDetail = service.getCommunityDetail(comm_no);
		model.addAttribute("communityDetail", communityDetail);
		return "community/community_updateform";
	}
	
	
	@PostMapping("/communityModify")
	public String communityModify(CommunityDto modify) {
	
		
		int result = service.setCommunityModify(modify);
		
		return "redirect:/community";
		
		
		
	}
	
	
	
	
	
	
	
}
