package com.itperson.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.ui.Model;

import com.itperson.dao.ViewStudyLogCalculationDao;
import com.itperson.dto.ViewStudyLogCalculation;

public class ReviewListService implements Service {
	private SqlSession sqlSession;
	
	public ReviewListService(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		String memId = (String) request.getSession().getAttribute("id");
		
		ViewStudyLogCalculationDao dao = sqlSession.getMapper(ViewStudyLogCalculationDao.class);
		
		ArrayList<ViewStudyLogCalculation> list = dao.searchList(memId);
		
		// 기억률을 토대로 정렬
		Collections.sort(list, new Comparator() {
			@Override
			public int compare(Object o1, Object o2) {
				ViewStudyLogCalculation val1 = (ViewStudyLogCalculation) o1;
				ViewStudyLogCalculation val2 = (ViewStudyLogCalculation) o2;
			    int result;
			    if(val1.getMemoryRate() < val2.getMemoryRate()) result = -1;
			    else if(val1.getMemoryRate() == val2.getMemoryRate()) result = 0;
			    else result = 1;				
				return result;
				} 
			});
		
		
		ObjectMapper mapper = new ObjectMapper();

		String jsonList;
		try {
			jsonList = mapper.writeValueAsString(list);
			model.addAttribute( "jsonList", jsonList );
		} catch (JsonGenerationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
//		model.addAttribute("list", list);
	}

}
