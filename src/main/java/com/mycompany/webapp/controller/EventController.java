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

import com.mycompany.webapp.dto.EventDto;
import com.mycompany.webapp.service.CommunityService;
import com.mycompany.webapp.service.EventService;


/**
 * 2020. 11. 17 
 *
 */

@Controller
@RequestMapping("/event")
public class EventController {
	private static final Logger logger = LoggerFactory.getLogger(EventController.class);

	/*	@GetMapping("/eventList")
		public String eventList(String ingend, Model model) {
			
			logger.info("ingend : "+ingend);
			
			if(ingend.equals("ing")) {
				model.addAttribute("ingend", "ing");
				
			}else {
				model.addAttribute("ingend", "end");
				return "event/eventList2";
			}
			
			return "event/eventList";
		}
		*/
	
	@Resource
	private EventService service;
	
	@GetMapping("/eventList")
	public String eventList(Model model) {
		List<EventDto> all = service.getEventList();
		model.addAttribute("all", all);
		return "event/eventList";
	}
	
	
	@RequestMapping("/refun")
	public String refun () {
		return "event/refun";
	}
	
	@RequestMapping("/refun2")
	public String refun2 () {
		return "event/refun2";
	}
	
	@RequestMapping("/refun3")
	public String refun3 () {
		return "event/refun3";
	}
	
	
}
