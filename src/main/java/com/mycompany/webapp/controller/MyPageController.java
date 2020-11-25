package com.mycompany.webapp.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.webapp.dto.ClassNoticeDto;
import com.mycompany.webapp.dto.MemberDto;
import com.mycompany.webapp.dto.MyPagerDto;
import com.mycompany.webapp.service.ClassNoticeService;


/**
 * 2020. 11. 17 
 *
 */
@Controller
@RequestMapping("/mypage")
public class MyPageController {
	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);
	
	
	
	//*----------- 수강생 페이지------------------- *//
	@RequestMapping("/mypage_user")
	public String mypage_user(MemberDto memberdto,HttpSession session,Model model) {
		//로그인한 사람의 역할 구분하고 해당 페이지로 리턴해 놔야함!!
		
		/*SecurityContext securityContext = SecurityContextHolder.getContext();
		Authentication authentication = securityContext.getAuthentication();
		
		//로그인 여부
		if(authentication.isAuthenticated()) {
			String mid = authentication.getName();//로그인한 아이디 얻기
			
			
			//해당 아이디의 권한 확인
			for(GrantedAuthority authority: authentication.getAuthorities()) {
				String role = authority.getAuthority();
				logger.info("아이디의 권한: "+role);
			}
			
		}*/	
		
		model.addAttribute("sessionMid",memberdto.getMid());
		
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
	public String mypage_tutor(MemberDto memberdto,HttpSession session,Model model) {
		//로그인한 사람의 역할 구분하고 해당 페이지로 리턴해 놔야함!!
		
		/*SecurityContext securityContext = SecurityContextHolder.getContext();
		Authentication authentication = securityContext.getAuthentication();
		
		//로그인 여부
		if(authentication.isAuthenticated()) {
			String mid = authentication.getName();//로그인한 아이디 얻기
			
			
			//해당 아이디의 권한 확인
			for(GrantedAuthority authority: authentication.getAuthorities()) {
				String role = authority.getAuthority();
				logger.info("아이디의 권한: "+role);
			}
			
		}*/	
		
		model.addAttribute("sessionMid",memberdto.getMid());
		
		return "mypage/mypage_tutor";
	}
	
	//강사의 강의 목록
	@PostMapping("/tutorClassList")
	public String tutorClassList() {
		
		return "mypage/tutorclasslist";
	}
	
	//강사의 공지사항 목록
	@PostMapping("/tutorClassNotice")
	public String tutorClassNotice(@RequestParam(defaultValue = "1")int pageNo, String tutor_id, Model model) {
		/*int totalRows = classNoticeService.getTotalRow();
		
		MyPagerDto pager = new MyPagerDto(5,3,totalRows, pageNo,tutor_id);
		List<ClassNoticeDto> list = classNoticeService.getNotice(pager);
		model.addAttribute("list",list);
		model.addAttribute("pager",pager);*/
		
		return "mypage/tutorclassnotice";
	}
	
	//강사의 공지사항 목록의 상세내용
	@GetMapping("/noticeDetail")
	public String noticeDetail() {
		
		return "mypage/noticedetail";
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
	
	//강사의 강의공지사항 글쓰기
	@PostMapping("/noticeEdit")
	public String noticeEdit() {
		
		return "mypage/noticeEdit";
	}
	
	//*--------------회원정보수정---------------- *//
	@GetMapping("/userEdit")
	public String userEdit() {
		
		return "mypage/userEdit";
	}
		
}
