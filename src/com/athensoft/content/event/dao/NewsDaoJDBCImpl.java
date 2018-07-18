package com.athensoft.content.event.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import com.athensoft.content.event.entity.Event;
import com.athensoft.content.event.entity.News;
import com.athensoft.util.commons.PageBean;

@Component
@Qualifier("newsDaoJDBCImpl")
public class NewsDaoJDBCImpl implements NewsDao {
	private static final Logger logger = Logger.getLogger(EventReviewDaoJDBCImpl.class);
	
	private NamedParameterJdbcTemplate jdbc;
	
	@Autowired
	public void setDataSource(DataSource dataSource){
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}
	
	private static final String TABLE ="event_news";
	
	@Override
	public List<Event> findAll() {
		String sql = "select * from "+TABLE;
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		List<Event> x = new ArrayList<Event>();
		try{
			x = jdbc.query(sql, paramSource, new NewsRowMapper());
		}catch(EmptyResultDataAccessException ex){
			x = null;
		}
		return x;
	}

	@Override
	public Event findById(long globalId) {
		String sql = "select * from "+TABLE+" where global_id =:global_id";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("global_id", globalId);
		Event x = null;
		try{
			x = jdbc.queryForObject(sql, paramSource, new NewsRowMapper());
		}catch(EmptyResultDataAccessException ex){
			x = null;
		}
		return x;
	}

	@Override
	public Event findByEventUUID(String eventUUID) {
		String sql = "select * from "+TABLE+" where event_uuid =:event_uuid";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("event_uuid", eventUUID);
		Event x = null;
		try{
			x = jdbc.queryForObject(sql, paramSource, new NewsRowMapper());
		}catch(EmptyResultDataAccessException ex){
			x = null;
		}
		return x;
	}

	@Override
	public List<Event> findByQuery(String queryString) {
		String sql = "select * from "+TABLE+" "+queryString;
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		List<Event> x = new ArrayList<Event>();
		try{
			x = jdbc.query(sql, paramSource, new NewsRowMapper());
		}catch(EmptyResultDataAccessException ex){
			x = null;
		}
		return x;
	}

	@Override
	public List<Event> findByPage(PageBean pb) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("SELECT ");
		sbf.append("global_id,");
		sbf.append("event_uuid,");
		sbf.append("title,");
		sbf.append("author,");
		sbf.append("view_num,");
		sbf.append("desc_short,");
		sbf.append("desc_long,");
		sbf.append("post_datetime, ");
		sbf.append("event_class, ");
		sbf.append("event_status ");
		sbf.append(" FROM ").append(TABLE);	
		sbf.append(" WHERE event_status = 1");//only show approved news
		sbf.append(" ORDER BY post_datetime DESC, global_id DESC");
		sbf.append(" LIMIT :pageOffset, :pageSize");
		
		String sql = sbf.toString();
		logger.info(sql);
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("pageOffset", pb.getOffset());
		paramSource.addValue("pageSize", pb.getPageSize());
		
		List<Event> x = new ArrayList<Event>();
		try{
			x = jdbc.query(sql, paramSource, new NewsRowMapper());
		}catch(EmptyResultDataAccessException ex){
			x = null;
		}
		return x;
	}

	@Override
	public long count() {
		String sql = "select count(*) from "+TABLE+ " ";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		Long res = (Long)jdbc.queryForObject(sql,paramSource, Long.class);
		return res;
	}

	@Override
	public long countByStatus(int status) {
		String sql = "select count(*) from "+TABLE+ " where event_status=:event_status";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("event_status", status);
		Long res = (Long)jdbc.queryForObject(sql,paramSource, Long.class);
		return res;
	}

	@Override
	public void create() {
		// TODO Auto-generated method stub

	}

	@Override
	public void update() {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete() {
		// TODO Auto-generated method stub

	}
	
	private static class NewsRowMapper implements RowMapper<Event>{
		public Event mapRow(ResultSet rs, int rowNumber) throws SQLException {
			Event x = new News();
			x.setGlobalId(rs.getLong("global_id"));
			x.setEventUUID(rs.getString("event_uuid"));
			x.setTitle(rs.getString("title"));
			x.setAuthor(rs.getString("author"));
			x.setViewNum(rs.getInt("view_num"));
			x.setDescShort(rs.getString("desc_short"));
			x.setDescLong(rs.getString("desc_long"));
			x.setEventClass(rs.getString("event_class"));
			x.setEventStatus(rs.getInt("event_status"));
			
			Timestamp ts = rs.getTimestamp("post_datetime");			
			x.setPostDatetime(ts==null?null:new Date(ts.getTime()));
			
            return x;
		}		
	}

}
