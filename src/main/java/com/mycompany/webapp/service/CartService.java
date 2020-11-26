package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.CartDao;
import com.mycompany.webapp.dao.ClassDao;
import com.mycompany.webapp.dto.CartDto;
import com.mycompany.webapp.dto.CartPager;
import com.mycompany.webapp.dto.ClassDto;

@Service
public class CartService {
	
	@Resource
	private CartDao cartDao;
	

	
	//강의번호 하나로 강의 조회
	public CartDto getClass(int classNo) {
		CartDto classOne = cartDao.selectbyClassNo(classNo);
		return classOne;
	}



	public void cartInsert(List<CartDto> cartList) {
		for(CartDto cartItem : cartList) {
			cartDao.insert(cartItem); //서비스에서 바로 DB에 저장
		}
		
	}

}
