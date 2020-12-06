package com.mycompany.webapp.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.webapp.dto.ClassApplDto;
import com.mycompany.webapp.dto.ClassDto;
import com.mycompany.webapp.dto.ClassNoticeDto;
import com.mycompany.webapp.dto.ClassNoticePagerDto;
import com.mycompany.webapp.dto.ClassQADto;
import com.mycompany.webapp.dto.ClassVideoDto;
import com.mycompany.webapp.dto.MemberDto;
import com.mycompany.webapp.dto.PickDto;
import com.mycompany.webapp.dto.ReviewDto;
import com.mycompany.webapp.service.ClassNoticeService;
import com.mycompany.webapp.service.ClassQAService;
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
	@Resource
	ClassNoticeService classNoticeService;
	@Resource
	ClassQAService classQAService;
	


	@GetMapping("/classdetail")
	public String classDetail(@RequestParam(defaultValue = "1") int classNo, Model model, HttpSession session) {

	
		
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
		
		
		String mid = (String) session.getAttribute("sessionMid");
		
		if(mid != null && !mid.equals("")) {
			ClassApplDto appl = new ClassApplDto();
			appl.setClass_no(classNo);
			appl.setMid(mid);
			int applyYN = classService.getBuyYn(appl);
			logger.info("-------------->" + applyYN);
			model.addAttribute("applyYN", applyYN);
		}else {
			model.addAttribute("applyYN", 0);
		}
	
		
		return "/class/classdetail";
	}
	
	
	@RequestMapping("/profilephotoDownload")
	public void profilephotoDownload(String mem,HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		//tutor_id로 member 가져오기 
		MemberDto member = memberService.getMemberInfo(mem);
		String fileName = member.getMpro_img();

		//파일의 데이터를 읽기 위한 입력 스트림 얻기
		String saveFilePath = "D:/MyWorkspace/photo/member/" + fileName;
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
	
	
	//강의 영상 팝업
	@GetMapping("/classvideo")
	public String classvideo(int class_no, Model model) {
		
		List<ClassVideoDto> videoList =  classService.getClassVideo(class_no);
		ClassDto classInfo = classService.getClass(class_no);
		
		model.addAttribute("videoList", videoList);
		model.addAttribute("firstVideoUrl", videoList.get(0).getClass_video_url());
		model.addAttribute("classInfo", classInfo);
		
		return "/class/classvideo";
	}
	
	@GetMapping("/classqalist")
	public String classqalist(@RequestParam(defaultValue = "1")int pageNo, int class_no, Model model) {
		
		int totalRows = classQAService.getTotalRowByClassNo(class_no);
		ClassNoticePagerDto pager = new ClassNoticePagerDto(5, 3, totalRows, pageNo);
		pager.setClass_no(class_no);
		
		//qa list 불러오기
		List<ClassQADto> qaList = classQAService.getQAListByClassNo(pager);
		
		model.addAttribute("qaList", qaList);
		model.addAttribute("pager",pager); 
		
		return "/class/classqalist";
	}
	
	
	@GetMapping("/classqadetail")
	public String classqadetail(int class_no,int class_qa_no, Model model) {
		//qa 정보 불러오기
		ClassQADto qaInfo = classQAService.getQADetail(class_qa_no);
		model.addAttribute("qaInfo", qaInfo);
		
		return "/class/classqadetail";
	}
	
	
	@GetMapping("/classqaWriteForm")
	public String classqaWriteForm(int class_no, Model model, HttpSession session) {
		model.addAttribute("class_no", class_no);
		
		String mid = (String) session.getAttribute("sessionMid");
		MemberDto userInfo = memberService.getMemberInfo(mid);
		model.addAttribute("mnick", userInfo.getMnick());
		
		return "/class/classqawrite";
	}
	

	@PostMapping("/classqawrite")
	public void classqawrite(ClassQADto qa, Model model, HttpSession session,HttpServletResponse response) throws Exception {
		
		String mid = (String) session.getAttribute("sessionMid");
		String tutor_id = classService.getTutorId(qa.getClass_no());
		
		qa.setWriter_id(mid);
		qa.setTutor_id(tutor_id);
		
		int result = classQAService.applyQa(qa);
		
		JSONObject jobject = new JSONObject();
		
		if(result == 1) {
			jobject.put("result", "success");
		}else {
			jobject.put("result", "fail");
		}
		
		String jsonString = jobject.toString();
		response.setContentType("application/json;charset=utf-8");
		PrintWriter writer = response.getWriter();
		writer.println(jsonString);
		writer.flush();
		writer.close();
		
	}
	

	@GetMapping("/classQA")
	public String classQA( ) {
		return "/class/classqna";
	}
	
	@PostMapping("/writeQA")
	public String writeQA() {
		return "/class/classdetail";
	}
	
	
	@GetMapping("/allClassList")
	public String allClassList(Model model, HttpSession session) {
		String mid = (String) session.getAttribute("sessionMid");
		
		
		List<ClassDto> classList;
		
		if(mid != null) {
			classList = classService.getClassList(0, mid);
		}else {
			classList = classService.getClassList(0);
		}
		
		model.addAttribute("classList", classList); 
		
		return "class/classcard_sm";
	}
	
	@GetMapping("/pickClass")
	public String pickClass(PickDto pickinfo,@RequestParam(defaultValue = "-1") int clk, @RequestParam(defaultValue = "0") int maincall, Model model) {
		
		logger.info("실행");
		int pick_cnt = classService.getPickCount(pickinfo.getClass_no());
		model.addAttribute("pick_cnt", pick_cnt);
		
		if(clk == -1) {
			
			if(pickinfo.getMid() == null) {
				model.addAttribute("pick_yn", 0);
				return "/class/pickclass";
			}
			int pickYN = classService.getPickYN(pickinfo);
			model.addAttribute("pick_yn", pickYN);
		}else {
			/* clk - 1: insert, 2: delete */
			int result = classService.setPick(pickinfo, clk);
			pick_cnt = classService.getPickCount(pickinfo.getClass_no());
			model.addAttribute("pick_cnt", pick_cnt);
			logger.info("데이터 수정 후 Class_no : " + pickinfo.getClass_no());
			logger.info("데이터 수정 후 mid : " + pickinfo.getMid());
			model.addAttribute("pick_yn", result); 
		}
		
		if(maincall == 0)
			return "/class/pickclass"; //강의 상세 페이지 새로고침..? // ajax..?
		else { 
			model.addAttribute("class_no", pickinfo.getClass_no()); 
			model.addAttribute("listtype", pickinfo.getListtype()); 
			return "/class/pickclassmain";
		
		}
	}
	
	
	@GetMapping("/classNotices")
	public String classNotices(@RequestParam(defaultValue = "1")int pageNo, int class_no, Model model) {
		
		int totalRows = classNoticeService.getTotalRowByClassNo(class_no);
		ClassNoticePagerDto pager = new ClassNoticePagerDto(10,3,totalRows, pageNo);
		pager.setClass_no(class_no);
		
		List<ClassNoticeDto> list = classNoticeService.getNoticeByClassNo(pager);
		 
		
		String tutor_id = classService.getTutorId(class_no);
		
		model.addAttribute("tutor_id", tutor_id);
		model.addAttribute("list",list);
		model.addAttribute("pager",pager); 
		
		
		return "/class/classnotice";
	}
	
	
	@GetMapping("/noticeDetail")
	public String noticeDetail(int class_notice_no, Model model) {
		
		ClassNoticeDto notice = classNoticeService.getNoticeDetail(class_notice_no);
		model.addAttribute("notice",notice);
		
		ClassNoticeDto newUpload = classNoticeService.getFiles(notice.getClass_notice_no());
		model.addAttribute("newUpload",newUpload);
		
		
		return "/class/classnoticedetail";
	}
	
	
	//*=========강의정보 수정 by 강사(혜빈)=================//
	@GetMapping("/classEdit")
	public String classEdit(@RequestParam(defaultValue = "1") int classNo, Model model) {
		
		
		ClassDto classOne = classService.getClass(classNo);
		model.addAttribute("classOne", classOne);

		logger.info("classEdit");
		
		return "/class/classEdit";
	}
	
	@PostMapping("/classEdit")
	public String classEdit(ClassDto classd, Model model) {
		logger.info("test-1a");
		int update_result = classService.updateClass(classd);
		
		logger.info("2");
		if(update_result == 1) {
//			ClassDto classOne = classService.getClass(classd.getClass_no());
			
//			model.addAttribute("classOne", classOne);
		}
		logger.info("b");
		
		return "redirect:/class/classdetail?classNo="+classd.getClass_no();
	}

}
