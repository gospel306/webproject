package com.ssafy.edu.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ssafy.edu.model.dao.IMemberDAO;
import com.ssafy.edu.model.vo.MemberVO;

@Component
public class MemberServiceImpl implements IMemberService {
	
	@Autowired
	private IMemberDAO dao;

	public void setDao(IMemberDAO dao) {
		this.dao = dao;
	}

	@Override
	public MemberVO selectMemberByID(String mem_id) {
		return dao.selectMemberByID(mem_id);
	}

}
