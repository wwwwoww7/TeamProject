package com.mycompany.webapp.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
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
	
	@GetMapping("/boardAll")
	public String boardAll(CommunityDto communtiy,Model model) {
		model.addAttribute("cate", "all");
		
		List<CommunityDto> list = service.getCommunityList();
		model.addAttribute("list", list);

		
		return "community/community_list";
	}
	
	
	
	
	
	@GetMapping("/boardHealth")
	public String boardHealth(Model model) {
		model.addAttribute("cate", "health");
		return "community/community_list";
	}
	
	@GetMapping("/boardCareer")
	public String boardCareer(Model model) {
		model.addAttribute("cate", "career");
		return "community/community_list";
	}
	
	@GetMapping("/boardMoney")
	public String boardMoeny(Model model) {
		model.addAttribute("cate", "money");
		return "community/community_list";
	}
	
	@GetMapping("/boardReview")
	public String boardReview(Model model) {
		model.addAttribute("cate", "review");
		return "community/community_list_review";
	}
	
	@GetMapping("/boardDetail")
	public String boardDetail() {
		
		return "community/community_detail";
	}
	
	@GetMapping("/boardDetailReview")
	public String boardDetailReview() {
		
		return "community/community_detail_review";
	}
	
	@GetMapping("/boardWrite")
	public String boardWrite() {
		
		return "community/community_writeform";
	}
	
	@GetMapping("/boardWriteReview")
	public String boardWriteReviewform() {
		
		return "community/community_reviewform";
	}
	
	@PostMapping("/boardWriteReview")
	public void boardWriteReview (/*Dto*/ HttpServletResponse response) throws Exception {
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
	 
	
	

