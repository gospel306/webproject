package com.ssafy.edu.model.service;

import com.ssafy.edu.model.vo.MemberVO;

public interface IMemberService {
	
	public MemberVO selectMemberByID(String mem_id);
}
