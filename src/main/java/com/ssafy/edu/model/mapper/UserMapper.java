package com.ssafy.edu.model.mapper;

import java.util.HashMap;
import java.util.List;

import com.ssafy.edu.model.vo.UserVo;


public interface UserMapper {
	
	//회원가입
	boolean insertUser(UserVo user);
	//회원탈퇴
	boolean deleteUser(String id);
	//회원정보 수정
	boolean updateUser(UserVo user);
	//회원정보 전체 반환
	List<UserVo> getUserList();
	//ID,PW로 회원정보 반환
	UserVo getUserById(HashMap<String,String> info);
	
	String getMemberType(String id);
}
