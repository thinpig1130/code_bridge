package com.itperson.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itperson.service.CategoryRegistService;
import com.itperson.service.CategoryViewService;
import com.itperson.service.ContentsRegistService;
import com.itperson.service.ContentsViewService;
import com.itperson.service.CourseRegistService;
import com.itperson.service.CoursesViewService;
import com.itperson.service.Service;
import com.itperson.service.SubCategoryRegistService;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	
	@Autowired
	private SqlSession sqlSession;
	
	/*----------------------------------- 관리자 로그인 -------------------------------------- */
	@RequestMapping(value = {"/enter",""})
	public String AdminEnter( Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		model.addAttribute("page_name", "관리자로그인");
		return "admin/enter";
	}
	
	/*----------------------------------- 과정등록 tab-------------------------------------- */
	@RequestMapping(value = "/courses")
	public String AdminCourses( Model model, HttpServletRequest request) {
		
		CoursesViewService service = new CoursesViewService(sqlSession);
		service.execute(model);

		model.addAttribute("page_name", "과정등록");
		return "admin/courses";
	}
	@RequestMapping(value = "/regist_course")
	public String AdminRegistCourse( Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		CourseRegistService service = new CourseRegistService(sqlSession);
		service.execute(model);
		return "redirect:/admin/courses";
	}
	
	/*----------------------------------- 분류등록 tab-------------------------------------- */
	@RequestMapping(value = "/categorys")
	public String AdminCategorys( Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		CategoryViewService service = new CategoryViewService(sqlSession);
		service.execute(model);
		
		model.addAttribute("page_name", "분류등록");
		return "admin/categorys";
	}
	@RequestMapping(value = "/regist_category")
	public String AdminRegistCategory( Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		CategoryRegistService service = new CategoryRegistService(sqlSession);
		service.execute(model);
		return "redirect:/admin/categorys";
	}
	@RequestMapping(value = "/regist_subcategory")
	public String AdminRegistSubCategory( Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		SubCategoryRegistService service = new SubCategoryRegistService(sqlSession);
		service.execute(model);
		return "redirect:/admin/categorys";
	}
	
	/*----------------------------------- 학습관리 tab-------------------------------------- */
	@RequestMapping(value = "/contents")
	public String AdminContents( Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		
		Service service = new CategoryViewService(sqlSession);
		service.execute(model);
		
		service = new ContentsViewService(sqlSession);		
		service.execute(model);
		
		model.addAttribute("page_name", "학습목록");
		return "admin/contents";
	}	
	
	@RequestMapping(value = "/contents_form")
	public String AdminContent( Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		CategoryViewService service = new CategoryViewService(sqlSession);
		service.execute(model);
		
		model.addAttribute("page_name", "학습내용");
		return "admin/contents_form";
	}
	
	@RequestMapping(value = "/contents/regist")
	public String AdminRegistContent( Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		ContentsRegistService service = new ContentsRegistService(sqlSession);
		service.execute(model);
		
		return "redirect:/admin/contents";
	}
	
	
	
	/*----------------------------------- 문제등록 tab-------------------------------------- */
//	@RequestMapping(value = "/questions")
//	public String AdminQuestions( Model model, HttpServletRequest request) {
//		model.addAttribute("page_name", "문제등록");
//		return "admin/questions";
//	}
	@RequestMapping(value = "/question_form")
	public String AdminQuestionsForm( Model model, HttpServletRequest request) {
		model.addAttribute("page_name", "문제등록");
		return "admin/question_form";
	}
	
	
	/*----------------------------------- 사용자관리 tab-------------------------------------- */
	@RequestMapping(value = "/manage/users")
	public String ManageUsers( Model model, HttpServletRequest request) {
		model.addAttribute("page_name", "사용자관리");
		return "admin/manage_users";
	}
	
	/*----------------------------------- 관리자 답변 tab-------------------------------------- */
	@RequestMapping(value = "/manage/answers")
	public String ManageAnswers( Model model, HttpServletRequest request) {
		
		model.addAttribute("page_name", "관리자답변");
		return "admin/manage_answers";
	}

	
	/*----------------------------------- 관리자 답변 tab-------------------------------------- */
	@RequestMapping(value = "/test")
	public String ManageTest( Model model, HttpServletRequest request) {
		
		model.addAttribute("page_name", "테스트");
		return "admin/summer_note";
	}
	
}
