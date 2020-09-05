package com.itperson.dao;

import com.itperson.dto.StudyContents;


public interface StudyContentsDao extends Dao{
	public void registStudyContents(StudyContents vo);
	public StudyContents searchStudyContents(String stuCode);
}
