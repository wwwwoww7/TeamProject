package com.mycompany.webapp.controller;

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

import com.mycompany.webapp.dto.ClassDto;
import com.mycompany.webapp.dto.ClassNoticeDto;
import com.mycompany.webapp.dto.ClassQADto;
import com.mycompany.webapp.dto.MemberDto;
import com.mycompany.webapp.dto.MyPagerDto;
import com.mycompany.webapp.service.ClassNoticeService;
import com.mycompany.webapp.service.ClassQAService;
import com.mycompany.webapp.service.ClassService;
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
	@Resource
	private ClassNoticeService classNoticeService;
	@Resource
	private ClassService classService;
	@Resource
	private ClassQAService classQAService;
	
	
	
	
	//*----------- 수강생 페이지------------------- *//
	@RequestMapping("/mypage_user")
	public String mypage_user(MemberDto member, Model model) {
		//회원의 강의 목록 가져오기
		List<ClassDto> userclassList = mService.getUserClasses(member.getMid());
		model.addAttribute("userclassList",userclassList);
		
		//회원의 회원정보 가져오기
		MemberDto memberInfo = mService.getId(member);
		model.addAttribute("memberInfo",memberInfo);
		
		//회원의 찜 목록 가져오기
		List<ClassDto> userPickList = mService.getUserPick(member.getMid());
		model.addAttribute("userPickList",userPickList);
		
		return "mypage/mypage_user";
	}
	
	//수강생 강의문의 목록 보기
	@GetMapping("/myQa")
	public String myQa(@RequestParam(defaultValue = "1")int pageNo, String mid, Model model) {
		
		int totalRows = classNoticeService.getTotalRow();
		
		MyPagerDto pager = new MyPagerDto(4,3,totalRows, pageNo, mid);
		List<ClassQADto> list = classQAService.getQa(pager);
		model.addAttribute("list",list);
		model.addAttribute("pager",pager); 
		
		return "mypage/myQa";
	}
	
	//사용자의 강의문의 상세내용보기!!
	@GetMapping("/myqadetail")
	public String myqadetail(int class_qa_no, Model model) {
		
		ClassQADto qalist = classQAService.getQADetail(class_qa_no);
		model.addAttribute("qalist",qalist);
		
		return "mypage/myqadetail";
	}
	
	
	
	
	
	//*----------- 강사 페이지------------------- *//		
	@RequestMapping("/mypage_tutor")
	public String mypage_tutor(MemberDto member, Model model) {
		//강사의 강의 목록 가져오기
		List<ClassDto> tutorclassList = classService.getTutoringClasses(member.getMid());
		model.addAttribute("tutorclassList",tutorclassList);
		
		//강사의 회원정보 가져오기
		MemberDto memberInfo = mService.getId(member);
		model.addAttribute("memberInfo",memberInfo);
		
		return "mypage/mypage_tutor";
	}
	
	//강사의 공지사항 목록
	@PostMapping("/tutorClassNotice")
	public String tutorClassNotice(@RequestParam(defaultValue = "1")int pageNo, String mid, Model model) {
		
		int totalRows = classNoticeService.getTotalRow();
		
		MyPagerDto pager = new MyPagerDto(4,3,totalRows, pageNo, mid);
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
	@GetMapping("/noticeUpdateForm")
	public String noticeUpdateForm(int class_notice_no,Model model) {
		ClassNoticeDto notice = classNoticeService.getUpdateForm(class_notice_no);
		model.addAttribute("notice",notice);
		
		
		return "mypage/noticeUpdateForm";
	}
	
	//강사 공지사항 수정하기
	@PostMapping("/noticeUpdate")
	public String noticeUpdate(ClassNoticeDto classNoticeDto,Model model){
		
		//게시물 수정
		classNoticeService.noticeUpdate(classNoticeDto);
		
		//수정한 게시물을 다시 가져오기
		ClassNoticeDto notice = classNoticeService.getNoticeDetail(classNoticeDto.getClass_notice_no());
		model.addAttribute("notice",notice);
		
		return "mypage/noticedetail";
	}
	
	//강사의 강의공지사항 삭제하기
	@GetMapping("/noticeDelete")
	public String noticeDelete(int class_notice_no, HttpServletResponse response) throws Exception {
		//게시물 삭제 응답/요청
		classNoticeService.noticeDelete(class_notice_no);
				
		return "mypage/mypage_tutor";
	}
	
	//강사의 강의공지사항 글쓰기 폼 요청
	@GetMapping("/noticeWriteForm")
	public String noticeWriteForm() {
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
	
	//=============강사의 강의문의 목록===================================
	@PostMapping("/tutorClassQA")
	public String tutorClassQA(@RequestParam(defaultValue = "1")int pageNo, String mid, Model model) {
		
		int totalRows = classNoticeService.getTotalRow();
		
		MyPagerDto pager = new MyPagerDto(4,3,totalRows, pageNo, mid);
		List<ClassQADto> list = classQAService.getQa(pager);
		model.addAttribute("list",list);
		model.addAttribute("pager",pager); 
		
		return "mypage/tutorclassqa";
	}
	
	//강사의 강의문의 상세내용보기
	@GetMapping("/qaDetail")
	public String qaDetail(int class_qa_no, Model model) {
		
		ClassQADto qalist = classQAService.getQADetail(class_qa_no);
		model.addAttribute("qalist",qalist);
		
		return "mypage/qadetail";
	}
	
	@GetMapping("/qaAnswer")
	public String qaAnswer(ClassQADto qaAnswer, Model model) {
		
		logger.info("확인============================"+qaAnswer.getClass_qa_answer());
		logger.info("확인============================"+qaAnswer.getClass_no());
		
		
		//답변 삽입하러 감
		classQAService.setQAAnswer(qaAnswer);
		
		//답변 다시 가져옴
		ClassQADto qalist = classQAService.getQADetail(qaAnswer.getClass_qa_no());
		model.addAttribute("qalist",qalist);
		
		return "redirect:/mypage/qadetail";
	}
	
	
	
	
	//*--------------회원정보수정---------------- *//
	@GetMapping("/userEdit")
	public String userEdit() {
		
		return "mypage/userEdit";
	}
		
}
