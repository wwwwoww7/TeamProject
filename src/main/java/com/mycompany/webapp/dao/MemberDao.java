package com.mycompany.webapp.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.CartDto;
import com.mycompany.webapp.dto.ClassDto;
import com.mycompany.webapp.dto.MemberDto;

@Repository 
public class MemberDao {
	
	@Resource
	private SqlSessionTemplate sst; //injection. 
	
	public int insert(MemberDto member) { 
	  int row = sst.insert("mybatis.mapper.member.insert", member); 
	  return row; 
	 }
	
	public MemberDto selectByMid(String mid) {
		MemberDto dbMember = sst.selectOne("mybatis.mapper.member.selectByMid",mid); 
		return dbMember;
	}

	public List<MemberDto> selectAll() {
		List<MemberDto> list = sst.selectList("mybatis.mapper.member.selectAll");
		return list;
	}

	public MemberDto selectPW(String mid) {
		MemberDto memberPW = sst.selectOne("mybatis.mapper.member.selectForPw",mid);
		return memberPW;
	}

	public int check(String mid) {
		int result = sst.selectOne("mybatis.mapper.member.checkId", mid);
		return result;
	}

	public List<ClassDto> selectClass(String mid) {
		List<ClassDto> list = sst.selectList("mybatis.mapper.member.selectClass", mid);
		return list;
	}

	public List<ClassDto> selectPick(String mid) {
		List<ClassDto> list = sst.selectList("mybatis.mapper.member.selectPick", mid);
		return list;
	}

	public int updateMember(MemberDto member) {
		int rows = sst.update("mybatis.mapper.member.updateMember",member);
		return rows;
	}

}