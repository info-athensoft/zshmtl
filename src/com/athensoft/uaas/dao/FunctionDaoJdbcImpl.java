package com.athensoft.uaas.dao;

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

import com.athensoft.uaas.entity.Function;

@Component
@Qualifier("functionDaoJdbcImpl")
public class FunctionDaoJdbcImpl implements FunctionDao {

	private NamedParameterJdbcTemplate jdbc;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}

	@Override
	public List<Function> findAll() {
		String sql = "select * from UAAS_FUNCTION";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		List<Function> x = new ArrayList<Function>();
		try {
			x = jdbc.query(sql, paramSource, new FunctionRowMapper());
		} catch (EmptyResultDataAccessException ex) {
			x = null;
		}
		return x;
	}

	private static class FunctionRowMapper implements RowMapper<Function> {
		public Function mapRow(ResultSet rs, int rowNumber) throws SQLException {
			Function x = new Function();
			x.setFunctionId(rs.getInt("func_id"));
			x.setParentId(rs.getInt("parent_id"));
			x.setFunctionPackage(rs.getString("func_pck"));
			x.setFunctionName(rs.getString("func_name"));
			x.setFunctionCode(rs.getString("func_code"));
			x.setFunctionUrl(rs.getString("func_url"));
			x.setSeqNo(rs.getInt("seqno"));
			x.setFunctionStatus(rs.getInt("func_status"));
			return x;
		}
	}

}
