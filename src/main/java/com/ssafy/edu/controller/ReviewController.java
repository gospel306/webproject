package com.ssafy.edu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.ssafy.edu.model.service.IMemberService;
import com.ssafy.edu.model.vo.MemberVO;


@RestController
public class ReviewController {
	
	@Autowired
	private IMemberService mem_service;

	public void setMem_service(IMemberService mem_service) {
		this.mem_service = mem_service;
	}
	
	//DB에서 MemberVO에 해당하는 정보를 가져옴
	//이 URL은 axios에서 사용해야함
	@RequestMapping(value = "/member")
	public MemberVO selectMemberById() {
		String mem_id = "loucks";
		return mem_service.selectMemberById(mem_id);
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
