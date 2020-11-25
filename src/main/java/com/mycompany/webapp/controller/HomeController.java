package com.mycompany.webapp.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.ClassDto;
import com.mycompany.webapp.service.ClassService;


/**
 * 2020. 11. 17 
 *
 */
@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping("/")  //http://192.168.3.231:8080/teamproject/
	public String content() {
		logger.info("실행");
		return "home";
//		return "test";
	} 
	
	
	@Resource
	ClassService classService;

	@GetMapping("/allCategory")
	public String allCategory(Model model) {

		logger.info("allCategory 실행");
		
		
		List<ClassDto> classList = classService.getClassList(2);
		model.addAttribute("HotclassList", classList);
		
		
		model.addAttribute("category" ,"allCategory");
		
		return "class/classcard";
	}
	
	@GetMapping("/health")
	public String healthCategory(Model model) {
		model.addAttribute("category" ,"Health");
		
		return "class/classcard";
	}
	
	@GetMapping("/career")
	public String careerCategory(Model model) {
		model.addAttribute("category" ,"Career");
		
		return "class/classcard";
	}
	
	
	@GetMapping("/money")
	public String moneyCategory(Model model) {
		model.addAttribute("category" ,"Money");
		return "learn/maincategory";
	}
	
	
	@GetMapping("/community")
	public String community() {
		return "community/community";
	}
	
	
	@GetMapping("/event")
	public String event() {
		return "event/event";
	}
	
	@GetMapping("/cart")
	public String cart() {
		return "cart/cart";
	}
	 
	
	@GetMapping("/classCardList")
	public String classCardList(Model model) {

		
		
		
		
		
		
		
		return "class/classcard";
	}
	
	
}
