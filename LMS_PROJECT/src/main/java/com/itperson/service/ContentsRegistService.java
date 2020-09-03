package com.itperson.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.itperson.dao.Dao;
import com.itperson.dao.StudyContentsDao;
import com.itperson.dto.StudyContents;

public class ContentsRegistService implements Service {
	private SqlSession sqlSession;
	public ContentsRegistService(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		StudyContents vo = new StudyContents();
		
		String cocode = request.getParameter("cocode");
		String cacode = request.getParameter("cacode");
		
		vo.setSubCode(request.getParameter("subcode"));
		vo.setImportance(Integer.parseInt(request.getParameter("importance")));
		vo.setTitle(request.getParameter("title"));
		vo.setContents(request.getParameter("contents"));
		
		
		StudyContentsDao studyContentsDao = sqlSession.getMapper(StudyContentsDao.class);
		
		
		//코드 자동생성 모듈
		String nxCode = this.nextCode(vo.getSubCode(), studyContentsDao);
		vo.setCode(nxCode);
		System.out.println(vo);

		studyContentsDao.registStudyContents(vo);
		
		model.addAttribute("course", cocode);
		model.addAttribute("category", cacode);
		model.addAttribute("subcategory", vo.getSubCode());
		
	}
	
	public String nextCode(String partCode, Dao dao) {
		
		String maxCode = dao.maxCode(partCode);
		
		if(maxCode==null) {
			String[] strCode = partCode.split("C");
			maxCode = strCode[0] + strCode[1] + "C0";
			System.out.println(maxCode + " maxCode");
		}
		
		String[] strArr = maxCode.split("C");
		
		int len = 3;
		
		int nextNum = Integer.parseInt(strArr[1])+1;
		
		String strNextNum = nextNum+"";
		
		
		while(len > strNextNum.length()) {
			strNextNum = "0" + strNextNum; 
		}
		
		String returnCode = strArr[0] + "C" + strNextNum;
		
		System.out.println(returnCode + " returnCode");
		return returnCode;
	}

}
