package com.ssafy.edu.model.dao;

import com.ssafy.edu.model.vo.MemberVO;

public interface IMemberDAO {
	
	public MemberVO selectMemberByID(String mem_id);
}
