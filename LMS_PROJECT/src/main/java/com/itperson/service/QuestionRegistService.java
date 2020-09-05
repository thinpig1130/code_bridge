package com.itperson.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.itperson.common.CommonModules;
import com.itperson.dao.QuestionDao;
import com.itperson.dto.MQuestion;
import com.itperson.dto.SQuestion;

public class QuestionRegistService implements Service {

	private SqlSession sqlSession;
	public QuestionRegistService(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		String type = request.getParameter("type");
		QuestionDao dao = sqlSession.getMapper(QuestionDao.class);
		
		if(type.equals("S")) {
			SQuestion vo = new SQuestion();
			vo.setType(type);
			vo.setAnswer(request.getParameter("answer"));
			vo.setQuestion(request.getParameter("question"));
			vo.setStuCode(request.getParameter("stucode"));
			vo.setCode(CommonModules.nextCode(vo.getStuCode(), dao));
			
			dao.registQuestionS(vo);
			model.addAttribute("code", vo.getStuCode());
		}else {
			MQuestion vo = new MQuestion();
			vo.setType(type);
			vo.setQuestion(request.getParameter("question"));
			vo.setStuCode(request.getParameter("stucode"));
			vo.setCode(CommonModules.nextCode(vo.getStuCode(), dao));
			
			System.out.println(vo);
			
			
			
//			vo.setAnswer(null);
			
//			System.out.println(ques);
			model.addAttribute("code", request.getParameter("stucode"));
		}		
		
	}
}
