package com.itperson.dao;

import org.apache.ibatis.annotations.Param;

public interface StudyLogDao {
	public void registStudyLog(@Param("stuCode") String stuCode, @Param("memId") String memId,  @Param("completed") String completed);
}
