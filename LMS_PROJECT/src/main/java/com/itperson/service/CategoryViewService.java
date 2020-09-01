package com.itperson.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.itperson.dao.CategoryDao;
import com.itperson.dao.CourseDao;
import com.itperson.dao.SubCategoryDao;
import com.itperson.dto.Category;
import com.itperson.dto.Course;

public class CategoryViewService implements Service {
	
	private SqlSession sqlSession;
	
	public CategoryViewService(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		CourseDao courseDao = sqlSession.getMapper(CourseDao.class);		
		
		//course가 선택 되었을 경우
		if(request.getParameter("course")!=null) {
			
			Course curCourse = new Course();
			curCourse.setCode(request.getParameter("course"));
			curCourse.setName(courseDao.serchCourseName(curCourse.getCode()));
			model.addAttribute("cur_course", curCourse);

			CategoryDao categoryDao = sqlSession.getMapper(CategoryDao.class);
			model.addAttribute("categorys", categoryDao.categoryList(curCourse.getCode()));
			
			//category가 선택 되었을 경우.
			if(request.getParameter("category")!=null) {
				Category curCategory = new Category();
				curCategory.setCode(request.getParameter("category"));
				curCategory.setName(categoryDao.serchCategoryName(curCategory.getCode()));
				curCategory.setCoCode(curCourse.getCode());
				model.addAttribute("cur_category", curCategory);
				
				SubCategoryDao subCategoryDao = sqlSession.getMapper(SubCategoryDao.class);
				model.addAttribute("sub_categorys", subCategoryDao.subCategoryList(curCategory.getCode()));
			}
		}
		
				
			
		model.addAttribute("courses", courseDao.courseList());
		
	}

}