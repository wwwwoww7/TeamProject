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
	public String communityAll(CommunityDto communtiy,Model model) {
		model.addAttribute("cate", "total");
		
		List<CommunityDto> list = service.getCommunityAll();
		model.addAttribute("all", "all");

		
		return "community/community_list";
	}
	
	@GetMapping("/communityHealth")
	public String communityHealth(int class_cate_no, Model model) {
		model.addAttribute("cate", "health");
		
		CommunityDto commDto = service.getCommunityHealth(class_cate_no);
		
		model.addAttribute("health", "health");
		
		return "community/community_list";
	}
	
	@GetMapping("/communityCareer")
	public String communityCareer(Model model) {
		model.addAttribute("cate", "career");
		return "community/community_list";
	}
	
	@GetMapping("/communityMoney")
	public String communityMoeny(Model model) {
		model.addAttribute("cate", "money");
		return "community/community_list";
	}
	
	@GetMapping("/communityReview")
	public String communityReview(Model model) {
		model.addAttribute("cate", "review");
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
	public String communityWriteReviewform() {
		
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
	
	@PostMapping("/communityUpdate")
	public String communityUpdate() {
		
		return "community/community_updateform";
	}
	
	@PostMapping("/communityUpdateReview")
	public String communityUpdateReview() {
		
		return "community/community_updateform_review";
	}
	
	@PostMapping("/communityDelete")
	public String communityDelete() {
		
		return "community/community";
	}
	
}
	 
	
	

