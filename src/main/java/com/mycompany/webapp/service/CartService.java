package com.mycompany.webapp.service;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.controller.CartController;
import com.mycompany.webapp.dao.CartDao;
import com.mycompany.webapp.dao.ClassDao;
import com.mycompany.webapp.dto.CartDto;
import com.mycompany.webapp.dto.ClassDto;

@Service
public class CartService {
	private static final Logger logger = LoggerFactory.getLogger(CartService.class);
	
	@Resource
	private CartDao cartDao;
	

	
	//강의번호 하나로 강의 조회
	public CartDto getClass(int classNo) {
		CartDto classOne = cartDao.selectbyClassNo(classNo);
		return classOne;
	}


	//구매완료시 cart 테이블 저장
	public void cartInsert(List<CartDto> cartList) {
			//logger.info("서비스 넘어온 강의목록" + cartList);
			for(CartDto cartItem : cartList) {
				cartDao.insert1(cartItem); //서비스에서 바로 DB에 저장
		}
	}

	//classAppl 에서 구매한 수강목록 확인
	public void classApplInsert(List<CartDto> cartList) {
		for(CartDto cartItem : cartList) {
			cartDao.insert2(cartItem); //서비스에서 바로 DB에 저장
		}
		
	}


	

}
