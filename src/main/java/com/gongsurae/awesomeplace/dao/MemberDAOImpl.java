package com.gongsurae.awesomeplace.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gongsurae.awesomeplace.mapper.MemberMapper;
import com.gongsurae.awesomeplace.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	private SqlSessionTemplate template;
		
	public void setTemplate(SqlSessionTemplate template) {
		this.template = template;
	}
	
	@Override
	public MemberVO selectMemberByID(String mem_id) {
		MemberMapper mapper = template.getMapper(MemberMapper.class);
		return mapper.selectMemberById(mem_id);
	}

}
