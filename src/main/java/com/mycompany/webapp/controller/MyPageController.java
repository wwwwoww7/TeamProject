package com.mycompany.webapp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.mycompany.webapp.dto.ClassNoticeDto;
import com.mycompany.webapp.dto.MyPagerDto;
import com.mycompany.webapp.service.ClassNoticeService;
import com.mycompany.webapp.service.MemberService;


/**
 * 2020. 11. 17 
 *
 */
@Controller
@RequestMapping("/mypage")
public class MyPageController {
	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);
	
	@Resource
	private MemberService mService;
	
	//*----------- 수강생 페이지------------------- *//
	@RequestMapping("/mypage_user")
	public String mypage_user() {
		
		return "mypage/mypage_user";
	}
	
	//수강목록 불러오기
	@GetMapping("/userclasslist")
	public String user_classlist() {
		return "mypage/userclasslist";
	}
	
	//수강생의 찜목록
	@GetMapping("/userpicklist")
	public String userpicklist() {
		return "mypage/userpicklist";
	}
	
	//수강생 강의문의 목록 보기
	@GetMapping("/myQa")
	public String myQa() {
		
		return "mypage/myQa";
	}
	
	//사용자의 강의문의 상세내용보기!!
	@GetMapping("/myqadetail")
	public String myqadetail() {
		
		return "mypage/myqadetail";
	}
	
	
	@Resource
	private ClassNoticeService classNoticeService;
	
	
	//*----------- 강사 페이지------------------- *//		
	@RequestMapping("/mypage_tutor")
	public String mypage_tutor() {
		return "mypage/mypage_tutor";
	}
	
	//강사의 강의 목록
	@PostMapping("/tutorClassList")
	public String tutorClassList() {
		
		return "mypage/tutorclasslist";
	}
	
	//강사의 공지사항 목록
	@PostMapping("/tutorClassNotice")
	public String tutorClassNotice(@RequestParam(defaultValue = "1")int pageNo, String mid, Model model) {
		
		int totalRows = classNoticeService.getTotalRow();
		
		MyPagerDto pager = new MyPagerDto(8,3,totalRows, pageNo, mid);
		List<ClassNoticeDto> list = classNoticeService.getNotice(pager);
		model.addAttribute("list",list);
		model.addAttribute("pager",pager); 
		
		return "mypage/tutorclassnotice";
	}
	
	//강사의 공지사항 목록의 상세내용
	@GetMapping("/noticeDetail")
	public String noticeDetail(int class_notice_no, Model model) {
		
		ClassNoticeDto notice = classNoticeService.getNoticeDetail(class_notice_no);
		model.addAttribute("notice",notice);
	
		return "mypage/noticedetail";
	}
	
	//강사 공지사항 수정폼 요청하기
	@PostMapping("/noticeUpdateForm")
	public String noticeUpdateForm(int class_notice_no,Model model) {
		ClassNoticeDto notice = classNoticeService.getUpdateForm(class_notice_no);
		model.addAttribute("notice",notice);
		
		
		return "mypage/noticeUpdateForm";
	}
	
	//강사 공지사항 수정하기
	@PostMapping("/noticeUpdate")
	public void noticeUpdate(ClassNoticeDto classNoticeDto,HttpServletResponse response) throws Exception {
		
		//게시물 수정
		classNoticeService.noticeUpdate(classNoticeDto);

		//json응답만들기
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("result", "success");
		jsonObject.put("notice_no", classNoticeDto.getClass_notice_no());
		
		
		String json = jsonObject.toString(); 
		
		//json보내기
		PrintWriter out = response.getWriter();
		response.setContentType("application/json;charset=utf-8");
		out.println(json);
		out.flush();
		out.close();
	}
	
	//강사의 강의공지사항 삭제하기
	@PostMapping("/noticeDelete")
	public void noticeDelete(int class_notice_no, HttpServletResponse response) throws Exception {
		//게시물 삭제 응답/요청
		classNoticeService.noticeDelete(class_notice_no);
				
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("result", "success");
		String json = jsonObject.toString(); //{"result":"success"}
		
		//json보내기
		PrintWriter out = response.getWriter();
		response.setContentType("application/json;charset=utf-8");
		out.println(json);
		out.flush();
		out.close();
		
	}
	
	//강사의 강의공지사항 글쓰기 폼 요청
	@PostMapping("/noticeWriteForm")
	public String noticeWriteForm(List<ClassNoticeDto> list,Model model) {
		/*List<ClassNoticeDto> classNolist = classNoticeService.selectClassNo(list);
		model.addAttribute("classNolist",classNolist);*/
		return "mypage/noticeWriteForm";
	}
	
	//강사의 강의공지사항 글쓰기 폼 요청
	@PostMapping("/noticeWrite")
	public void noticeWrite(ClassNoticeDto class_notice_no, HttpServletResponse response) throws Exception {
		//게시물쓰기
		classNoticeService.noticeWrite(class_notice_no);
		
		//json응답만들기
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("result", "success");
		String json = jsonObject.toString(); //{"result":"success"}
		
		//json보내기
		PrintWriter out = response.getWriter();
		response.setContentType("application/json;charset=utf-8");
		out.println(json);
		out.flush();
		out.close();
				
	}
	
	//강사의 강의문의 목록
	@PostMapping("/tutorClassQA")
	public String tutorClassQA() {
		
		return "mypage/tutorclassqa";
	}
	//강사의 강의문의 상세내용보기
	@GetMapping("/qaDetail")
	public String qaDetail() {
		
		return "mypage/qadetail";
	}
	
	
	
	//*--------------회원정보수정---------------- *//
	@GetMapping("/userEdit")
	public String userEdit() {
		
		return "mypage/userEdit";
	}
		
}
