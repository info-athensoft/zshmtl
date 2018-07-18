package com.athensoft.content.event.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import com.athensoft.content.event.entity.EventTag;

@Component
@Qualifier("eventTagDaoJDBCImpl")
public class EventTagJDBCImpl implements EventTagDao {

	private NamedParameterJdbcTemplate jdbc;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}

	@Override
	public List<EventTag> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public EventTag findById(long tagId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<EventTag> findByEventUUID(String eventUUID) {
		String sql = "select * from event_tag where event_uuid=:event_uuid";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("event_uuid", eventUUID);
		List<EventTag> x = new ArrayList<EventTag>();
		try {
			x = jdbc.query(sql, paramSource, new EventTagRowMapper());
		} catch (EmptyResultDataAccessException ex) {
			x = null;
		}
		return x;
	}

	private static class EventTagRowMapper implements RowMapper<EventTag> {
		public EventTag mapRow(ResultSet rs, int rowNumber) throws SQLException {
			EventTag x = new EventTag();
			x.setTagId(rs.getLong("tag_id"));
			x.setEventUUID(rs.getString("event_uuid"));
			x.setTagName(rs.getString("tag_name"));
			x.setTagDesc(rs.getString("tag_desc"));

			return x;
		}
	}

}
