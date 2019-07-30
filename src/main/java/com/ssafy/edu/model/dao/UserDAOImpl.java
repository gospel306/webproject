package com.ssafy.edu.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gongsurae.awesomeplace.mapper.UserMapper;
import com.gongsurae.awesomeplace.vo.UserVo;
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
	public boolean updateUser(UserVo user) {
		UserMapper mapper=template.getMapper(UserMapper.class);
		return mapper.updateUser(user);
	}

	@Override
	public List<UserVo> getUserList() {
		UserMapper mapper=template.getMapper(UserMapper.class);
		
		return mapper.getUserList();
	}

	@Override
	public UserVo getUserById(String id, String password) {
		UserMapper mapper=template.getMapper(UserMapper.class);
		
		return mapper.getUserById(id, password);
	}
	@Override
	public boolean insertUser(com.ssafy.edu.model.vo.UserVo user) {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public boolean updateUser(com.ssafy.edu.model.vo.UserVo user) {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public com.ssafy.edu.model.vo.UserVo getUserById(String id, String password) {
		// TODO Auto-generated method stub
		return null;
	}

}
