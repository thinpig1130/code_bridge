package com.itperson.service;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.itperson.dao.MyCourseDao;
import com.itperson.dao.ViewStudyLogCalculationDao;
import com.itperson.dto.ViewForStudy;
import com.itperson.dto.ViewStudyLogCalculation;

public class MyCoursesViewService implements Service {

	private SqlSession sqlSession;
	public MyCoursesViewService(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");		
		String memId = (String) request.getSession().getAttribute("id");
		
		MyCourseDao dao = sqlSession.getMapper(MyCourseDao.class);
		ArrayList<ViewForStudy> viewForStudyArr = dao.searchComplexCourses(memId);
		
		if(viewForStudyArr!=null && viewForStudyArr.size() != 0) {
			ViewStudyLogCalculationDao VSCdao = sqlSession.getMapper(ViewStudyLogCalculationDao.class);
			
			for (ViewForStudy vfs : viewForStudyArr) {
				ArrayList<ViewStudyLogCalculation> list = VSCdao.searchCoCodeList(vfs.getCoCode(), memId);
				double avg = calcMemoryRate(list);
				vfs.setMemoryRate(avg);
			}
		}
		
		model.addAttribute("courseList", viewForStudyArr);
	}
	
	double calcMemoryRate(ArrayList<ViewStudyLogCalculation> list) {
		double sum = 0;
		for(ViewStudyLogCalculation vslc : list) {
			sum += vslc.getMemoryRate();
		}
		double result = sum / list.size();		
		return Double.isNaN(result)? 0.0 : result;
	}
}

