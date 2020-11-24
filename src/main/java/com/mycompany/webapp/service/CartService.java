package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.CartDao;
import com.mycompany.webapp.dto.CartDto;
import com.mycompany.webapp.dto.CartPager;

@Service
public class CartService {
	
	@Resource
	private CartDao cartDao;
	
	public int gettotalRows() {
		int totalRows = cartDao.countAll();
		return totalRows;
	}

	public List<CartDto> getCartlist() {
		List<CartDto> list = cartDao.selectAll();
		return list;
	}

	public List<CartDto> getCartlist(CartPager pager) {
		List<CartDto> list = cartDao.selectByPage(pager);
		return list;
	}

}
