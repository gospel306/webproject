package com.gongsurae.awesomeplace.dao;

import com.gongsurae.awesomeplace.vo.MemberVO;

public interface MemberDAO {

	//회원 아이디로 회원 조회
	public MemberVO selectMemberByID(String mem_id);
	
}
