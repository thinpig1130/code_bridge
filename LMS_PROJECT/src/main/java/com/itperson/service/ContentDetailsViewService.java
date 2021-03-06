package com.itperson.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.itperson.dao.FieldDao;
import com.itperson.dao.StudyContentsDao;
import com.itperson.dto.Field;


public class ContentDetailsViewService implements Service {

	private SqlSession sqlSession;
	
	public ContentDetailsViewService(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		String stuCode = request.getParameter("code");
	
//		System.out.println(stuCode);
		StudyContentsDao studyContentsDao = sqlSession.getMapper(StudyContentsDao.class);
		FieldDao fieldDao = sqlSession.getMapper(FieldDao.class);
		
		Field subcategory = fieldDao.studyContentsBelongs(stuCode);
		Field category = fieldDao.subCategoryBelongs(subcategory.getCode());
		
		Field course = fieldDao.categoryBelongs(category.getCode());
		
//		System.out.println( studyContentsDao.searchStudyContents(stuCode));
		
		model.addAttribute("content", studyContentsDao.searchStudyContents(stuCode));
		model.addAttribute("course", course);
		model.addAttribute("category", category);
		model.addAttribute("subcategory", subcategory);
	}

}
