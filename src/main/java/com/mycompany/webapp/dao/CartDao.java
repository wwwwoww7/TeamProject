package com.mycompany.webapp.dao;
import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.controller.CartController;
import com.mycompany.webapp.dto.CartDto;
import com.mycompany.webapp.dto.ClassDto;



@Repository
public class CartDao{

	private static final Logger logger = LoggerFactory.getLogger(CartDao.class);
	
	@Resource
	private SqlSessionTemplate sst;

	
	//강의번호 하나로 강의조회 하기
	public CartDto selectbyClassNo(int class_no) {
		//logger.info("DAO!!!!!!!!!!!!!!!!!!!!!!before"+class_no);
		CartDto classOne = sst.selectOne("mybatis.mapper.cart.selectbyClassNo", class_no);
		//logger.info("DAO!!!!!!!!!!!!!!!!!!!!!!"+class_no);
		return classOne;
	}


	//cartDto에 저장한거 카트에 insert
	public int insert1(CartDto cartItem) {
		int cartRow = sst.insert("mybatis.mapper.cart.insert", cartItem);
		//logger.info("insert하는 : "+cartItem.toString());
		return cartRow;
	}

	//cartDto에 저장한거 카트어플라이 insert
	public int insert2(CartDto cartItem) {
		int cartRow = sst.insert("mybatis.mapper.classAppl.insert", cartItem);
		//logger.info("insert하는 : "+cartItem.toString());
		return cartRow;
	}
	



	




	

	
	
}
