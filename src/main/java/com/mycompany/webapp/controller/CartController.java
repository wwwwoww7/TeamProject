package com.mycompany.webapp.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.webapp.dto.CartDto;
import com.mycompany.webapp.dto.CartPager;
import com.mycompany.webapp.service.CartService;

@Controller
@RequestMapping("/cart")
public class CartController {
	private static final Logger logger = LoggerFactory.getLogger(CartController.class);
	
	@Resource
	private CartService cartservice;
	
	@RequestMapping("/cart")
	public String cart(@RequestParam(defaultValue = "1") int pageNo, Model model, String user_id, int class_no) {
		int totalRows = cartservice.gettotalRows();
		CartPager pager = new CartPager(5, 5, totalRows, pageNo);
		List<CartDto> list = cartservice.getCartlist(pager);
		model.addAttribute("list", list);
		model.addAttribute("pager", pager);
		return "cart/cart";
	}
	
	@GetMapping("/payment")
	public String payment() {
		return "cart/payment";
	}
	
	@GetMapping("/pay_complate")
	public String pay_complate() {
		return "cart/pay_complate";
	}
	
}
