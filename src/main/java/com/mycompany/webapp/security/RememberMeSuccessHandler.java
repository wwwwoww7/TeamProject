package com.mycompany.webapp.security;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;

import com.mycompany.webapp.dto.MemberDto;
import com.mycompany.webapp.service.MemberService;

public class RememberMeSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {
	private static final Logger logger = LoggerFactory.getLogger(RememberMeSuccessHandler.class);
	
	@Resource
	private MemberService memberService;
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {		// TODO Auto-generated method stub
		super.onAuthenticationSuccess(request, response, authentication);
		// session객체 얻어내기
		HttpSession session = request.getSession();

		String user_id = authentication.getName(); // 사용자id얻기

		for (GrantedAuthority authority : authentication.getAuthorities()) {
			String role = authority.getAuthority();
			logger.info(role);
			session.setAttribute("sessionRole", role); // 사용자 등급 세션에 저장
		}

		logger.info(user_id);
		session.setAttribute("sessionMid", user_id); // 사용자 아이디 세션에 저장
		
		MemberDto temp = new MemberDto();
		temp.setMid(user_id);
		MemberDto member = memberService.getId(temp.getMid());
		session.setAttribute("member", member);
	}
	
}
