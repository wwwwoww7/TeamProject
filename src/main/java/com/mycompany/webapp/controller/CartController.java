package com.mycompany.webapp.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.annotation.RequestScope;

import com.mycompany.webapp.dto.CartDto;
import com.mycompany.webapp.dto.CartPager;

import com.mycompany.webapp.dto.ClassDto;
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
	public String pick_cl(@RequestParam(defaultValue = "1") int classNo, HttpSession session) {
		//내가 픽한 강의번호 하나로 강의 1개 조회
		ClassDto classOne = cartService.getClass(classNo);
		session.setAttribute("classOne", classOne);
		return "cart/cart";	
	}
	@RequestMapping("/cartlist")
	public String cartlist(HttpServletRequest request) {
		
		
		
		return "cart/payment";
	}
	
	
	
	@GetMapping("/pay_complete")
	public String pay_complete() {
		return "cart/pay_complete";
	}
	
}
