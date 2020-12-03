package com.mycompany.webapp.controller;



import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
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

	
	
	@InitBinder
    protected void initBinder(WebDataBinder binder){
        DateFormat  dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat,true));
    }

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
	

	//이벤트 상세페이지 불러오기 (현재 진행중인 페이지)
	@GetMapping("/eventDetail")
	public String eventDetail(int event_no, Model model) {
		EventDto eventD = service.getEventDetail(event_no);
		model.addAttribute("eventD", eventD);
		return "event/eventDetail";
	}
	

	//이벤트 상세페이지 불러오기 (마감된 페이지)
	@GetMapping("/eventDetail2")
	public String eventDetail2(int event_no, Model model) {
		EventDto eventD2 = service.getEventEndDetail(event_no);
		model.addAttribute("eventD2", eventD2);
		return "event/eventDetail2";
	}
	
	
	
	//admin이 들어왔을때만 이벤트 등록 버튼이 보이도록
	
	@GetMapping("/eventWriteForm")
	public String eventWriteForm() {
		return "event/eventWriteForm";
	}
	
	
	@PostMapping("/eventWriteForm")
	public String eventWrite(EventDto event) throws Exception {
		
		logger.info("event.getEventIMG() =========================================="+event.getEventIMG());
		logger.info("event.getEventIMG().getOriginalFilename() =========================================="+event.getEventIMG().getOriginalFilename());
		
		
		if(!event.getEventIMG().isEmpty() && !event.getEventIMGDetail().isEmpty()) {
			//썸네일 저장
			String originalFileName = event.getEventIMG().getOriginalFilename();
			/*String extName = originalFileName.substring(originalFileName.lastIndexOf("."));*/
			String saveName = event.getEvent_no()+"_"+originalFileName;
			File dest = new File("D:/MyWorkspace/java-projects/TeamProject/WebContent/resources/img/ar/" + saveName);
			
			event.getEventIMG().transferTo(dest);
			event.setEvent_img(saveName);
			
			//상세이미지 저장
			String originalFileNameDetail = event.getEventIMGDetail().getOriginalFilename();
			/*String extNameDetail = originalFileNameDetail.substring(originalFileNameDetail.lastIndexOf("."));*/
			String saveNameDetail = event.getEvent_no()+"_"+originalFileNameDetail;
			File destDetail = new File("D:/MyWorkspace/java-projects/TeamProject/WebContent/resources/img/ar/"+ saveNameDetail);
			
			event.getEventIMGDetail().transferTo(destDetail);
			event.setEvent_detail(saveNameDetail);	
			
		} /*else {
			event.setEvent_img("unnamed.png");
			}*/
		
		
		service.eventWrite(event);	
		
		return "redirect:/event";
		
	}
	
	
	//이벤트 수정
	/*	@GetMapping("/eventUpdateForm")
		public String boardUpdateForm(int bno, Model model) {
			EventDto event = service.getevent(event_no);
			model.addAttribute("event", event);
			return "event/eventUpdateForm";
		}*/
	
	}



	
