package com.ssafy.edu.model.service;

import java.security.MessageDigest;
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
		user.setPassword(LockPassword(user.getPassword()));
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
		if(user.getPassword() != null) {
			user.setPassword(LockPassword(user.getPassword()));
		}
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
		password = LockPassword(password);
		return dao.getUserById(id, password);
	}
	
	@Override
	public String getMemberType(String id) {
		return dao.getMemberType(id);
	}
	private String LockPassword(String password) {
		StringBuffer hexString = new StringBuffer();
		try {
			MessageDigest digest = MessageDigest.getInstance("SHA-256");
			byte[] hash = digest.digest(password.getBytes("UTF-8"));
			for(int i = 0;i < hash.length;i++) {
				String hex = Integer.toHexString(0xff&hash[i]);
				if(hex.length() == 1)
					hexString.append('0');
				hexString.append(hex);
			}
		}catch(Exception ex) {
			ex.getStackTrace();
		}
		return hexString.toString();
	}
}
