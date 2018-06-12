package com.athensoft.uaas.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import com.athensoft.uaas.entity.ValidationCode;

@Repository
@Qualifier("validationCodeDaoJdbcImpl")
public class ValidationCodeDaoJdbcImpl implements ValidationCodeDao {

	private static final String TABLE = "uaas_valid_code";
	
	
	private NamedParameterJdbcTemplate jdbc;
	
	@Autowired
	public void setDataSource(DataSource dataSource){
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}
	@Override
	public ValidationCode findByAcctName(String acctName) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("SELECT ");
		sbf.append("gid, ");
		sbf.append("acct_name, ");
		sbf.append("valid_code, ");
		sbf.append("code_status, ");
		sbf.append("generate_date ");
		sbf.append(" FROM ").append(TABLE);
		sbf.append(" WHERE ");
		sbf.append(" acct_name=:acct_name");
		sbf.append(" code_status=:code_status");
		
		String sql = sbf.toString();
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("acct_name", acctName);
		paramSource.addValue("code_status", ValidationCode.VALID);
		ValidationCode x = new ValidationCode();
		try{
			x = jdbc.queryForObject(sql, paramSource, new ValidationCodeRowMapper());
		}catch(EmptyResultDataAccessException ex){
			x = null;
		}
		return x;
	}
	
	public void create(ValidationCode x){
		StringBuffer sbf = new StringBuffer();
		sbf.append("INSERT INTO ").append(TABLE);
		sbf.append("(");
		sbf.append("acct_name,");
		sbf.append("valid_code,");
		sbf.append("code_status,");
		sbf.append("generate_date");
		sbf.append(")");
		sbf.append("VALUE(");
		sbf.append(":acct_name,");
		sbf.append(":valid_code,");
		sbf.append(":code_status,");
		sbf.append(":generate_date");
		sbf.append(")");
		
		String sql = sbf.toString();
		
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("acct_name", x.getAcctName());
		paramSource.addValue("valid_code", x.getValidCode());
		paramSource.addValue("code_status", x.getCodeStatus());
		paramSource.addValue("generate_date", x.getGenerateDate());
		
		KeyHolder keyholder = new GeneratedKeyHolder();
		jdbc.update(sql, paramSource, keyholder);
		
		return ;
	}
	
	private static class ValidationCodeRowMapper implements RowMapper<ValidationCode>{
		public ValidationCode mapRow(ResultSet rs, int rowNumber) throws SQLException {
			ValidationCode x = new ValidationCode();
			x.setGid(rs.getLong("gid"));
			x.setAcctName(rs.getString("acct_name"));
			x.setValidCode(rs.getString("valid_code"));
			Timestamp ts = rs.getTimestamp("generate_date");			
			x.setGenerateDate(new Date(ts.getTime()));
            return x;
		}		
	}

}
