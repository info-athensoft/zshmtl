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

import com.athensoft.uaas.entity.Role;

@Component
@Qualifier("roleDaoJdbcImpl")
public class RoleDaoJdbcImpl implements RoleDao {

	private NamedParameterJdbcTemplate jdbc;
	
	@Autowired
	public void setDataSource(DataSource dataSource){
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}
	
	@Override
	public List<Role> findAll() {
		String sql = "select * from UAAS_ROLE";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		List<Role> x = new ArrayList<Role>();
		try{
			x = jdbc.query(sql, paramSource, new RoleRowMapper());
		}catch(EmptyResultDataAccessException ex){
			x = null;
		}
		return x;
	}
	
	private static class RoleRowMapper implements RowMapper<Role>{
		public Role mapRow(ResultSet rs, int rowNumber) throws SQLException {
			Role x = new Role();
			x.setRoleId(rs.getInt("role_id"));
			x.setRoleCode(rs.getString("role_code"));
			x.setRoleType(rs.getInt("role_type"));
			x.setRoleName(rs.getString("role_name"));
			x.setRoleLevel(rs.getInt("role_level"));
			x.setRoleStatus(rs.getInt("role_status"));
            return x;
		}		
	}

}
