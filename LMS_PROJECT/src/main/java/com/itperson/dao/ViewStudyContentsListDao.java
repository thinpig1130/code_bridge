package com.itperson.dao;

import java.util.ArrayList;

import com.itperson.dto.ViewStudyContentsList;

public interface ViewStudyContentsListDao {
	public ArrayList<ViewStudyContentsList> allList();
	public ArrayList<ViewStudyContentsList> partOfListByCourse(String coCode);
	public ArrayList<ViewStudyContentsList> partOfListByCategory(String caCode);
	public ArrayList<ViewStudyContentsList> partOfListBySubCategory(String subCode);

}