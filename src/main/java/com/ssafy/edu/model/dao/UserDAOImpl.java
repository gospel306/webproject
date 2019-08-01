package com.ssafy.edu.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssafy.edu.model.mapper.UserMapper;
import com.ssafy.edu.model.vo.UserVo;

@Repository
public class UserDAOImpl implements IUserDAO{
	@Autowired
	private SqlSessionTemplate template;
	
	public void setTemplate(SqlSessionTemplate template) {
		this.template = template;
	}
	@Override
	public boolean insertUser(UserVo user) {
		UserMapper mapper=template.getMapper(UserMapper.class);
		return mapper.insertUser(user);
	}

	@Override
	public boolean deleteUser(String id) {
		UserMapper mapper=template.getMapper(UserMapper.class);
		return mapper.deleteUser(id);
	}

	@Override
	public List<UserVo> getUserList() {
		UserMapper mapper=template.getMapper(UserMapper.class);
		return mapper.getUserList();
	}

	@Override
	public boolean updateUser(com.ssafy.edu.model.vo.UserVo user) {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public com.ssafy.edu.model.vo.UserVo getUserById(String id, String password) {
		HashMap<String, String> info = new HashMap<String, String>();
		info.put("id", id);
		info.put("password",password);
		UserMapper mapper=template.getMapper(UserMapper.class);
		return mapper.getUserById(info);
	}
	@Override
	public String getMemberType(String id) {
		UserMapper mapper = template.getMapper(UserMapper.class);
		return mapper.getMemberType(id);
	}
}
