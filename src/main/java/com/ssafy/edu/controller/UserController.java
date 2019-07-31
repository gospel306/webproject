package com.ssafy.edu.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ssafy.edu.model.service.IUserService;
import com.ssafy.edu.model.vo.UserVo;

@RestController
public class UserController {
	
	@Autowired
	private IUserService user_service;
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	public void setUser_service(IUserService user_service) {
		this.user_service = user_service;
	}
	//회원가입
	@RequestMapping(value = "join.do",method = RequestMethod.POST)
	public String insertUser(@ModelAttribute("userVo") UserVo userVo,RedirectAttributes rttr) throws Exception{
		user_service.insertUser(userVo);
		return null;
	}
	//회원탈퇴
	@RequestMapping(value = "withdrawal.do",method = RequestMethod.GET)
	public String withdrawal(Model model, HttpSession session) throws Exception{
		String id = ((String) session.getAttribute("id"));
		user_service.deleteUser(id);
		return null;
	}
	//관리자: 회원정보들 열람
	@RequestMapping(value = "/getUserList",method = RequestMethod.GET)
	public String getUserList(Model model) throws Exception{
		logger.info("getUserList()....");
		model.addAttribute("userList",user_service.getUserList());
		return null;
	}
	@RequestMapping(value = "dropuser.do",method = RequestMethod.POST)
	public String dropuser(Model model,HttpSession session,String id) throws Exception{
		logger.info("dropuser...");
		String mtype = user_service.getMemberType(id);
		if(mtype.equals("관리자")) {
			user_service.deleteUser(id);
		}else {
			
		}
		return null;
	}
	@RequestMapping(value = "login.do",method = RequestMethod.GET)
	public String getUserById(Model model,HttpSession session,String id,String password)throws Exception{
		logger.info("login");
		
		return null;
	}
}
