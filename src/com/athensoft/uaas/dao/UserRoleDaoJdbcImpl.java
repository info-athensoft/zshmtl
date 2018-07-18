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

import com.athensoft.uaas.entity.UserRole;

@Component
@Qualifier("userRoleDaoJdbcImpl")
public class UserRoleDaoJdbcImpl implements UserRoleDao {
	private final String TABLE = "UAAS_ASSO_USER_ROLE";

	private NamedParameterJdbcTemplate jdbc;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}

	@Override
	public ArrayList<Integer> getRoleIdListByAcctId(long acctId) {

		StringBuffer sbf = new StringBuffer();
		sbf.append("SELECT ");
		sbf.append("g_id, ");
		sbf.append("acct_id, ");
		sbf.append("role_id ");
		sbf.append(" FROM " + TABLE);
		sbf.append(" WHERE acct_id=:acct_id");
		String sql = sbf.toString();

		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("acct_id", acctId);
		List<UserRole> x = new ArrayList<UserRole>();
		try {
			x = jdbc.query(sql, paramSource, new UserRoleRowMapper());
		} catch (EmptyResultDataAccessException ex) {
			x = null;
		}

		ArrayList<Integer> roleIdList = new ArrayList<>();
		for (UserRole t : x) {
			roleIdList.add(t.getRoleId());
		}

		return roleIdList;
	}

	private static class UserRoleRowMapper implements RowMapper<UserRole> {
		public UserRole mapRow(ResultSet rs, int rowNumber) throws SQLException {
			UserRole x = new UserRole();
			x.setgId(rs.getInt("g_id"));
			x.setAcctId(rs.getLong("acct_id"));
			x.setRoleId(rs.getInt("role_id"));
			return x;
		}
	}

}
