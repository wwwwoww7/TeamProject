package com.mycompany.webapp.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.webapp.dto.ClassDto;
import com.mycompany.webapp.dto.MemberDto;
import com.mycompany.webapp.dto.ReviewDto;
import com.mycompany.webapp.service.ClassService;
import com.mycompany.webapp.service.CommunityService;
import com.mycompany.webapp.service.MemberService;

@Controller
@RequestMapping("/class")
public class ClassController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Resource
	ClassService classService;
	@Resource
	MemberService memberService;
	@Resource
	CommunityService communityService;

	@GetMapping("/classdetail")
	public String classDetail(@RequestParam(defaultValue = "1") int classNo, Model model) {
		
		
		
		ClassDto classOne = classService.getClass(classNo);
		model.addAttribute("classOne", classOne);
		
		MemberDto tutorInfo = memberService.getMemberInfo(classOne.getTutor_id());
		model.addAttribute("tutorInfo", tutorInfo);
		
		//진행중 강의 list
		List<ClassDto> classList = classService.getTutoringClasses(classOne.getTutor_id());
		model.addAttribute("classList", classList);
		
		
		//후기 두개
		List<ReviewDto> reviewList = communityService.getReviewList(classNo);
		model.addAttribute("reviewList", reviewList);
		
		
		return "/class/classdetail";
	}
	
	@GetMapping("/classvideo")
	public String classvideo( ) {
		return "/class/classvideo";
	}
	

	@GetMapping("/classQA")
	public String classQA( ) {
		return "/class/classqna";
	}
	
	@PostMapping("/writeQA")
	public String writeQA() {
		return "/class/classdetail";
	}
	
	
	
	
	
	
	
}
