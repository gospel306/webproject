package com.ssafy.edu.model.service;

import java.util.List;

import com.ssafy.edu.model.vo.CommentVo;
import com.ssafy.edu.model.vo.ReviewVo;



public interface IReviewService {
	//리뷰 정보 입력
	boolean insertReview(ReviewVo rv);
	//리뷰 정보 삭제
	boolean deleteReview(int num);
	//리뷰 정보 수정
	boolean updateReview(ReviewVo rv);
	//해당 관광지 리뷰 정보 반환
	List<ReviewVo> getReviewByTour(int contentId);
	//해당 사용자 리뷰 정보 반환
	List<ReviewVo> getReviewByUser(String id);
	//댓글 정보 입력
	boolean insertComment(CommentVo cm);
	//댓글 정보 삭제
	boolean deleteComment(int num);
	//해당 관광지 댓글 반환
	List<CommentVo> getCommentByTour(int contentId);
	//(해당 사용자 댓글 반환)
	//List<CommentVo> getCommentByUser(String id)
}
