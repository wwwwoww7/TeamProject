package com.mycompany.webapp.controller;


import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
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
	 
	PasswordEncoder passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();

	
	
	//*----------- 수강생 페이지------------------- *//
	@RequestMapping("/mypage_user")
	public String mypage_user(Model model,HttpSession session) {
		String mid = (String) session.getAttribute("sessionMid");
		
		//회원의 강의 목록 가져오기
		List<ClassDto> userclassList = mService.getUserClasses(mid);
		model.addAttribute("userclassList",userclassList);
		
		//회원의 회원정보 가져오기
		MemberDto memberInfo = mService.getId(mid);
		model.addAttribute("memberInfo",memberInfo);
		
		//회원의 찜 목록 가져오기
		List<ClassDto> userPickList = mService.getUserPick(mid);
		model.addAttribute("userPickList",userPickList);
		
		return "mypage/mypage_user";
	}
	
	//수강생의 공지사항 목록 보기
	@PostMapping("/userClassNotice")
	public String userClassNotice(@RequestParam(defaultValue = "1")int pageNo, Model model,HttpSession session) {
		String mid = (String) session.getAttribute("sessionMid");
		
		int totalRows = classNoticeService.countAllByUserID(mid);
		
		MyPagerDto pager = new MyPagerDto(4,3,totalRows, pageNo, mid);
		List<ClassNoticeDto> list = classNoticeService.getUserNotice(pager);
		model.addAttribute("list",list);
		model.addAttribute("pager",pager); 
		
		
		return "mypage/userclassnotice";
	}
	
	//사용자의 공지사항 목록의 상세내용
	@GetMapping("/userNoticeDetail")
	public String userNoticeDetail(int class_notice_no, Model model) {
		
		ClassNoticeDto notice = classNoticeService.getNoticeDetail(class_notice_no);
		model.addAttribute("notice",notice);
		
		//공지사항에 보여질 파일
		ClassNoticeDto newUpload = classNoticeService.getFiles(notice.getClass_notice_no());
		model.addAttribute("newUpload",newUpload);
	
		return "mypage/userNoticeDetail";
	}
	
	//수강생 강의문의 목록 보기
	@GetMapping("/myQa")
	public String myQa(@RequestParam(defaultValue = "1")int pageNo, String mid, Model model,HttpSession session) {
		String userid = (String) session.getAttribute("sessionMid");
		
		
		int totalRows = classQAService.countAllByUserID(userid); //++++++++++++++++++++++++++++++++++++++++++++++++++++++++왜 공지사항서비스를 사용하고 았냐?
		
		MyPagerDto pager = new MyPagerDto(4,3,totalRows, pageNo, userid);
		List<ClassQADto> list = classQAService.selectByUserQa(pager);
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
	public String mypage_tutor(Model model,HttpSession session) {
		String mid = (String) session.getAttribute("sessionMid");

		
		//강사의 강의 목록 가져오기
		List<ClassDto> tutorclassList = classService.getTutoringClasses(mid);
		model.addAttribute("tutorclassList",tutorclassList);
		
		//강사의 회원정보 가져오기
		MemberDto memberInfo = mService.getId(mid);
		model.addAttribute("memberInfo",memberInfo);
		
		return "mypage/mypage_tutor";
	}
	
	//강사의 공지사항 목록
	@PostMapping("/tutorClassNotice")
	public String tutorClassNotice(@RequestParam(defaultValue = "1")int pageNo, HttpSession session, Model model) {
		String mid = (String) session.getAttribute("sessionMid");
		
		int totalRows = classNoticeService.getTotalRowByTutorID(mid);
		
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
		
		//공지사항에 보여질 파일
		ClassNoticeDto newUpload = classNoticeService.getFiles(notice.getClass_notice_no());
		model.addAttribute("newUpload",newUpload);
	
		return "mypage/noticedetail";
	}
	
	//강의 공지사항의 파일 다운로드 받기
	@GetMapping("/download")
	public void download(String fileName, HttpServletResponse respone,HttpServletRequest request) throws IOException {
		logger.info(fileName);
		//파일의 데이터를 읽기 위한 입력 스트림 얻기
		String saveFilePath = "D:/MyWorkspace/files/"+fileName;
		InputStream is = new FileInputStream(saveFilePath);
		
		//[응답 HTTP 헤더 구성]
		//1. content type 헤더 구성(파일의 종류) -  브라우저가 어떤  프로그램이 실행될지 알기 위해서 
		ServletContext application = request.getServletContext(); 
		String fileType = application.getMimeType(fileName);
		respone.setContentType(fileType);
		
		//2. content Disposition 헤더 구성 (다운로드할 파일의 이름 지정)
		String OriginalFileName = fileName.split("_")[1]; // 숫자[0] _ 실제이름[1]
		//헤더에서는 한글을 그대로 전달할 수 없음으로 파일이름이 한글이면 아스키코드(ISO-8859-1)로 변환하기 위해서 사용
		OriginalFileName = new String(OriginalFileName.getBytes("UTF-8"),"ISO-8859-1");
		respone.setHeader("Content-Disposition", "attachment; filename=\""+OriginalFileName+"\"");
		
		
		//3.Content-length 헤더 구성(다운로드할 파일의 크기 지정)
		int filesize = (int) new File(saveFilePath).length();
		respone.setContentLength(filesize);
		
		//[응답HTTP의 바디(본문) 구성] - 입출력 스트림 사용(문자타입기반)
		OutputStream os = respone.getOutputStream();
		FileCopyUtils.copy(is, os);// is에서 읽어서 os로 보냄
		
		os.flush();
		os.close();
		is.close();

	}
	
	//강사 공지사항 수정폼 요청하기
	@GetMapping("/noticeUpdateForm")
	public String noticeUpdateForm(int class_notice_no,Model model,HttpSession session) {
		String mid = (String) session.getAttribute("sessionMid");
		
		ClassNoticeDto notice = classNoticeService.getUpdateForm(class_notice_no);
		model.addAttribute("notice",notice);
		
		//공지사항에 보여질 파일
		ClassNoticeDto newUpload = classNoticeService.getFiles(notice.getClass_notice_no());
		model.addAttribute("newUpload",newUpload);
		
		//해당 강사가 강의하는 강의 목록 가져와야함
		List<ClassNoticeDto> classNames = classNoticeService.selectByTutorId(mid);
		model.addAttribute("classNames",classNames);
		
		return "mypage/noticeUpdateForm";
	}
	
	//강사 공지사항 수정하기
	@PostMapping("/noticeUpdate")
	public String noticeUpdate(ClassNoticeDto classNotice,Model model) throws Exception{
		
		//게시물 수정 - 공지사항 게시판
		classNoticeService.noticeUpdate(classNotice);
		
		
		if(classNotice.getClass_hwFile().getOriginalFilename().equals("")) {
			//공지사항에 보여질 파일 - 기존파일
			ClassNoticeDto newUpload = classNoticeService.getFiles(classNotice.getClass_notice_no());
			classNotice.setClass_hw_file(newUpload.getClass_hw_file());
			classNotice.setClass_hw_type(newUpload.getClass_hw_type());
			
		}else {
			//파일 내용 넣기(현재날짜로 저장하기)
			String fileName = classNotice.getClass_hwFile().getOriginalFilename();
			String saveFile = new Date().getTime()+"_"+fileName;
			
			//파일 확장자 넣기
			String ext = fileName.substring(fileName.lastIndexOf(".")+1);
			classNotice.getClass_hwFile().transferTo(new File("D:/MyWorkspace/files/"+saveFile));
			classNotice.setClass_hw_file(saveFile);
			
			//파일 확장자 넣기
			classNotice.setClass_hw_type(ext);
		}
		
		
		//게시물 수정 - 공지사항 첨부파일
		int result = classNoticeService.updateFile(classNotice);
		
		if(result<0) {
			logger.info("파일 수정 실패~~");
		}else {
			//수정한 게시물을 다시 가져오기
			ClassNoticeDto notice = classNoticeService.getNoticeDetail(classNotice.getClass_notice_no());
			model.addAttribute("notice",notice);
			//공지사항에 보여질 파일
			ClassNoticeDto newUpload = classNoticeService.getFiles(notice.getClass_notice_no());
			model.addAttribute("newUpload",newUpload);
		}
		
		

		return "mypage/noticedetail";
	}
	
	//강사의 강의공지사항 삭제하기
	@GetMapping("/noticeDelete")
	public String noticeDelete(int class_notice_no, HttpSession session) throws Exception {
		String mid = (String) session.getAttribute("sessionMid");
		
		//게시물 삭제 응답/요청
		int resNotice = classNoticeService.noticeDelete(class_notice_no);
		int resFile = classNoticeService.noticeFileDelete(class_notice_no);
		
		if(resNotice == 0 && resFile == 0) {
			logger.info("공지사항 삭제 실패!!!");
		}
		
		return "redirect:/mypage/mypage_tutor?mid="+mid;

	}
	
	//강사의 강의공지사항 글쓰기 폼 요청
	@GetMapping("/noticeWriteForm")
	public String noticeWriteForm( Model model, HttpSession session) {
		
		String mid = (String)session.getAttribute("sessionMid");
		
		//해당 강사가 강의하는 강의 목록 가져와야함
		List<ClassNoticeDto> classNames = classNoticeService.selectByTutorId(mid);
		model.addAttribute("classNames",classNames);
		
		return "mypage/noticeWriteForm";
	}
	
	//강사의 강의공지사항 글쓰기 폼 요청
	@PostMapping("/noticeWrite")
	public String noticeWrite(ClassNoticeDto classNotice,HttpSession session) throws Exception {
		String mid = (String) session.getAttribute("sessionMid");
		
		//게시물쓰기
		classNoticeService.noticeWrite(classNotice);
		
		if(!classNotice.getClass_hwFile().getOriginalFilename().equals("")) { //파일을 올렸을 경우에만
			//파일 내용 넣기(현재날짜로 저장하기)
			String fileName = classNotice.getClass_hwFile().getOriginalFilename();
			String saveFile = new Date().getTime()+"_"+fileName;
			
			//파일 확장자 넣기
			String ext = fileName.substring(fileName.lastIndexOf(".")+1);
			classNotice.getClass_hwFile().transferTo(new File("D:/MyWorkspace/files/"+saveFile));
			classNotice.setClass_hw_file(saveFile);
	
			classNotice.setClass_hw_type(ext);
			
		} else {
			logger.info("파일 노우!!!!!!!!!!!!!!!!!=============================");
			classNotice.setClass_hw_file("");
			classNotice.setClass_hw_type("");
		}
		
		//첨부파일 intsert
		classNoticeService.noticeFileInput(classNotice);
		
		return "redirect:/mypage/mypage_tutor?mid="+mid;
	}
	
	//=============강사의 강의문의 목록===================================
	@PostMapping("/tutorClassQA")
	public String tutorClassQA(@RequestParam(defaultValue = "1")int pageNo, Model model,HttpSession session) {
		String tutorid = (String) session.getAttribute("sessionMid");
		
		int totalRows = classQAService.countAllByTutorID(tutorid); //++++++++++++++++++++++++++++++++++++++++++++ 강사 id로 등록된 강의의 강의문의만 가져와야함
		
		MyPagerDto pager = new MyPagerDto(4,3,totalRows, pageNo, tutorid);
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
	
	
	@PostMapping("/qaAnswer")
	public String qaAnswer(ClassQADto qaAnswer, Model model) {
		
		//답변 삽입하러 감
		classQAService.setQAAnswer(qaAnswer);
		
		//답변 다시 가져옴
		ClassQADto qalist = classQAService.getQADetail(qaAnswer.getClass_qa_no());
		model.addAttribute("qalist",qalist);
		
		return "redirect:/mypage/qaDetail?class_qa_no="+qaAnswer.getClass_qa_no();
	}
	
	//강사의 문의의 답변 삭제하기
	@GetMapping("/qaDelete")
	public String qaDelete(int class_qa_no, HttpSession session) throws Exception {
		String mid = (String) session.getAttribute("sessionMid");
		
		//게시물 삭제 응답/요청
		int resQA = classQAService.QaDelete(class_qa_no);
		
		
		if(resQA == 00) {
			logger.info("공지사항 삭제 실패!!!");
		}
		
		return "redirect:/mypage/qaDetail?class_qa_no="+class_qa_no;

	}
	
	//*--------------회원정보수정---------------- *//
	@GetMapping("/userEdit")
	public String userEdit(MemberDto member, Model model, HttpSession session) {
		
		String mid = (String) session.getAttribute("sessionMid");
		logger.info("실행");
		//회원의 회원정보 가져오기
		MemberDto memberInfo = mService.getId(mid);
		model.addAttribute("memberInfo",memberInfo);
		
		return "mypage/userEdit";
	}
	
	//회원정보수정하기
	@PostMapping("/userUpdate")
	public String userUpdate(MemberDto member, Model model,HttpSession session) throws IllegalStateException, IOException {
	
		if(!member.getMphotoAttach().isEmpty()) {
			String originalFileName = member.getMphotoAttach().getOriginalFilename();
			String extName = originalFileName.substring(originalFileName.lastIndexOf(".")); 
			String saveName = member.getMid()+extName;
			File dest = new File("D:/MyWorkspace/photo/member/"+saveName);
			if(dest.exists()) dest.delete();
			member.getMphotoAttach().transferTo(dest);
			member.setMpro_img(saveName); 
		} 
		
		member.setMpw(passwordEncoder.encode(member.getMpw()));
				
		String result = mService.compare(member);
		member.setMpw(result);
	
		member.setMenabled(true);
		if(member.getMinfo() == null )
			member.setMinfo("내용없음");	 
		
		int update_result = mService.updateMember(member);
		
		if(update_result == 1) {
			MemberDto dbMember = mService.getId(member.getMid());
			session.setAttribute("member", dbMember);
			logger.info("member"+member);
			if (member.getMtype().equals("ROLE_USER")) {	
				return "redirect:/mypage/mypage_user";
			}
			else {
				return "redirect:/mypage/mypage_tutor";
			}				
		}
		
		return "userEdit";
	}
	
	@RequestMapping("/myphotoDownload")
	public void myphotoDownload(HttpServletRequest request, HttpServletResponse response) throws IOException{
		HttpSession session = request.getSession();
		MemberDto member = (MemberDto) session.getAttribute("member");
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
	

}
