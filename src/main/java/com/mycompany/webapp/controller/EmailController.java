package com.mycompany.webapp.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mycompany.webapp.email.Email;
import com.mycompany.webapp.email.EmailSender;

@Controller
@RequestMapping("/email")
public class EmailController {

	@Autowired
	private EmailSender emailSender;
	@Autowired
	private Email email;

	//비밀번호를 찾는 쪽에서 email을 넘겨주면 그정보를 가지고 db에서 일치하는지를 검색 -> 맞다면 email.java에서 정보 set. 
	
	/*
	 * @RequestMapping("/sendpw.do") public ModelAndView sendEmailAction ( Model
	 * model) throws Exception { ModelAndView mav; String id=
	 * model.getAttribute("mid"); String e_mail=(String) paramMap.get("email");
	 * String pw=mainService.getPw(paramMap); System.out.println(pw);
	 * 
	 * 
	 * 
	 * if(pw!=null) { email.setContent("password "+pw+); email.setReceiver(e_mail);
	 * email.setSubject(id+"subject"); emailSender.SendEmail(email); mav= new
	 * ModelAndView("redirect:/login/login"); return mav; }else {
	 * model.addAttribute("msg",1); mav=new ModelAndView("searchpw");
	 * 
	 * return mav; }
	 * 
	 * }
	 */
}
