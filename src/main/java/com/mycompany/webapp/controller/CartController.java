package com.mycompany.webapp.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.webapp.dto.CartDto;
import com.mycompany.webapp.service.CartService;

@Controller
@RequestMapping("/cart")
public class CartController {
	private static final Logger logger = LoggerFactory.getLogger(CartController.class);
	
	@Resource
	private CartService cartService;
	
	
	@RequestMapping
	public String cart() {
		return "cart/cart";
	}
	
	@RequestMapping("/pick_cl")
	public String pick_cl(@RequestParam(defaultValue = "-1") int classNo, HttpSession session) {
		//
		List<CartDto> cartList = (List<CartDto>)session.getAttribute("cartList");
		
		if(cartList == null) {
			cartList = new ArrayList<CartDto>();
		}
		
		if(classNo != -1) {
			for(CartDto cartItem : cartList) {
				
				if(cartItem.getClass_no() == classNo) {
					return "/";	//팝업창 띄우고 stay,,
				}
			}

			CartDto classOne = cartService.getClass(classNo);
			classOne.setMid( (String)session.getAttribute("sessionMid") );
			cartList.add(classOne);
		}
		//logger.info("2=================>" + cartList.size());
		session.setAttribute("cartList", cartList);
		
		return "cart/cart";	
	}
	
	
	@RequestMapping("/payment")
	public String payment(HttpSession session) {
		//db에 아이디와 클래스를 카트에 저장
		//세션에 저장된 id와 클래스 넘버 가져오기
		
		List<CartDto> cartList = (List<CartDto>)session.getAttribute("classOne");
		cartService.cartInsert(cartList); //서비스로 정보 보내서 처리
		
		return "cart/payment";
	}
	
	
	
	@GetMapping("/pay_complete")
	public String pay_complete(HttpSession session) {
		session.removeAttribute("cartList");
		return "cart/pay_complete";
	}
	
}
