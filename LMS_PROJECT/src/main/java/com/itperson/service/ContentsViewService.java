package com.itperson.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.itperson.dao.CategoryDao;
import com.itperson.dao.CourseDao;
import com.itperson.dao.StudyContentsDao;
import com.itperson.dao.SubCategoryDao;
import com.itperson.dto.Category;
import com.itperson.dto.Course;
import com.itperson.dto.SubCategory;

public class ContentsViewService implements Service {

	private SqlSession sqlSession;
	public ContentsViewService(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		CourseDao courseDao = sqlSession.getMapper(CourseDao.class);
		
		int page;
		if(request.getParameter("page")==null) {
			page = 1; 
		}else {
			page = Integer.parseInt(request.getParameter("page"));
		}
		
		
		if(request.getParameter("subcategory")==null) {
			if(request.getParameter("category")==null) {		
				if(request.getParameter("course")==null) {
					//// 전달된 파라미터 값이 없을 때
					
					
					
					
				}else {
					
				}
			}else {
				
			}			
		}else {
			
						
		}
		
		
		StudyContentsDao studyContentsDao =  sqlSession.getMapper(StudyContentsDao.class);
		model.addAttribute("contentsList", studyContentsDao.studyContentsList());
		model.addAttribute("page", page);
		
		
		
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
				
				if(request.getParameter("subcategory")!=null) {
					SubCategory curSubcategory = new SubCategory();
					curSubcategory.setCode(request.getParameter("subcategory"));
					curSubcategory.setName(subCategoryDao.serchSubCategoryName(curSubcategory.getCode()));
					curSubcategory.setCaCode(curCategory.getCode());
					model.addAttribute("cur_subcategory", curSubcategory);
				}
			}
		}
			
		model.addAttribute("courses", courseDao.courseList());
	}

}