package com.mycompany.webapp.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.WebAuthenticationDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.mycompany.webapp.dto.MemberDto;
import com.mycompany.webapp.service.MemberService;
/**
 * 2020. 11. 17 
 *
 */
@Controller
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Resource
	private MemberService mService;
	
	@RequestMapping("/login/login")
	public String login(MemberDto member, HttpSession session) {
		logger.info("member:"+member);
		//session.setAttribute("member", member);
		return "login/login";
	}
	 
	@PostMapping("/login/check")
	public void check(String mid, HttpServletResponse response) throws Exception {
		int result = mService.id_check(mid);
		JSONObject object  = new JSONObject();
		object.put("result", result);
		
		String json = object.toString(); //{"result" : "success"}
		
		//응답보내기
		PrintWriter out = response.getWriter();
		response.setContentType("application/json;charset=utf-8");
		out.println(json);
		out.flush();
		out.close();
		
	}
	
	@PostMapping("/login/join")
	public String Join(MemberDto member, HttpServletRequest request) throws Exception {

		
		if(member.getMid().trim().equals("") || member.getMpw().trim().equals("") || member.getMemail().trim().equals("") || member.getMtel().trim().equals("")) {
			  request.setAttribute("member", member); 
			  return "/login/join"; 
		}
		 
		
		int result = mService.id_check(member.getMid());
		
			if(result == 1) { 
				logger.info("result");
				//JOptionPane.showMessageDialog(null, "이미 있는 아이디입니다.");
				return "/login/join"; 
				}
			else if(result == 0) {
				
			
				if(!member.getMphotoAttach().isEmpty()) { 
					String originalFileName = member.getMphotoAttach().getOriginalFilename(); 
					String extName = originalFileName.substring(originalFileName.lastIndexOf(".")); 
					String saveName = member.getMid()+extName;
					File dest = new File("D:/MyWorkspace/photo/member/"+saveName);
					member.getMphotoAttach().transferTo(dest);
					member.setMpro_img(saveName); 
				
				} else { 
					  member.setMpro_img("unnamed.jpg"); 
				}
							
			  PasswordEncoder passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
			  String encodedPassword = passwordEncoder.encode(member.getMpw());
			  member.setMpw(encodedPassword); 
			  member.setMenabled(true);
			  //member.setMinfo("");(member.xml에 minfo(강사소개) insert부분 삭제함 - 혜빈)
		}
			mService.join(member); 
		
		
		return"home";
	
	}
	
	@GetMapping("/login/join")
	public String Joinmove() {
		
		return"login/join";
	}
	
	@GetMapping("/login/findpw")
	public String getfindpw() {
		
		return "login/findpw";
	}
	
	@PostMapping("/login/findpw")
	public String postfindpw() {
		
		return "login/findpw";
	}

}
