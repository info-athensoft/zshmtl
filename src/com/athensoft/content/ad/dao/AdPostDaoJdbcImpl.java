package com.athensoft.content.ad.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.athensoft.content.ad.entity.AdPost;

@Repository
@Qualifier("adPostDaoJdbcImpl")
public class AdPostDaoJdbcImpl implements AdPostDao {

	// private final String TABLE = "zshmtl.ad_post";
	private final String TABLE = "ad_post";

	private NamedParameterJdbcTemplate jdbc;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}

	@Override
	public List<AdPost> findAll() {
		StringBuffer sbf = new StringBuffer();
		sbf.append("SELECT ");
		sbf.append("global_id, ");
		sbf.append("ad_text, ");
		sbf.append("ad_image, ");
		sbf.append("ad_link, ");
		sbf.append("ad_url, ");
		sbf.append("ad_type, ");
		sbf.append("ad_status, ");
		sbf.append("ad_owner_id, ");
		sbf.append("acct_name, ");
		sbf.append("create_date, ");
		sbf.append("post_date, ");
		sbf.append("expire_date, ");
		sbf.append("modify_date ");
		sbf.append(" FROM " + TABLE);
		String sql = sbf.toString();

		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		return jdbc.query(sql, paramSource, new AdPostRowMapper());
	}

	@Override
	public AdPost findById(Long globalId) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("SELECT ");
		sbf.append("global_id, ");
		sbf.append("ad_text, ");
		sbf.append("ad_image, ");
		sbf.append("ad_link, ");
		sbf.append("ad_url, ");
		sbf.append("ad_type, ");
		sbf.append("ad_status, ");
		sbf.append("ad_owner_id, ");
		sbf.append("create_date, ");
		sbf.append("post_date, ");
		sbf.append("expire_date, ");
		sbf.append("modify_date ");
		sbf.append(" FROM " + TABLE);
		sbf.append(" WHERE global_id = :global_id");
		String sql = sbf.toString();

		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("global_id", globalId);
		AdPost obj = null;
		try {
			obj = jdbc.queryForObject(sql, paramSource, new AdPostRowMapper());
		} catch (Exception ex) {
			obj = null;
		}
		return obj;
	}

	@Override
	public List<AdPost> findByQuery(String queryString) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("SELECT ");
		sbf.append("global_id, ");
		sbf.append("ad_uuid, ");
		sbf.append("ad_title, ");
		sbf.append("ad_text, ");
		sbf.append("ad_image, ");
		sbf.append("ad_link, ");
		sbf.append("ad_url, ");
		sbf.append("ad_type, ");
		sbf.append("ad_status, ");
		sbf.append("ad_owner_id, ");
		sbf.append("acct_name, ");
		sbf.append("create_date, ");
		sbf.append("post_date, ");
		sbf.append("expire_date, ");
		sbf.append("modify_date ");
		sbf.append(" FROM " + TABLE); // FIXME //TODO
		sbf.append(" WHERE 1=1 ");
		sbf.append(queryString);
		String sql = sbf.toString();

		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		return jdbc.query(sql, paramSource, new AdPostRowMapper());
	}

	private static class AdPostRowMapper implements RowMapper<AdPost> {
		public AdPost mapRow(ResultSet rs, int rowNumber) throws SQLException {
			AdPost x = new AdPost();
			x.setGlobalId(rs.getLong("global_id"));
			x.setAdTitle(rs.getString("ad_uuid"));
			x.setAdTitle(rs.getString("ad_title"));
			x.setAdText(rs.getString("ad_text"));
			x.setAdLink(rs.getString("ad_link"));
			x.setAdImage(rs.getString("ad_image"));
			x.setAdUrl(rs.getString("ad_url"));
			x.setAdType(rs.getInt("ad_type"));
			// x.setAdOwnerId(rs.getLong("ad_owner_id"));
			x.setAdStatus(rs.getInt("ad_status"));
			x.setAcctName(rs.getString("acct_name"));

			Timestamp cd = rs.getTimestamp("create_date");
			x.setCreateDate(cd == null ? null : new Date(cd.getTime()));
			cd = null;

			Timestamp pd = rs.getTimestamp("post_date");
			x.setPostDate(pd == null ? null : new Date(pd.getTime()));
			pd = null;

			Timestamp ed = rs.getTimestamp("expire_date");
			x.setExpireDate(ed == null ? null : new Date(ed.getTime()));
			ed = null;

			Timestamp md = rs.getTimestamp("modify_date");
			x.setModifyDate(md == null ? null : new Date(md.getTime()));
			md = null;

			return x;
		}
	}

	private final String VIEW = "zshmtl.view_adpost_rcmd";

	@Override
	public List<AdPost> findByQueryFromView(String queryString) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("SELECT ");
		sbf.append("global_id, ");
		sbf.append("ad_uuid, ");
		sbf.append("ad_title, ");
		sbf.append("ad_text, ");
		sbf.append("ad_image, ");
		sbf.append("ad_link, ");
		sbf.append("ad_url, ");
		sbf.append("ad_type, ");
		sbf.append("ad_status, ");
		// sbf.append("ad_owner_id, ");
		sbf.append("acct_name, ");
		sbf.append("create_date, ");
		sbf.append("post_date, ");
		sbf.append("expire_date, ");
		sbf.append("modify_date ");
		sbf.append(" FROM ").append(VIEW);
		sbf.append(" WHERE 1=1 ");
		sbf.append(queryString);
		String sql = sbf.toString();

		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		return jdbc.query(sql, paramSource, new AdPostRowMapper());
	}

	@Override
	public List<AdPost> findByAcctName(String acctName) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("SELECT ");
		sbf.append("global_id, ");
		sbf.append("ad_uuid, ");
		sbf.append("ad_title, ");
		sbf.append("ad_text, ");
		sbf.append("ad_image, ");
		sbf.append("ad_link, ");
		sbf.append("ad_url, ");
		sbf.append("ad_type, ");
		sbf.append("ad_status, ");
		sbf.append("acct_name, ");
		// sbf.append("ad_owner_id, ");
		sbf.append("create_date, ");
		sbf.append("post_date, ");
		sbf.append("expire_date, ");
		sbf.append("modify_date ");
		sbf.append(" FROM " + TABLE);
		sbf.append(" WHERE acct_name = :acctName");
		String sql = sbf.toString();

		System.out.println(sql);

		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("acctName", acctName);
		List<AdPost> obj = new ArrayList<AdPost>();
		try {
			obj = jdbc.query(sql, paramSource, new AdPostRowMapper());
		} catch (Exception ex) {
			obj = null;
		}
		return obj;
	}
}
