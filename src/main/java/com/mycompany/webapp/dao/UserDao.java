package com.mycompany.webapp.dao;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.UserDto;

@Repository 
public class UserDao {
	
	@Resource
	private SqlSessionTemplate sst; //injection. 
	
	public int insert(UserDto user) { 
	  int row = sst.insert("mybatis.mapper.user.insert", user); 
	  return row; 
	 }
	
	public UserDto selectByUser_id(String user_id) {
		UserDto dbUser = sst.selectOne("mybatis.mapper.user.selectByUser_id",user_id); 
		return dbUser;
	}
}
