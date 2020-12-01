package com.mycompany.webapp.controller;



import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.webapp.dto.EventDto;
import com.mycompany.webapp.dto.EventPagerDto;
import com.mycompany.webapp.service.EventService;


/**
 * 2020. 11. 17 
 *
 */

@Controller
@RequestMapping("/event")
//@WebServlet("/event") extends HttpServlet
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
	
	/*	@GetMapping("/eventList")
		public String eventList(int eenable, Model model) {
			List<EventDto> all = service.getEventList(eenable);
			model.addAttribute("all", all);
			return "event/eventList";
		}
		*/
	
	@GetMapping("/eventList2")
	public String eventList2(@RequestParam(defaultValue = "1") int pageNo, int eenable, Model model) {
		
		int totalRows = service.getTotalRows(eenable);
		EventPagerDto pager = new EventPagerDto(5, 5, totalRows, pageNo,eenable);
		
		List<EventDto> all2 = service.getEndEventList(pager);
		model.addAttribute("all2", all2);
		model.addAttribute("pager", pager); 
		return "event/eventList2";
	}
	
	@GetMapping("/eventList")
	public String eventList(@RequestParam(defaultValue = "1") int pageNo, int eenable, Model model) {
		
		int totalRows = service.getTotalRows(eenable);
		EventPagerDto pager = new EventPagerDto(5, 5, totalRows, pageNo,eenable);
		
		List<EventDto> all = service.getEventList(pager);
		model.addAttribute("all", all);
		model.addAttribute("pager", pager); 
		return "event/eventList";
		}
	
	/*	@Override
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException{
			String query_ = request.getParameter("q");
			
			String query ="";
			if(query_!= null && !query_.equals(""))
				query = query_;
			
			NoticeService service = new NoticeService();
			List<Notice> list = service.getNoticeList(query,1);
			
			request.setAttribute("list", list);
			request.getRequestDispatcher("/WEB-")
		}*/
	
	
	@RequestMapping("/refun")
	public String refun () {
		return "event/refun";
	}

	//이벤트 상세페이지 불러오기
	@GetMapping("/eventDetail")
	public String eventDetail(int event_no, Model model) {
		EventDto eventD = service.getEventDetail(event_no);
		model.addAttribute("eventD", eventD);
		return "event/eventDetail";
	}
	
	
}
