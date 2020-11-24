package com.mycompany.webapp.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
		logger.info("user-service실행");
	}
	
	
}
