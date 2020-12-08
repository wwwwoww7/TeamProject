package com.mycompany.webapp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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

	
	@RequestMapping("/cart")
	public String cart() {
		return "cart/cart";
	}
	
	
	//장바구니 담기
	@RequestMapping("/pick_cl")
	public String pick_cl(@RequestParam(defaultValue = "-1") int classNo, HttpSession session, Model model) {
		
		List<CartDto> cartList = (List<CartDto>)session.getAttribute("cartList");
		
		//날짜 넣기위한 객체
		Date cart_date = new Date();
			
			
		if(cartList == null) {
			cartList = new ArrayList<CartDto>();
			session.setAttribute("cartList", cartList);
		}
		
		if (classNo != -1) {
			boolean exist = false;
			for(CartDto cartItem : cartList) {
				if(cartItem.getClass_no() == classNo) {
					exist = true;
					model.addAttribute("classNum", classNo);
					model.addAttribute("msg", "중복된 클래스는 담을 수 없습니다.");
					//logger.info(model.toString());
					
				}
			}
			
			if(!exist) {
				CartDto classOne = cartService.getClass(classNo);
				classOne.setMid((String) session.getAttribute("sessionMid"));
				classOne.setCart_date(cart_date);
				cartList.add(classOne);
				//logger.info("저장한 날짜 : "+classOne.getCart_date());
				
			System.out.println(cartList+"저장완료");
		}
		// logger.info("2=================>" + cartList.size());
	}
		return "cart/cart";
	}

	//값 합계
	@RequestMapping("/sumprice")
	public void sumprice(
			@RequestParam(value = "chkPrice[]") List<String> chkList,
			HttpSession session, HttpServletResponse response) throws Exception {
		int sumPrice = 0;
		
		
		logger.info("받은 배열 : " + chkList);
		
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
	
	//장바구니 삭제
	@RequestMapping("/cartdelete")
	public void cartdelete(@RequestParam(value = "deleteArr[]") List<Integer> delList,
							 HttpSession session, HttpServletResponse response) throws Exception{
		//logger.info("받은 배열 : " + delList);
		
		List<CartDto> cartList = (List<CartDto>)session.getAttribute("cartList");
		//logger.info("" + cartList.get(0).getClass_no());

		Iterator<CartDto> iterator = cartList.iterator(); //iterator은 list중에서 하나 골라서 갯수를 확인하면서 실행
		while(iterator.hasNext()) { //hasNext로 확인할게 남아있는지 확인하여 반복함(hasNext는 boolean타입임)
			CartDto cartItem = iterator.next(); //cartItem 중 하나 반복자로 설정
			int class_no = cartItem.getClass_no(); //타켓 정함
			logger.info("카트에 담긴 class_no : "+class_no);	 
			for(int deleteNum : delList) { //ajax로 받아온 타켓리스트를 반복하여 하나씩 실행함
				logger.info("deleteNum : "+deleteNum);
				if(deleteNum == class_no) {
					iterator.remove();
				}
				logger.info("카트에 담긴 class_no deleteX: "+class_no);
			}
		}
	
		
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("result", "success");
		String json = jsonObject.toString();
		response.setContentType("application/json;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println(json);
		out.flush();
		out.close();
	}
	
	//결제확인 창 
	@RequestMapping("/payment")
	public String payment(Model model, HttpSession session) {
		//결제 확인 날짜 넣기		
		List<CartDto> cartList = (List<CartDto>)session.getAttribute("cartList");
		
		if(cartList==null || cartList.size()==0) {
			return "redirect:/";
		}
			
		Iterator<CartDto> iterator = cartList.iterator(); //iterator은 list중에서 하나 골라서 갯수를 확인하면서 실행
		while(iterator.hasNext()) { //hasNext로 확인할게 남아있는지 확인하여 반복함(hasNext는 boolean타입임)
			CartDto cartItem = iterator.next(); //cartItem 중 하나 반복자로 설정
			Date classDate = cartItem.getCart_date(); //타켓 정함
			logger.info("꺼내온 날짜(변환 전) : "+classDate);
			//String cartDate = classDate.toString();
			
			model.addAttribute("classDate", classDate);
		}
		return "cart/payment";
	}
	
	//결제 완료창 DB저장
	@GetMapping("/pay_complete")
	public String pay_complete(HttpSession session) {
		//구매정보 DB 저장
		List<CartDto> cartList = (List<CartDto>)session.getAttribute("cartList");
		//String userId = (String)session.getAttribute("sessionMid");
		
		logger.info("저장개수 : "+cartList.size());
		
		cartService.cartInsert(cartList);
		cartService.classApplInsert(cartList);
		
		//세션에 담긴 cartList삭제
		session.removeAttribute("cartList");
		//cartList.clear();
		return "cart/pay_complete";
	}

}
