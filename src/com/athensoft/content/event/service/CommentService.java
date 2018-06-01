package com.athensoft.content.event.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.athensoft.content.event.dao.CommentDao;
import com.athensoft.content.event.entity.Comment;

@Service
public class CommentService {
	private CommentDao commentDao;
	
	@Autowired
	@Qualifier("commentDaoJdbcImpl")
	public void setCommentDao(CommentDao commentDao){
		this.commentDao = commentDao;
	}
	
	public void submitComment(Comment comment){
		commentDao.create(comment);
		
	}
	
	public long getCommentCountByTargetId(String targetId){
		return commentDao.countByTargetId(targetId);
	}
	
	public List<Comment> getCommentByTargetId(String targetId){
		return commentDao.findByTargetId(targetId);
	}
	
	
}
