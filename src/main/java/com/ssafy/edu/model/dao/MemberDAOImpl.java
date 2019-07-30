package com.ssafy.edu.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssafy.edu.model.mapper.MemberMapper;
import com.ssafy.edu.model.vo.MemberVO;

@Repository
public class MemberDAOImpl implements IMemberDAO {
	@Autowired
	private SqlSessionTemplate template;
		
	public void setTemplate(SqlSessionTemplate template) {
		this.template = template;
	}
	
	@Override
	public MemberVO selectMemberByID(String mem_id) {
		MemberMapper mapper = template.getMapper(MemberMapper.class);
		return mapper.selectMemberByID(mem_id);
	}
}
