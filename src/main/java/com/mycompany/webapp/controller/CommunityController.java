package com.mycompany.webapp.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.print.attribute.standard.PageRanges;
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
	
	/*@GetMapping("/boardAll")
	public String boardAll(@RequestParam(defaultValue="1")int pageNo, Model model) {
		model.addAttribute("cate", "all");
		
		int totalRows= service.getTotalRows();
		//전체게시물수, 내가 보고싶은
		CommunityPagerDto pager = new CommunityPagerDto(5, 5, totalRows, pageNo);
		List<CommunityDto> list = service.getBoardList(pager);
		model.addAttribute("list", list);
		model.addAttribute("pager", pager);
	
		
		return "community/community_list";
	}*/
	
	@GetMapping("/communityAll")
	public String communityAll(Model model) {
		logger.info("실행");
		
		List<CommunityDto> list = service.getCommunityAll();
		
		model.addAttribute("list", list);

		
		return "community/community_list";
	}
	
	
	@GetMapping("/communityHealth")
	public String communityHealth(Model model) {
		
	List<CommunityDto> health = service.getCommunityHealth();
		model.addAttribute("health", health);
		logger.info("health야 오고있니");
		
		
		return "community/community_list";
	}
	
	@GetMapping("/communityCareer")
	public String communityCareer(Model model) {
		List<CommunityDto> career = service.getCommunityCareer();
		model.addAttribute("career", career);
		return "community/community_list";
	}
	
	@GetMapping("/communityMoney")
	public String communityMoney(Model model) {
		List<CommunityDto> money = service.getCommunityMoney();
		model.addAttribute("money", money);
		return "community/community_list";
	}
	
	@GetMapping("/communityReview")
	public String communityReview(Model model) {
		logger.info("리뷰가 오고있는지 모르겠다.");
		List<ReviewDto> review = service.getCommunityReview();
		model.addAttribute("review", review);
		
		return "community/community_list_review";
	}
	
	@GetMapping("/communityDetail")
	public String communityDetail() {
		
		return "community/community_detail";
	}
	
	@GetMapping("/communityDetailReview")
	public String communityDetailReview() {
		
		return "community/community_detail_review";
	}
	
	@GetMapping("/communityWrite")
	public String communityWrite() {
		
		return "community/community_writeform";
	}
	
	@GetMapping("/communityWriteReview")
	public String communityWriteReview() {
		
		return "community/community_reviewform";
	}
	
	@PostMapping("/communityWriteReview")
	public void communityWriteReview (HttpServletResponse response) throws Exception {
		logger.info("실행");
		JSONObject object  = new JSONObject();
		object.put("result", "success");
		
		
		String json = object.toString(); //{"result" : "success"}
		
		//응답보내기
		PrintWriter out = response.getWriter();
		response.setContentType("application/json;charset=utf-8");
		out.println(json);
		out.flush();
		out.close();
	}
	
	@PostMapping("/boardUpdate")
	public String boardUpdate() {
		
		return "community/community_updateform";
	}
	
	@PostMapping("/boardUpdateReview")
	public String boardUpdateReview() {
		
		return "community/community_updateform_review";
	}
	
	@PostMapping("/boardDelete")
	public String boardDelete() {
		
		return "community/community";
	}
	
}
	 
	
	

