package com.ssafy.edu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ssafy.edu.model.service.IMemberService;
import com.ssafy.edu.model.vo.MemberVO;

@Controller
public class MemberController {
	
	
	@Autowired
	private IMemberService member_service;

	public void setMember_service(IMemberService member_service) {
		this.member_service = member_service;
	}
	
	// 메인 페이지
	@RequestMapping(value = "main.do", method = RequestMethod.GET)
	public String loginPage() {

		return "member/home";
	}
	
	@RequestMapping(value = "selectMember.do")
	public ModelAndView selectMemberByID() {
		ModelAndView mv = new ModelAndView();
		
		String mem_id = "loucks";
		MemberVO member = member_service.selectMemberByID(mem_id);
		
		mv.addObject("member",member);
		mv.setViewName("member/member");
		
		return mv;
	}
	
}
