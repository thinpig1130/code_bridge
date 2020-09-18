package com.itperson;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.itperson.service.Service;

public class PracticeTestScoringService implements Service {
	private SqlSession sqlSession;
	public PracticeTestScoringService(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		
		String coCode = request.getParameter("coCode");
		String coName = request.getParameter("coName");

		String[] corArr = request.getParameterValues("correct");
		
		double questions = 0;
		int correct = 0;
		double score;
		for (String cor: corArr) {
			if(cor.equals("O")) correct+=1;
			questions += 1;
		}
		score = (correct/questions)*100;
		
		model.addAttribute("questions",  String.valueOf(Math.round(questions)));
		model.addAttribute("correct", correct);
		model.addAttribute("score", String.valueOf(Math.round(score)));
		model.addAttribute("coCode", coCode);
		model.addAttribute("coName", coName );

	}

}
