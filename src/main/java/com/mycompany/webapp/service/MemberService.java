package com.mycompany.webapp.service;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.MemberDao;
import com.mycompany.webapp.dto.MemberDto;

@Service 
public class MemberService {
	private static final Logger logger = LoggerFactory.getLogger(MemberService.class);

	@Resource
	private MemberDao userDao;
	
	public void join(MemberDto member) {
		userDao.insert(member);
	}
	
	public String login(MemberDto member) {
		MemberDto dbMember = userDao.selectByMid(member.getMid()); //앞의 행이 디비에 있는 정보, 뒤의 행은 mid를 멤버객체에서 가져와서 dao에서 검색을 했다.
		if(dbMember == null) {
			return "wrongid";
		}
		
		PasswordEncoder passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
		if(passwordEncoder.matches(member.getMpw(), dbMember.getMpw())) {
			return "success";
		}
		return "wrongPassword";
	}
}
