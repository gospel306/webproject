package com.ssafy.edu.model.mapper;

import org.apache.ibatis.annotations.Param;

import com.ssafy.edu.model.vo.MemberVO;

public interface MemberMapper {

	public MemberVO selectMemberByID(@Param("MEM_ID") String mem_id);

}
