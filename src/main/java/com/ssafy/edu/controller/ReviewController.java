package com.ssafy.edu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ssafy.edu.model.service.IReviewService;
import com.ssafy.edu.model.vo.CommentVo;
import com.ssafy.edu.model.vo.ReviewVo;



@RestController
public class ReviewController {
	@Autowired
	private IReviewService review_service;
	
	@RequestMapping(value = "insertrv.do",method = RequestMethod.POST)
	public String insertReview(@ModelAttribute("reviewVo") ReviewVo reviewVo,RedirectAttributes rttr) throws Exception{
		review_service.insertReview(reviewVo);
		return null;
	}
	@RequestMapping(value = "deleterv.do",method = RequestMethod.GET)
	public String deleteReview(Model model,int num) {
		review_service.deleteReview(num);
		return null;
	}
	@RequestMapping(value = "updaterv.do",method = RequestMethod.POST)
	public String updateReview(@ModelAttribute("reviewVo")ReviewVo reviewVo) {
		review_service.updateReview(reviewVo);
		return null;
	}
	@RequestMapping(value = "getReviewByTour.do",method = RequestMethod.GET)
	public String getReviewByTour(Model model,int contentId) {
		review_service.getReviewByTour(contentId);
		return null;
	}
	@RequestMapping(value = "getReviewByUser.do",method = RequestMethod.GET)
	public String getReviewByUser(Model model,String id) {
		review_service.getReviewByUser(id);
		return null;
	}
	@RequestMapping(value = "insertComment.do",method = RequestMethod.POST)
	public String insertComment(Model model,CommentVo cm) {
		review_service.insertComment(cm);
		return null;
	}
	@RequestMapping(value = "deleteComment.do",method = RequestMethod.GET)
	public String deleteComment(Model model,int num) {
		review_service.deleteComment(num);
		return null;
	}
	@RequestMapping(value = "getCommentByTour.do",method = RequestMethod.GET)
	public String getCommentByTour(Model model,int contentId) {
		review_service.getCommentByTour(contentId);
		return null;
	}
}
