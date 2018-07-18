package com.athensoft.content.event.dao;

import java.util.List;

import com.athensoft.content.event.entity.Comment;
import com.athensoft.util.commons.PageBean;

public interface CommentDao {
	public List<Comment> findAll();

	public List<Comment> findByTargetId(String targetId);

	public List<Comment> findByQuery(String queryString);

	public List<Comment> findByPage(PageBean pb);

	public List<Comment> findByAcctName(String acctName);

	public long countByTargetId(String targetId);

	public int create(Comment comment);

	public int update(Comment comment);

	public int delete(Long commentId);

	public int deleteByTargetId(Long targetId);
}
