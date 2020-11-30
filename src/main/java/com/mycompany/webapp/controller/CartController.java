package com.mycompany.webapp.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import javax.annotation.Resource;
import javax.management.AttributeList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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

		List<CartDto> cartList = (List<CartDto>)session.getAttribute("cartList");
		if(cartList == null) {
			cartList = new ArrayList<CartDto>();
			session.setAttribute("cartList", cartList);
		}
		
		if (classNo != -1) {
			boolean exist = false;
			for(CartDto cartItem : cartList) {
				if(cartItem.getClass_no() == classNo) {
					exist = true;
				}
			}
			
			if(!exist) {
				CartDto classOne = cartService.getClass(classNo);
				classOne.setMid((String) session.getAttribute("sessionMid"));
				cartList.add(classOne);
				
			System.out.println(cartList);
		}
		// logger.info("2=================>" + cartList.size());
	}
		return "cart/cart";
	}

	@RequestMapping("/payment")
	public String payment(HttpSession session) {
		
		return "cart/payment";
	}

	@GetMapping("/pay_complete")
	public String pay_complete(HttpSession session) {
		session.removeAttribute("cartList");
		return "cart/pay_complete";
	}

}
