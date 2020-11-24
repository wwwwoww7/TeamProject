package com.mycompany.webapp.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;


public class AuthenticationSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {
	private static final Logger logger = LoggerFactory.getLogger(AuthenticationSuccessHandler.class);
	
	
	  @Override public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
		  logger.info("실행");
		  super.onAuthenticationSuccess(request, response, authentication); 
		  
		  String user_id = authentication.getName();
		  //session객체 얻어내기
		  HttpSession session = request.getSession();
		  session.setAttribute("sessionuser_id", user_id);
	}
	 
}

