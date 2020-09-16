package com.itperson.service;

import java.util.ArrayList;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.itperson.dao.MyCourseDao;
import com.itperson.dao.QuestionDao;
import com.itperson.dao.StudyContentsDao;
import com.itperson.dto.MQuestion;
import com.itperson.dto.Question;
import com.itperson.dto.SQuestion;

public class StudyCursorService implements Service {

	private SqlSession sqlSession;
	public StudyCursorService(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		String coCode = request.getParameter("course");
		String memId = (String) request.getSession().getAttribute("id");
		
		// 학습내용 셋팅
		MyCourseDao dao = sqlSession.getMapper(MyCourseDao.class);
		StudyContentsDao studyContentsDao = sqlSession.getMapper(StudyContentsDao.class);
		
		String stuCode;
		
		if(dao.isStudyLog(coCode, memId) == 0) {
			if(dao.searchPlan(coCode, memId)==1 && dao.searchPriority(coCode, memId)==1) {
				 stuCode = dao.firstStucodeImport(coCode);
			}else{
				 stuCode = dao.firstStucodeInOrder(coCode);
			}			
		}else {
			if(dao.searchPlan(coCode, memId)==1 && dao.searchPriority(coCode, memId)==1) {
				 stuCode = dao.nextStucodeImport(coCode, memId);
			}else{
				 stuCode = dao.nextStucodeInOrder(coCode, memId);
			}
		}
		
		model.addAttribute("content", studyContentsDao.searchStudyContents(stuCode));
		
		// 해당 학습의 문제 검색
		QuestionDao questionDao = sqlSession.getMapper(QuestionDao.class);
		ArrayList<Question> questions = questionDao.searchQuestionList(stuCode);
		ArrayList<Question> questionsArr = this.questionSetting(questions, questionDao);
		
		model.addAttribute("questions", questionsArr);
		
	}

	ArrayList<Question> questionSetting(ArrayList<Question> ques, QuestionDao dao){
		
		ArrayList<Question> result = new ArrayList<Question>();
		
		// 질문 중 3개만 random으로 선택 반환
		while(result.size() < 3 && ques.size() != 0) {
			Random random = new Random();
			int index = Math.abs(random.nextInt() % ques.size());
//			System.out.println(index);
			Question item = ques.remove(index);
			
			if(item.getType().equals("M")) {
				MQuestion mq = new MQuestion(item);
				mq.setAnswer(dao.searchMAnswer(item.getCode()));
				result.add(mq);
			}else {
				SQuestion sq = new SQuestion(item);
				sq.setAnswer(dao.searchSAnswer(item.getCode()));
				result.add(sq);
			}
		}
		
//		for(Question que : ques) {
//			if(que.getType().equals("M")) {
//				MQuestion mq = new MQuestion(que);
//				mq.setAnswer(dao.searchMAnswer(que.getCode()));
//				result.add(mq);
//			}else {
//				SQuestion sq = new SQuestion(que);
//				sq.setAnswer(dao.searchSAnswer(que.getCode()));
//				result.add(sq);
//			}
//		}		
		return result;
	}
}
