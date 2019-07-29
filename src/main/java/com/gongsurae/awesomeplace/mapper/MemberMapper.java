package com.gongsurae.awesomeplace.mapper;

import org.apache.ibatis.annotations.Param;

import com.gongsurae.awesomeplace.vo.MemberVO;

public interface MemberMapper {
	
	// 회원 아이디로 회원 조회
	public MemberVO selectMemberById(@Param("MEM_ID")String mem_id);
}
