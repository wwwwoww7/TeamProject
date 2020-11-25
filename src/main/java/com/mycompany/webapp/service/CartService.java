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
	public ClassDto getClass(int classNo) {
		ClassDto classOne = cartDao.selectbyClassNo(classNo);
		return classOne;
	}

	/*public List<CartDto> getcartList(int classNo) {
		List<CartDto> cartList = cartDao.selectClasses(classNo);
		return cartList;
	}*/

	public void cartInsert(int classNo) {
		cartDao.insert(classNo);
		
	}

}
