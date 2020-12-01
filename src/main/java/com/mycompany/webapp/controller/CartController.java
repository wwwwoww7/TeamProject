package com.mycompany.webapp.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

	@RequestMapping("/sumprice")
	public void sumprice(
			@RequestParam(value = "chkPrice[]") List<String> arrayParams,
			HttpSession session, HttpServletResponse response) throws Exception {
		int sumPrice = 0;
		
		List<String> chkList = arrayParams;
		
		for(String pkPrice : chkList) {
			int result = Integer.parseInt(pkPrice);
			sumPrice += result; 
		}
		
		logger.info("합계 : "+sumPrice);
		session.setAttribute("sessionSumprice", sumPrice);
		
		//json응답 보내기
		JSONObject object = new JSONObject();
		object.put("sumPrice",sumPrice);

		String json = object.toString();  

		// 응답보내기
		PrintWriter out = response.getWriter();
		response.setContentType("application/json;charset=utf-8");
		out.println(json);
		out.flush();
		out.close();
	
		
	}
	
	@RequestMapping("/payment")
	public String payment() {
		return "cart/payment";
	}

	@GetMapping("/pay_complete")
	public String pay_complete(HttpSession session) {
		session.removeAttribute("cartList");
		return "cart/pay_complete";
	}

}
