package com.ssafy.edu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.ssafy.edu.model.service.IUserService;
import com.ssafy.edu.model.vo.UserVo;

@RestController
public class UserController {
	
	@Autowired
	private IUserService user_service;

	public void setUser_service(IUserService user_service) {
		this.user_service = user_service;
	}
	
	//DB에서 MemberVO에 해당하는 정보를 가져옴
	//이 URL은 axios에서 사용해야함

	@RequestMapping(value = "/member")
	public UserVo getUserById(String id,String password) {
		//String id = "test";
		return user_service.getUserById(id, password);
	}
	
	//html을 정해주는 method
	//ex)http://localhost:9876/awesomeplace/allmember
	@RequestMapping(value = "/allmember")
	public ModelAndView selectMemberByIdView() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member");
		return mv;
	}
	
	
}
