package com.athensoft.content.ad.dao;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.athensoft.content.ad.entity.AdRequest;

@Repository
@Qualifier("adRequestDaoJdbcImpl")
public class AdRequestDaoJdbcImpl implements AdRequestDao {

	private final String TABLE = "ad_request";

	private NamedParameterJdbcTemplate jdbc;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}

	@Override
	public int create(AdRequest x) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("INSERT INTO ");
		sbf.append(TABLE);
		sbf.append(" ( ");
		sbf.append(" acct_name, ");
		sbf.append(" request_type, ");
		sbf.append(" request_name, ");
		sbf.append(" request_phone, ");
		sbf.append(" request_subject, ");
		sbf.append(" request_msg, ");
		sbf.append(" request_status, ");
		sbf.append(" request_date ");
		sbf.append(" ) VALUES (");
		sbf.append(" :acct_name,");
		sbf.append(" :request_type, ");
		sbf.append(" :request_name, ");
		sbf.append(" :request_phone, ");
		sbf.append(" :request_subject, ");
		sbf.append(" :request_msg, ");
		sbf.append(" :request_status, ");
		sbf.append(" :request_date ");
		sbf.append(" ) ");

		String sql = sbf.toString();

		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("acct_name", x.getAcctName());
		paramSource.addValue("request_type", x.getRequestType());
		paramSource.addValue("request_name", x.getRequestName());
		paramSource.addValue("request_phone", x.getRequestPhone());
		paramSource.addValue("request_subject", x.getRequestSubject());
		paramSource.addValue("request_msg", x.getRequestMessage());
		paramSource.addValue("request_status", x.getRequestStatus());
		paramSource.addValue("request_date", x.getRequestDate());

		int res = jdbc.update(sql, paramSource);
		return res;
	}

}
