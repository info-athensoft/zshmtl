package com.athensoft.content.event.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.stereotype.Component;

import com.athensoft.base.dao.BaseDaoJdbcImpl;
import com.athensoft.content.event.entity.EventMedia;


@Component
@Qualifier("eventMediaDaoJdbcImpl")
public class EventMediaDaoJdbcImpl extends BaseDaoJdbcImpl implements EventMediaDao {

	private static final String TABLE = "event_media";
	
	@Override
	public List<EventMedia> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public EventMedia findById(long globalId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<EventMedia> findByEventUUID(String eventUUID) {
//		String sql = "select * from event_media where event_uuid=:event_uuid";
		
		StringBuffer sbf = new StringBuffer();
		sbf.append("SELECT * ");
		sbf.append(" FROM ");
		sbf.append(TABLE);
		sbf.append(" WHERE event_uuid=:event_uuid ");
		sbf.append(" ORDER BY is_primary_media DESC, sort_number DESC ");
		
		String sql = sbf.toString();
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("event_uuid", eventUUID);
		List<EventMedia> x = new ArrayList<EventMedia>();
		try{
			x = jdbc.query(sql, paramSource, new EventMediaRowMapper());
		}catch(EmptyResultDataAccessException ex){
			x = null;
		}
		return x;
	}

	
	private static class EventMediaRowMapper implements RowMapper<EventMedia>{
		public EventMedia mapRow(ResultSet rs, int rowNumber) throws SQLException {
			EventMedia x = new EventMedia();
			x.setMediaId(rs.getLong("media_id"));
			x.setEventUUID(rs.getString("event_uuid"));
			x.setMediaURL(rs.getString("media_url"));
			x.setMediaName(rs.getString("media_name"));
			x.setMediaLabel(rs.getString("media_label"));
			x.setSortNumber(rs.getInt("sort_number"));
				int intIsPrimaryMedia = rs.getInt("is_primary_media");
				boolean isPrimaryMedia = intIsPrimaryMedia==1?true:false;
			x.setPrimaryMedia(isPrimaryMedia);
			x.setMediaType(rs.getInt("media_type"));
			Timestamp ts = rs.getTimestamp("post_timestamp");			
			x.setPostTimestamp(ts==null?null:new Date(ts.getTime()));
            return x;
		}		
	}
}
