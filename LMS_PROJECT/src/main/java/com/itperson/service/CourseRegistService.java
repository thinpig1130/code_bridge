package com.itperson.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.itperson.dao.CourseDao;
import com.itperson.dto.Course;

public class CourseRegistService implements Service {
	
	private SqlSession sqlSession;
	
	public CourseRegistService(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		Course vo = new Course();
		vo.setCode(request.getParameter("code"));
		vo.setName(request.getParameter("name"));
		
		CourseDao dao = sqlSession.getMapper(CourseDao.class);
		dao.registCourse(vo);

	}

}
