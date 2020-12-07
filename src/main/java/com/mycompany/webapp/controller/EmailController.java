package com.mycompany.webapp.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.swing.JOptionPane;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mycompany.webapp.dto.MemberDto;
import com.mycompany.webapp.email.Email;
import com.mycompany.webapp.email.EmailSender;
import com.mycompany.webapp.service.MemberService;

@Controller
@RequestMapping("/email")
public class EmailController {
	
	private static final Logger logger = LoggerFactory.getLogger(EmailController.class);
	
	@Autowired
	private EmailSender emailSender;
	@Autowired
	private Email email;

	@Resource
	private MemberService mService;
	
	//비밀번호를 찾는 쪽에서 email을 넘겨주면 그정보를 가지고 db에서 일치하는지를 검색 -> 맞다면 email.java에서 정보 set. 
	@RequestMapping("/sendpw")
	public ModelAndView sendEmail_pw (MemberDto member,Model model) throws Exception {
          ModelAndView mav;
      	  String mid = member.getMid(); 
		  String memail = member.getMemail(); 
	 
        //mid로 db에서 가져와서 memail 같은 경우 가져온 비밀번호
		String newPw = mService.sendpw(member);
      
        System.out.println(newPw);
        if(newPw!=null) {
            email.setContent("비밀번호는 "+newPw+" 입니다.");
            email.setReceiver("hyebin1508@gmail.com");
            email.setSubject(mid+"님 비밀번호 찾기 메일입니다.");
            emailSender.SendEmail(email);
            mav= new ModelAndView("redirect:/login/login");
            return mav;
        }else {
            mav=new ModelAndView("/");
            return mav;
        }
    }

	@GetMapping("/apply_class")
	public String apply_class() {
		return "apply/apply_class";
	}
	
	
	@PostMapping("/apply_class")
	public ModelAndView apply_class(HttpServletRequest request) throws Exception {
		//String applyname, String applyemail, String applytitle, 
		ModelAndView mav;
		String applyname = request.getParameter("applyname");
		String applyemail = request.getParameter("applyemail");
		String applytitle = request.getParameter("applytitle");
		String applykind = request.getParameter("mkind");
		logger.info("applykind: "+applykind);
		email.setContent(applyname + "님의 강의 요청입니다. 이메일주소는" + applyemail + " 강의 종류는 "+applykind+"입니다.");
		email.setReceiver("bansookteam1@gmail.com");
		email.setSubject("강사의 신규 강의 개설 신청이 들어왔습니다.");
		emailSender.SendEmail(email);

		mav = new ModelAndView("redirect:/");
		return mav;
	}
	
	@PostMapping("/classEdit")
	public String classEdit(HttpServletRequest request) throws Exception {
		ModelAndView mav;    
		
		String class_no = request.getParameter("class_no");
		logger.info("class_no ====> " + class_no);
		String tutor_id = request.getParameter("tutor_id");
		String class_nm_s = request.getParameter("class_nm_s");
		String class_nm = request.getParameter("class_nm");
		String class_sub = request.getParameter("class_sub");
		String class_curr = request.getParameter("class_curr");
		
		email.setContent("강의 제목: "+ class_nm_s +"강의 소제목: "+class_nm+"강의 소개: " + class_sub+ "강의 커리큘럼: " + class_curr);
		email.setReceiver("bansookteam1@gmail.com");
		email.setSubject(tutor_id+"님의 강의 사항 수정 요청 메일입니다.");
		emailSender.SendEmail(email);

		return "redirect:/class/classdetail?classNo="+class_no;
	}
	
	
}
