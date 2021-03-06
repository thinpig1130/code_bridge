package com.itperson.dao;


import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.itperson.dto.Member;

public interface MemberDao {
	public void memberJoin(Member vo);
	public String memberLogin(@Param("id") String id, @Param("pwd") String pw);
	public ArrayList<Member> searchMembers();
	public ArrayList<Member> searchManagers();
	public void registManager(String id);
	public void deleteManager(String id);
	public Member checkManager(String id);
}
