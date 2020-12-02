package com.mycompany.webapp.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.print.attribute.standard.PageRanges;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
		CommunityDto communitydetail = service.getCommunityDetail(comm_no);
		model.addAttribute("communityDetail", communitydetail);
		
		return "community/community_detail";
		}

	@GetMapping("/communityDetailReview")
	public String communityDetailReview(int review_no, Model model) {
		ReviewDto reviewDetail = service.getReviewDetail(review_no);
		model.addAttribute("reviewDetail", reviewDetail);
		
		return "community/community_detail_review";
	}

	@GetMapping("/communityWrite")
	public String communityWrite(Model model) {
		//class_cate_nm을 불러와야된다. & 작성자 불러와야된다.
		logger.info("안녕하셈");
		List<CommunityDto> communityWrite = service.getCommunityWrite();
		
		model.addAttribute("communityWrite", communityWrite);
		return "community/community_writeform";
	}

	@GetMapping("/communityWriteReview") 
	public String communityWriteReview(Model model) {

		return "community/community_reviewform";
	}

	@PostMapping("/communityWriteReview")
	public void communityWriteReview(HttpServletResponse response) throws Exception {
		logger.info("실행");
		JSONObject object = new JSONObject();
		object.put("result", "success");

		String json = object.toString(); // {"result" : "success"}

		// 응답보내기
		PrintWriter out = response.getWriter();
		response.setContentType("application/json;charset=utf-8");
		out.println(json);
		out.flush();
		out.close();
	}

	@GetMapping("/catereview1")
	public String catereview1(Model model) {
		model.addAttribute("cate", "건강");
		List<ReviewDto> catereview1 = service.getReviewCatereview1();
		model.addAttribute("catereview1", catereview1);
		return "community/community_list_review";
	}

	@GetMapping("/catereview2")
	public String catereview2(Model model) {
		model.addAttribute("cate", "커리어");
		logger.info("cate2야 오고있니");
		List<ReviewDto> catereview2 = service.getReviewCatereview2();
		model.addAttribute("catereview2", catereview2);
		return "community/community_list_review";
	}

	@GetMapping("/catereview3")
	public String catereview3(Model model) {
		model.addAttribute("cate", "머니");
		List<ReviewDto> catereview3 = service.getReviewCatereview3();
		model.addAttribute("catereview3", catereview3);
		return "community/community_list_review";
	}

}
