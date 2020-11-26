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
		model.addAttribute("hotclassList", classList); 
		
		return "class/classcard";
	}
	
	@GetMapping("/newClasses")
	public String newClasses(Model model) { 
		
		
		logger.info("newClasses 실행");
		
		List<ClassDto> classList = classService.getClassList(1);
		model.addAttribute("newclassList", classList);
		
		return "class/classcard_sm";
	}
	
	@GetMapping("/onClasses")
	public String careerCategory(Model model) { 
		
		return "class/classcard";
	}
	
	
	@GetMapping("/allClass")
	public String moneyCategory(Model model) {

		
		
		
		
		return "class/allclass";
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
