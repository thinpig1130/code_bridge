package com.itperson.service;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.itperson.dao.MyCourseDao;
import com.itperson.dao.TestDao;
import com.itperson.dto.MyCourse;
import com.itperson.dto.Test;

public class PracticeTestListService implements Service {

	private SqlSession sqlSession;
	public PracticeTestListService(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		String memId = (String) request.getSession().getAttribute("id");
		MyCourseDao myCoDao = sqlSession.getMapper(MyCourseDao.class);
		
		ArrayList<MyCourse> myCourse= myCoDao.searchCourses(memId);
		ArrayList<Test> testList = new ArrayList<Test>();
		if(myCourse != null && myCourse.size() != 0 ) {
			TestDao testDao = sqlSession.getMapper(TestDao.class);
			for(MyCourse co: myCourse) {	
				Test test = testDao.searchTest(co.getCoCode());
				if (test != null) {
					testList.add(test);					
				}
			}
		}	
		model.addAttribute("testList", testList);
	}
}
