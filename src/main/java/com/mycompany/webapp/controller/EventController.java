package com.mycompany.webapp.controller;



import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
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
		EventDto eventD2 = service.getEventDetail(event_no);
		model.addAttribute("eventD", eventD2);
		return "event/eventDetail";
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
	

	
	
	//admin이 들어왔을때만 이벤트 등록 버튼이 보이도록
	//이벤트 등록
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
			File dest = new File("D:/MyWorkspace/event/thum/" + saveName);
			
			event.getEventIMG().transferTo(dest);
			event.setEvent_img(saveName);
			
			//상세이미지 저장
			String originalFileNameDetail = event.getEventIMGDetail().getOriginalFilename();
			/*String extNameDetail = originalFileNameDetail.substring(originalFileNameDetail.lastIndexOf("."));*/
			String saveNameDetail = event.getEvent_no()+"_"+originalFileNameDetail;
			File destDetail = new File("D:/MyWorkspace/event/detail/"+ saveNameDetail);
			
			event.getEventIMGDetail().transferTo(destDetail);
			event.setEvent_detail(saveNameDetail);	
			
		} /*else {
			event.setEvent_img("unnamed.png");
			}*/
		
		
		service.eventWrite(event);	
		
		return "redirect:/event";
		
	}
	
	
	//이벤트 수정
		@GetMapping("/eventUpdateForm")
		public String eventUpdateForm(int event_no, Model model) {
			EventDto event = service.getevent(event_no);
			model.addAttribute("event", event);
			return "event/eventUpdateForm";
		}
	
		@PostMapping("/eventUpdate")
		public String eventUpdate (EventDto event, HttpServletResponse response,Model model) throws IOException {
			
			if(!event.getEventIMG().isEmpty() && !event.getEventIMGDetail().isEmpty()) {
				//썸네일 저장
				String originalFileName = event.getEventIMG().getOriginalFilename();
				/*String extName = originalFileName.substring(originalFileName.lastIndexOf("."));*/
				String saveName = event.getEvent_no()+"_"+originalFileName;
				File dest = new File("D:/MyWorkspace/event/thum/" + saveName);
				
				event.getEventIMG().transferTo(dest);
				event.setEvent_img(saveName);
				
				//상세이미지 저장
				String originalFileNameDetail = event.getEventIMGDetail().getOriginalFilename();
				/*String extNameDetail = originalFileNameDetail.substring(originalFileNameDetail.lastIndexOf("."));*/
				String saveNameDetail = event.getEvent_no()+"_"+originalFileNameDetail;
				File destDetail = new File("D:/MyWorkspace/event/detail/"+ saveNameDetail);
				
				event.getEventIMGDetail().transferTo(destDetail);
				event.setEvent_detail(saveNameDetail);	
				
			}
			
			//서비스를 이용해서 게시물 수정
			int res = service.eventUpdate(event);
			
			if (res == 0) {
				logger.info("이벤트 수정 실패");
			}
			
			EventDto eventD = service.getEventDetail(event.getEvent_no());
			model.addAttribute("eventD", eventD);
			

			return "event/eventDetail";
		}
		
		@RequestMapping("/eventDetailDownload")
		public void myphotoDownload(String event_detail,HttpServletResponse response, HttpServletRequest request) throws Exception{
			 
			String fileName = event_detail;

			//파일의 데이터를 읽기 위한 입력 스트림 얻기
			String saveFilePath = "D:/MyWorkspace/event/detail/" + fileName;
			InputStream is = new FileInputStream(saveFilePath);
			  
			//응답 HTTP 헤더 구성
			//1)Content-Type 헤더 구성(파일의 종류 지정)
			ServletContext application = request.getServletContext();
			String fileType = application.getMimeType(fileName); //fileName의 확장명을 알려줌.
			response.setContentType(fileType);
			//2)Content-Disposition 헤더 구성(다운로드할 파일의 이름을 지정)
			
			//한글을 변환해서 넣어야함.한글을 아스키로 바꿔준다.브라우저마다 한글변환방식이다르지만 최신브라우저는 거의 다 이거. 
			response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\""); //실제 다운로드되는 파일의 이름이 들어간다. 파일이름에 한글이 포함되어있으면 한글이 꺠진다.
			//3)Content-Length 헤더 구성(다운로드 할 파일의 크기를 지정)
			int fileSize = (int)new File(saveFilePath).length(); //file size를 얻을 수 있음. long size임. 
			response.setContentLength(fileSize);
			
			//응답 HTTP의 본문(바디) 구성
			//본문은 철저하게 출력으로 처리한다. 
			OutputStream os = response.getOutputStream();//파일이니까 outputstream
			FileCopyUtils.copy(is, os);
			os.flush();
			os.close();
			is.close();
			
		}
		
		@RequestMapping("/event_imgDownload")
		public void eventDownload(String event_img, HttpServletResponse response, HttpServletRequest request) throws Exception{
			 
			String fileName = event_img;

			//파일의 데이터를 읽기 위한 입력 스트림 얻기
			String saveFilePath = "D:/MyWorkspace/event/thum/" + fileName;
			InputStream is = new FileInputStream(saveFilePath);
			  
			//응답 HTTP 헤더 구성
			//1)Content-Type 헤더 구성(파일의 종류 지정)
			ServletContext application = request.getServletContext();
			String fileType = application.getMimeType(fileName); //fileName의 확장명을 알려줌.
			response.setContentType(fileType);
			//2)Content-Disposition 헤더 구성(다운로드할 파일의 이름을 지정)
			
			//한글을 변환해서 넣어야함.한글을 아스키로 바꿔준다.브라우저마다 한글변환방식이다르지만 최신브라우저는 거의 다 이거. 
			response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\""); //실제 다운로드되는 파일의 이름이 들어간다. 파일이름에 한글이 포함되어있으면 한글이 꺠진다.
			//3)Content-Length 헤더 구성(다운로드 할 파일의 크기를 지정)
			int fileSize = (int)new File(saveFilePath).length(); //file size를 얻을 수 있음. long size임. 
			response.setContentLength(fileSize);
			
			//응답 HTTP의 본문(바디) 구성
			//본문은 철저하게 출력으로 처리한다. 
			OutputStream os = response.getOutputStream();//파일이니까 outputstream
			FileCopyUtils.copy(is, os);
			os.flush();
			os.close();
			is.close();
			
		}
		
		@GetMapping("/eventDelete")
		public String eventDelete(int event_no) throws Exception { 
			//서비스를 이용해서 게시물 삭제
			int res=service.eventDelete(event_no);
			
			if(res ==0) {
				logger.info("이벤트 삭제 실~~~패~~~");
			}
			
			return "redirect:/event";
		}
		
		
			
	}



	
