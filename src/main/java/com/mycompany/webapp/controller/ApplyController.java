package com.mycompany.webapp.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mycompany.webapp.email.Email;
import com.mycompany.webapp.email.EmailSender;
import com.mycompany.webapp.service.MemberService;

@Controller
@RequestMapping("/apply")
public class ApplyController {

	private static final Logger logger = LoggerFactory.getLogger(EmailController.class);
	
	@Autowired
	private EmailSender emailSender;
	@Autowired
	private Email email;

	@Resource
	private MemberService mService;
	/*
	 * @RequestMapping("/apply_class") public String applyClass() { return
	 * "/apply/apply_class"; }
	 */
	
//	@RequestMapping("/apply_class")
//	public ModelAndView apply_class (HttpServletRequest request) throws Exception {
//		ModelAndView mav;
//		String applyname = request.getParameter("applyname");
//		String applyemail = request.getParameter("applyemail");
//		String applytitle = request.getParameter("applytitle");
//		//System.out.println(applyemail);
//    
//      logger.info("실행 applyname"+applyname);
//      email.setContent(applyname + "님의 강의 요청입니다."+"<br/>");
//      email.setReceiver(applyemail);
//      email.setSubject(applytitle+"에 대한 강의 요청입니다.");
//      emailSender.SendEmail(email);
//      mav = new ModelAndView("redirect:/");
//      return mav;   
//	}
}
