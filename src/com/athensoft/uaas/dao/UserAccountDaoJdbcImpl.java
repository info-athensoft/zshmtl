package com.athensoft.uaas.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
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
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Component;

import com.athensoft.uaas.entity.UserAccount;
import com.athensoft.uaas.entity.UserAccountStatus;
import com.athensoft.uaas.model.UserCredentialModel;

@Component
@Qualifier("userAccountDaoJdbcImpl")
public class UserAccountDaoJdbcImpl implements UserAccountDao {

	private static final Logger logger = Logger.getLogger(UserAccountDaoJdbcImpl.class);

	// private static final String TABLE = "UAAS_USER_ACCOUNT";
	private static final String TABLE = "uaas_user_account";

	private NamedParameterJdbcTemplate jdbc;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}

	@Override
	public List<UserAccount> find() {
		String sql = "select * from " + TABLE;
		return jdbc.query(sql, new UserAccountRowMapper());
	}

	@Override
	public UserAccount findById(long acctId) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("SELECT * ");
		sbf.append(" FROM ").append(TABLE);
		sbf.append(" WHERE 1 = 1");
		sbf.append(" AND acct_id =:acct_Id");

		String sql = sbf.toString();
		logger.info(sql);

		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("acct_Id", acctId);
		UserAccount ua = null;
		try {
			ua = jdbc.queryForObject(sql, paramSource, new UserAccountRowMapper());
		} catch (EmptyResultDataAccessException ex) {
			ua = null;
		}
		return ua;
	}

	@Override
	public UserAccount findByName(String acctName) {

		StringBuffer sbf = new StringBuffer();
		sbf.append("SELECT * ");
		sbf.append(" FROM ").append(TABLE);
		sbf.append(" WHERE 1 = 1");
		sbf.append(" AND acct_name =:acct_name");

		String sql = sbf.toString();
		logger.info(sql);

		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("acct_name", acctName);
		UserAccount ua = null;
		try {
			ua = jdbc.queryForObject(sql, paramSource, new UserAccountRowMapper());
		} catch (EmptyResultDataAccessException ex) {
			ua = null;
		}
		return ua;
	}

	@Override
	public boolean isUserAccountExist(UserAccount userAccount) {
		String acctName = userAccount.getAcctName();
		UserAccount ua = this.findByName(acctName);
		if (ua == null) {
			return false;
		}
		return true;
	}

	@Override
	public long create(UserAccount userAccount) {

		StringBuffer sbf = new StringBuffer();
		sbf.append("INSERT INTO ").append(TABLE).append("(");
		sbf.append("acct_name,");
		sbf.append("password,");
		sbf.append("primary_email,");
		sbf.append("secure_email,");
		sbf.append("create_date,");
		sbf.append("last_mod_date,");
		sbf.append("acct_status");
		sbf.append(") ");
		sbf.append("VALUES(");
		sbf.append(":acct_name,");
		sbf.append(":password,");
		sbf.append(":primary_email,");
		sbf.append(":secure_email,");
		sbf.append(":create_date,");
		sbf.append(":last_mod_date,");
		sbf.append(":acct_status");
		sbf.append(")");

		String sql = sbf.toString();
		logger.info(sql);

		final Date dateCreate = new Date(); // FIXME
		final Date dateLastModified = dateCreate; // FIXME

		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("acct_name", userAccount.getAcctName());
		paramSource.addValue("password", userAccount.getPassword());
		paramSource.addValue("primary_email", userAccount.getPrimaryEmail());
		paramSource.addValue("secure_email", userAccount.getSecureEmail());
		paramSource.addValue("create_date", new java.sql.Timestamp(dateCreate.getTime()));
		paramSource.addValue("last_mod_date", new java.sql.Timestamp(dateLastModified.getTime()));
		paramSource.addValue("acct_status", UserAccountStatus.REGISERTED);

		KeyHolder keyholder = new GeneratedKeyHolder();
		jdbc.update(sql, paramSource, keyholder);
		return (long) keyholder.getKey();
	}

	@Override
	public void update(UserAccount userAccount) {

		StringBuffer sbf = new StringBuffer();
		sbf.append("UPDATE " + TABLE);
		sbf.append(" SET ");
		sbf.append("acct_name=:acct_name,  ");
		sbf.append("password=:password,  ");
		sbf.append("primary_email=:primary_email,  ");
		sbf.append("secure_email=:secure_email,  ");
		sbf.append("last_mod_date=:last_mod_date,  ");
		sbf.append("acct_status=:acct_status ");
		sbf.append(" WHERE 1=1 ");
		sbf.append(" AND acct_id=:acct_id");
		String sql = sbf.toString();

		final Date dateLastModified = new Date(); // FIXME

		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("acct_name", userAccount.getAcctName());
		paramSource.addValue("password", userAccount.getPassword());
		paramSource.addValue("primary_email", userAccount.getPrimaryEmail());
		paramSource.addValue("secure_email", userAccount.getSecureEmail());
		// paramSource.addValue("create_date",new
		// java.sql.Timestamp(dateCreate.getTime()));
		paramSource.addValue("last_mod_date", new java.sql.Timestamp(dateLastModified.getTime()));
		paramSource.addValue("acct_status", userAccount.getAcctStatus());
		paramSource.addValue("acct_id", userAccount.getAcctId());

		jdbc.update(sql, paramSource);

	}

	public void update(UserCredentialModel userCredentialModel) {

		StringBuffer sbf = new StringBuffer();
		sbf.append("UPDATE " + TABLE);
		sbf.append(" SET ");
		sbf.append("password=:password,  ");
		sbf.append("last_mod_date=:last_mod_date  ");
		sbf.append(" WHERE 1=1 ");
		sbf.append(" AND acct_name=:acct_name");
		String sql = sbf.toString();

		final Date dateLastModified = new Date(); // FIXME

		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("acct_name", userCredentialModel.getAcctName());
		paramSource.addValue("password", userCredentialModel.getPassword());
		paramSource.addValue("last_mod_date", new java.sql.Timestamp(dateLastModified.getTime()));

		jdbc.update(sql, paramSource);

	}

	@Override
	public void delete(long acctId) {
		String sql = "delete from " + TABLE + " where acct_id =:acct_id";

		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("acct_id", acctId);
		jdbc.update(sql, paramSource);
	}

	@Override
	public UserAccount querySignin(UserAccount userAccount) {
		String sql = "select * from " + TABLE + " where acct_name =:acct_name and password=:password";
		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("acct_name", userAccount.getAcctName());
		paramSource.addValue("password", userAccount.getPassword());
		UserAccount ua = null;
		try {
			ua = jdbc.queryForObject(sql, paramSource, new UserAccountRowMapper());
		} catch (EmptyResultDataAccessException ex) {
			ua = null;
		}
		return ua;
	}

	@Override
	public void activateAccount(UserAccount userAccount) {

		StringBuffer sbf = new StringBuffer();
		sbf.append("UPDATE " + TABLE);
		sbf.append(" SET ");
		sbf.append(" last_mod_date=:last_mod_date,");
		sbf.append(" acct_status=:acct_status ");
		sbf.append(" WHERE 1=1 ");
		sbf.append(" AND acct_id=:acct_id");
		String sql = sbf.toString();

		final Date dateLastModified = new Date(); // FIXME

		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("last_mod_date", new java.sql.Timestamp(dateLastModified.getTime()));
		paramSource.addValue("acct_status", userAccount.getAcctStatus());
		paramSource.addValue("acct_id", userAccount.getAcctId());

		jdbc.update(sql, paramSource);

	}

	private static class UserAccountRowMapper implements RowMapper<UserAccount> {
		public UserAccount mapRow(ResultSet rs, int rowNumber) throws SQLException {
			UserAccount x = new UserAccount();
			x.setAcctId(rs.getLong("acct_id"));
			x.setAcctName(rs.getString("acct_name"));
			x.setPassword(rs.getString("password"));
			x.setPrimaryEmail(rs.getString("primary_email"));
			x.setSecureEmail(rs.getString("secure_email"));
			x.setAcctStatus(rs.getInt("acct_status"));
			Timestamp cd = rs.getTimestamp("create_date");
			x.setCreateDate(cd == null ? null : new Date(cd.getTime()));
			cd = null;
			Timestamp lmd = rs.getTimestamp("last_mod_date");
			x.setLastModDate(lmd == null ? null : new Date(lmd.getTime()));
			lmd = null;

			return x;
		}
	}

}
