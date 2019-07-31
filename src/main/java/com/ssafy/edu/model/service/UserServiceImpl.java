package com.ssafy.edu.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ssafy.edu.model.dao.IUserDAO;
import com.ssafy.edu.model.vo.UserVo;
@Component
public class UserServiceImpl implements IUserService{
	@Autowired
	private IUserDAO dao;

	public void setDao(IUserDAO dao) {
		this.dao = dao;
	}
	@Override
	public boolean insertUser(UserVo user) {
		return dao.insertUser(user);
	}

	@Override
	public boolean deleteUser(String id) {
		// TODO Auto-generated method stub
		return dao.deleteUser(id);
	}

	@Override
	public boolean updateUser(UserVo user) {
		// TODO Auto-generated method stub
		return dao.updateUser(user);
	}

	@Override
	public List<UserVo> getUserList() {
		// TODO Auto-generated method stub
		return dao.getUserList();
	}

	@Override
	public UserVo getUserById(String id, String password) {
		// TODO Auto-generated method stub
		return dao.getUserById(id, password);
	}
	
	@Override
	public String getMemberType(String id) {
		return dao.getMemberType(id);
	}

}
