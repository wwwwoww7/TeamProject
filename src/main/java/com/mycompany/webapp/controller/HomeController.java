package com.mycompany.webapp.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.ClassDto;
import com.mycompany.webapp.dto.EventDto;
import com.mycompany.webapp.service.ClassService;
import com.mycompany.webapp.service.EventService;


/**
 * 2020. 11. 17 
 *
 */
@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping("/")  //http:// ip :8080/teamproject/
	public String content() {
		logger.info("실행");
		return "home";
	} 
	
	
	@Resource
	ClassService classService;
	@Resource
	EventService eventService; 

	@GetMapping("/allCategory")
	public String allCategory(Model model, HttpSession session) {

		logger.info("allCategory 실행");
		
		String mid = (String)session.getAttribute("sessionMid");
		List<ClassDto> classList;
		
		if(mid != null) {
			classList = classService.getClassList(2,mid);
		}else {
			classList = classService.getClassList(2);
		}
		
		
		model.addAttribute("hotclassList", classList); 
		
		return "class/classcard";
	}
	
	@GetMapping("/newClasses")
	public String newClasses(Model model, HttpSession session) { 
		
		
		logger.info("newClasses 실행");
		
		String mid = (String)session.getAttribute("sessionMid");
		
		List<ClassDto> classList; 
		
		if(mid != null) {
			classList = classService.getClassList(1, mid);
			
			for(ClassDto clas : classList) {
				logger.info( "YN : " + clas.getPick_yn());
			}
		}else {
			classList = classService.getClassList(1);
		}
		
		model.addAttribute("classList", classList);
		
		return "class/classcard_sm";
	}
	
//	@GetMapping("/onClasses")
//	public String careerCategory(Model model) { 
//		
//		return "class/classcard";
//	}
	
	@GetMapping("/onEventList")
	public String onEventList(Model model) { 
		
		logger.info("실행");
		
		List<EventDto> eventList =  eventService.getEventList();
		model.addAttribute("eventList", eventList);
		
		return "event/homeeventlist";
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
