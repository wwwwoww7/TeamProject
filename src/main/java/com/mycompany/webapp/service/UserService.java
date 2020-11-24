package com.mycompany.webapp.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.UserDao;
import com.mycompany.webapp.dto.UserDto;

@Service 
public class UserService {
	private static final Logger logger = LoggerFactory.getLogger(UserService.class);
	
	@Resource
	private UserDao userDao;
	
	public void join(UserDto user) {
		userDao.insert(user);
	}
	
	public String login(UserDto user) {
		UserDto dbUser = userDao.selectByUser_id(user.getUser_id()); //앞의 행이 디비에 있는 정보, 뒤의 행은 mid를 멤버객체에서 가져와서 dao에서 검색을 했다.
		if(dbUser == null) {
			return "wrongid";
		}
		
		PasswordEncoder passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
		if(passwordEncoder.matches(user.getUser_pw(), dbUser.getUser_pw())) {
			return "success";
		}
		return "wrongPassword";
	}
}
