package com.mycompany.webapp.dao;
import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.CartDto;
import com.mycompany.webapp.dto.CartPager;
import com.mycompany.webapp.dto.ClassDto;



@Repository
public class CartDao{
	
	@Resource
	private SqlSessionTemplate sst;
	
	
	public int countAll() {
		int totalRows = sst.selectOne("mybatis.mapper.cart.countAll");
		return totalRows;
	};

	/*	public List<CartDto> selectAll() {
			List<CartDto> list = sst.selectList("mybatis.mapper.cart.selectAll");
			return list;
		}
	
		public List<CartDto> selectByPage(CartPager pager) {
			List<CartDto> list = sst.selectList("mybatis.mapper.cart.selectByPage", pager);
			return list;
		}
		
		public int insert(CartDto cart) {
			int rows = sst.insert("mybatis.mapper.cart.insert", cart);
			return rows;
		}*/
	
	//강의번호 하나로 강의조회 하기
	public ClassDto selectbyClassNo(int class_no) {
		ClassDto classOne = sst.selectOne("mybatis.mapper.class.selectbyClassNo", class_no);
		return classOne;
	}

	/*public List<CartDto> selectClasses(int classNo) {
		List<ClassDto> cartList = sst.selectList("mybatis.mapper.cart.selectClasses");
		return cartList;
	}*/

	public int insert(int classNo) {
		int class_no = sst.insert("mybatis.mapper.cart.insert", classNo);
		return class_no;
	}




	

	
	
}
