package com.ssafy.edu.model.service;

import java.util.List;

import com.ssafy.edu.model.vo.CommentVo;
import com.ssafy.edu.model.vo.ReviewVo;


public class ReviewServiceImpl implements IReviewService{

	@Override
	public boolean insertReview(ReviewVo rv) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteReview(int num) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateReview(ReviewVo rv) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<ReviewVo> getReviewByTour(int contentId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ReviewVo> getReviewByUser(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insertComment(CommentVo cm) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteComment(int num) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<CommentVo> getCommentByTour(int contentId) {
		// TODO Auto-generated method stub
		return null;
	}

}
