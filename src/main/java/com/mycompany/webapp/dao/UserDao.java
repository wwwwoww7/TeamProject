package com.mycompany.webapp.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.UserDto;

@Repository 
public class UserDao {
	
	@Autowired
	private SqlSessionTemplate sst; //injection. 
	
	public int insert(UserDto user) { 
	  int row = sst.insert("mybatis.mapper.user.insert", user); 
	  return row; 
	 }
	
	public List<UserDto> selectAll() {
		List<UserDto> list = sst.selectList("mybatis.mapper.user.selectAll");
		return list;
	}
}
