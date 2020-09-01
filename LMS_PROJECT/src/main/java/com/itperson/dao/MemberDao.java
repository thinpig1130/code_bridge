package com.itperson.dao;


import org.apache.ibatis.annotations.Param;

import com.itperson.dto.Member;

public interface MemberDao {
	public void memberJoin(Member vo);
	public String memberLogin(@Param("id") String id, @Param("pwd") String pw);
}