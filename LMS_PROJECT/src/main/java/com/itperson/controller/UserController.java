package com.itperson.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	@Autowired
	private SqlSession sqlSession;	
	
	@RequestMapping(value = "/status")
	public String userStatus( Model model, HttpServletRequest request) {
//		model.addAttribute("request", request);
//		MemberJoinService service = new MemberJoinService(sqlSession);
//		service.execute(model);
//		
		model.addAttribute("page_name", "학습현황");
		return "user/status";
	}
	
	@RequestMapping(value = "/study")
	public String userStudy( Model model, HttpServletRequest request) {
		
		model.addAttribute("page_name", "학습하기");
		return "user/study";
	}
	
	
	@RequestMapping(value = "/testing")
	public String userTesting( Model model, HttpServletRequest request) {
		
		model.addAttribute("page_name", "문제풀기");
		return "user/testing";
	}
	
	@RequestMapping(value = "/review")
	public String userReview( Model model, HttpServletRequest request) {
		
		model.addAttribute("page_name", "복습하기");
		return "user/review";
	}
	
	
	@RequestMapping(value = "/demands")
	public String userDemands( Model model, HttpServletRequest request) {
		
		model.addAttribute("page_name", "관리자에게 문의");
		return "user/demands";
	}
	
	
	
	

}
