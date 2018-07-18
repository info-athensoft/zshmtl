package com.athensoft.content.event.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.athensoft.content.event.entity.Comment;
import com.athensoft.util.commons.PageBean;

@Repository
@Qualifier("commentDaoJdbcImpl")
public class CommentDaoJdbcImpl implements CommentDao {
	
	private static final String TABLE = "event_comment";
	
	private NamedParameterJdbcTemplate jdbc;
	
	@Autowired
	public void setDataSource(DataSource dataSource){
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}
	
	@Override
	public List<Comment> findAll() {
		String sql = "select global_id, target_id, commenter, commenter_id, avatar_url, post_content, comment_status, post_date from "+TABLE;
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		List<Comment> x = new ArrayList<Comment>();
		try{
			x = jdbc.query(sql, paramSource, new CommentRowMapper());
		}catch(EmptyResultDataAccessException ex){
			x = null;
		}
		return x;
	}

	@Override
	public List<Comment> findByTargetId(String targetId) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("SELECT ");
		sbf.append("global_id,");
		sbf.append("target_id,");
		sbf.append("commenter,");
		sbf.append("commenter_id,");
		sbf.append("avatar_url,");
		sbf.append("post_content,");
		sbf.append("comment_status,");
		sbf.append("post_date ");
		sbf.append(" FROM ").append(TABLE);
		sbf.append(" WHERE target_id=:target_id");
		
		String sql = sbf.toString();
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("target_id", targetId);
		
		List<Comment> x = new ArrayList<Comment>();
		try{
			x = jdbc.query(sql, paramSource, new CommentRowMapper());
		}catch(EmptyResultDataAccessException ex){
			x = null;
		}
		return x;
	}

	@Override
	//FIXME
	//TODO
	public List<Comment> findByAcctName(String acctName) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("SELECT ");
		sbf.append("global_id,");
		sbf.append("target_id,");
		sbf.append("commenter,");
		sbf.append("commenter_id,");
		sbf.append("avatar_url,");
		sbf.append("post_content,");
		sbf.append("comment_status,");
		sbf.append("post_date ");
		sbf.append(" FROM ").append(TABLE);
		sbf.append(" WHERE acct_name=:acct_name");
		
		String sql = sbf.toString();
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("acct_name", acctName);
		
		List<Comment> x = new ArrayList<Comment>();
		try{
			x = jdbc.query(sql, paramSource, new CommentRowMapper());
		}catch(EmptyResultDataAccessException ex){
			x = null;
		}
		return x;
	}

	@Override
	public List<Comment> findByQuery(String queryString) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Comment> findByPage(PageBean pb) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("SELECT ");
		sbf.append("global_id,");
		sbf.append("target_id,");
		sbf.append("commenter,");
		sbf.append("commenter_id,");
		sbf.append("avatar_url,");
		sbf.append("post_content,");
		sbf.append("comment_status,");
		sbf.append("post_date ");
		sbf.append(" FROM ").append(TABLE);
		sbf.append(" LIMIT :pageOffset, :pageSize");
		
		String sql = sbf.toString();
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("pageOffset", pb.getOffset());
		paramSource.addValue("pageSize", pb.getPageSize());
		
		List<Comment> x = new ArrayList<Comment>();
		try{
			x = jdbc.query(sql, paramSource, new CommentRowMapper());
		}catch(EmptyResultDataAccessException ex){
			x = null;
		}
		return x;
	}

	@Override
	public long countByTargetId(String targetId) {
		String sql = "select count(*) from "+TABLE+ " where target_id=:target_id";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("target_id", targetId);
		Long res = (Long)jdbc.queryForObject(sql,paramSource, Long.class);
		return res;
	}

	@Override
	public int create(Comment comment) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("INSERT INTO ");
		sbf.append(TABLE);
		sbf.append(" (");
		sbf.append(" target_id, commenter, commenter_id, avatar_url, post_content, comment_status, post_date ");
		sbf.append(" ) ");
		sbf.append(" VALUES( ");
		sbf.append(":target_id,");
		sbf.append(":commenter,");
		sbf.append(":commenter_id,");
		sbf.append(":avatar_url,");
		sbf.append(":post_content,");
		sbf.append(":comment_status,");
		sbf.append(":post_date");
		sbf.append(" ) ");
		
		String sql = sbf.toString();
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("target_id", comment.getTargetId());
		paramSource.addValue("commenter", comment.getCommenter());
		paramSource.addValue("commenter_id", comment.getCommenterId());
		paramSource.addValue("avatar_url", comment.getAvatarUrl());
		paramSource.addValue("post_content", comment.getPostContent());
		paramSource.addValue("comment_status", comment.getCommentStatus());
		paramSource.addValue("post_date", comment.getPostDate());
		
		int res = jdbc.update(sql, paramSource);
		return res;
	}

	@Override
	public int update(Comment comment) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Long commentId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteByTargetId(Long targetId) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	private static class CommentRowMapper implements RowMapper<Comment>{
		public Comment mapRow(ResultSet rs, int rowNumber) throws SQLException {
			Comment x = new Comment();
			x.setGlobalId(rs.getLong("global_id"));
			x.setTargetId(rs.getString("target_id"));
			x.setCommenter(rs.getString("commenter"));
			x.setCommenterId(rs.getLong("commenter_id"));
			x.setAvatarUrl(rs.getString("avatar_url"));
			x.setPostContent(rs.getString("post_content"));
			x.setCommentStatus(rs.getInt("comment_status"));
				Timestamp pd = rs.getTimestamp("post_date");			
			x.setPostDate(new Date(pd.getTime()));
            return x;
		}		
	}

}
