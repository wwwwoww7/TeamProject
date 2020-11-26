package com.mycompany.webapp.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mycompany.webapp.dto.CartDto;
import com.mycompany.webapp.dto.MemberDto;
import com.mycompany.webapp.email.Email;
import com.mycompany.webapp.email.EmailSender;
import com.mycompany.webapp.service.MemberService;

@Controller
@RequestMapping("/email")
public class EmailController {

	@Autowired
	private EmailSender emailSender;
	@Autowired
	private Email email;

	@Resource
	private MemberService mService;
	
	//비밀번호를 찾는 쪽에서 email을 넘겨주면 그정보를 가지고 db에서 일치하는지를 검색 -> 맞다면 email.java에서 정보 set. 
	@RequestMapping("/sendpw")
	public ModelAndView sendEmailAction (MemberDto member,Model model) throws Exception {
          ModelAndView mav;
      	  String mid = member.getMid(); 
		  String memail = member.getMemail(); 
	 
        //mid로 db에서 가져와서 memail 같은 경우 가져온 비밀번호
		String newPw = mService.sendpw(member);
      
        System.out.println(newPw);
        if(newPw!=null) {
            email.setContent("비밀번호는 "+newPw+" 입니다.");
            email.setReceiver(memail);
            email.setSubject(mid+"님 비밀번호 찾기 메일입니다.");
            emailSender.SendEmail(email);
            mav= new ModelAndView("redirect:/login/login");
            return mav;
        }else {
            mav=new ModelAndView("/");
            return mav;
        }
    }
	
	
	
}
