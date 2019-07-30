package com.ssafy.edu.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssafy.edu.model.vo.CommentVo;
import com.ssafy.edu.model.vo.ReviewVo;


@Repository
public class ReviewDAOImpl implements IReviewDAO{
	@Autowired
	private SqlSessionTemplate template;
	
	public void setTemplate(SqlSessionTemplate template) {
		this.template = template;
	}
	
	@Override
	public boolean insertReview(ReviewVo rv) {
		ReviewMapper mapper = template.getMapper(ReviewMapper.class);
		return mapper.insertReview(rv);
	}

	@Override
	public boolean deleteReview(int num) {
		ReviewMapper mapper = template.getMapper(ReviewMapper.class);
		return mapper.deleteReview(num);
	}

	@Override
	public boolean updateReview(ReviewVo rv) {
		ReviewMapper mapper = template.getMapper(ReviewMapper.class);
		return mapper.updateReview(rv);
	}

	@Override
	public List<ReviewVo> getReviewByTour(int contentId) {
		ReviewMapper mapper = template.getMapper(ReviewMapper.class);
		return mapper.getReviewByTour(contentId);
	}

	@Override
	public List<ReviewVo> getReviewByUser(String id) {
		ReviewMapper mapper = template.getMapper(ReviewMapper.class);
		return mapper.getReviewByUser(id);
	}

	@Override
	public boolean insertComment(CommentVo cm) {
		ReviewMapper mapper = template.getMapper(ReviewMapper.class);
		return mapper.insertComment(cm);
	}

	@Override
	public boolean deleteComment(int num) {
		ReviewMapper mapper = template.getMapper(ReviewMapper.class);
		return mapper.deleteComment(num);
	}

	@Override
	public List<CommentVo> getCommentByTour(int contentId) {
		ReviewMapper mapper = template.getMapper(ReviewMapper.class);
		return mapper.getCommentByTour(contentId);
	}

}
