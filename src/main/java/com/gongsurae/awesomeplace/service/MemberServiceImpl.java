package com.gongsurae.awesomeplace.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.gongsurae.awesomeplace.dao.MemberDAO;
import com.gongsurae.awesomeplace.vo.MemberVO;

@Component
public class MemberServiceImpl implements MemberService {
	
	
	@Autowired
	private MemberDAO dao;

	public void setDao(MemberDAO dao) {
		this.dao = dao;
	}


	@Override
	public MemberVO selectMemberById(String mem_id) {
		return dao.selectMemberByID(mem_id);
	}

}
