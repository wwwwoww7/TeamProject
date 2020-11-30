package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.MemberDao;
import com.mycompany.webapp.dto.CartDto;
import com.mycompany.webapp.dto.ClassDto;
import com.mycompany.webapp.dto.MemberDto;

@Service 
public class MemberService {
	private static final Logger logger = LoggerFactory.getLogger(MemberService.class);

	@Resource
	private MemberDao memberDao;
	
	public void join(MemberDto member) {
		memberDao.insert(member);
	}
	
	public String login(MemberDto member) {
		MemberDto dbMember = memberDao.selectByMid(member.getMid()); //앞의 행이 디비에 있는 정보, 뒤의 행은 mid를 멤버객체에서 가져와서 dao에서 검색을 했다.
		if(dbMember == null) {
			return "wrongid";
		}
		
		PasswordEncoder passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
		if(passwordEncoder.matches(member.getMpw(), dbMember.getMpw())) {
			return "success";
		}
		return "wrongPassword";
	}
	
	//마이페이지에서 사용하려고 가져오는 멤버의 정보
	public MemberDto getId(MemberDto member) {
		MemberDto dbMember = memberDao.selectByMid(member.getMid());
		return dbMember;
	}
	
	public List<MemberDto> getMemberlist() {
		List<MemberDto> list = memberDao.selectAll();
		return list;
	}

	
	public String sendpw(MemberDto member) {
		MemberDto memberPW = memberDao.selectPW(member.getMid());
		if(memberPW.getMemail().equals(member.getMemail())) {
			return memberPW.getMpw();
		}
			
		return "error";
	}

	public MemberDto getMemberInfo(String tutor_id) {
		MemberDto memberInfo = memberDao.selectByMid(tutor_id);
		return memberInfo;
	}

	public int check(String mid) {
		int result = memberDao.check(mid);
		return result;
	}

	public List<ClassDto> getUserClasses(String mid) {
		List<ClassDto> list = memberDao.selectClass(mid);
		return list;
	}

	public List<ClassDto> getUserPick(String mid) {
		List<ClassDto> list = memberDao.selectPick(mid);
		return list;
	}
	
}
