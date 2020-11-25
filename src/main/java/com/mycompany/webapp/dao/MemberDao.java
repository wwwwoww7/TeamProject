package com.mycompany.webapp.dao;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

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


}