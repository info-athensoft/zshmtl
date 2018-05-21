package com.athensoft.site.support.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.athensoft.site.support.entity.SubscribeEmail;

@Repository
@Qualifier("subscribeEmailDaoJdbcImpl")
public class SubscribeEmailDaoJdbcImpl implements SubscribeEmailDao {
	
private final static Logger logger = Logger.getLogger(SubscribeEmailDaoJdbcImpl.class);
	
	private final String TABLE = "CRM_SUBSCRIBE_EMAIL";
	
	private NamedParameterJdbcTemplate jdbc;

	/**
	 * inject DataSource object
	 * @param dataSource
	 */
	@Autowired
	public void setDataSource(DataSource dataSource){
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}
	
	@Override
	public List<SubscribeEmail> findAll() {
		StringBuffer sbf = new StringBuffer();
		sbf.append("SELECT ");
		sbf.append("global_id, ");
		sbf.append("email, ");
		sbf.append("create_date, ");
		sbf.append("email_status ");	
		sbf.append(" FROM "+TABLE);
		String sql = sbf.toString();
		logger.info(sql);
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		return jdbc.query(sql,paramSource,new SubscribeEmailRowMapper());
	}

	@Override
	public int create(SubscribeEmail x) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("INSERT INTO ").append(TABLE).append("(");
		sbf.append("email,");
		sbf.append("create_date,");
		sbf.append("email_status) ");
		
		sbf.append("VALUES(");
		sbf.append(":email,");
		sbf.append(":create_date,");
		sbf.append(":email_status) ");
		
		String sql = sbf.toString();
		logger.info(sql);
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("email", x.getEmail());
		paramSource.addValue("create_date", x.getCreateDate());
		paramSource.addValue("email_status", x.getEmailStatus());

		
		return jdbc.update(sql,paramSource);
	}
	
	private static class SubscribeEmailRowMapper implements RowMapper<SubscribeEmail>{
		public SubscribeEmail mapRow(ResultSet rs, int rowNumber) throws SQLException {
			SubscribeEmail x = new SubscribeEmail();
			x.setGlobalId(rs.getLong("global_id"));
			x.setEmail(rs.getString("email"));
			x.setEmailStatus(rs.getInt("email_status"));
			
			Timestamp cd = rs.getTimestamp("create_date");
			if (cd != null) {	x.setCreateDate(new Date(cd.getTime())); }
			
	        return x;
		}		
	}

}
