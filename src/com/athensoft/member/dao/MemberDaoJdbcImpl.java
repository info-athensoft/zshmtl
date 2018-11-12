package com.athensoft.member.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;


import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.stereotype.Repository;

import com.athensoft.base.dao.BaseDaoJdbcImpl;
import com.athensoft.member.entity.Member;

@Repository
@Qualifier("memberDaoJdbcImpl")
public class MemberDaoJdbcImpl extends BaseDaoJdbcImpl implements MemberDao {

	private final String TABLE = "member_profile";

	@Override
	public List<Member> findAll() {
		StringBuffer sbf = new StringBuffer();
		sbf.append("SELECT ");
		sbf.append("global_id, ");
		sbf.append("acct_name, ");
		sbf.append("member_code, ");
		sbf.append("member_id, ");
		sbf.append("name1, ");
		sbf.append("name2, ");
		sbf.append("gender, ");
		sbf.append("nationality, ");
		sbf.append("phone1, ");
		sbf.append("phone2, ");
		sbf.append("wechat, ");
		sbf.append("email, ");
		sbf.append("degree, ");
		sbf.append("occupation, ");
		sbf.append("dob, ");
		sbf.append("pob_province, ");
		sbf.append("pob_city, ");
		sbf.append("home_addr, ");
		sbf.append("postal_code, ");
		sbf.append("hobbies, ");
		sbf.append("member_status, ");
		sbf.append("member_level, ");
		sbf.append("member_apply_date, ");
		sbf.append("member_approved_date, ");
		sbf.append("member_active_date, ");
		sbf.append("member_inactive_date, ");
		sbf.append("member_pending_date, ");
		sbf.append("member_banned_date ");
		sbf.append(" FROM " + TABLE);
		sbf.append(" ORDER BY member_apply_date DESC");
		String sql = sbf.toString();

		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		return jdbc.query(sql, paramSource, new MemberRowMapper());

	}

	@Override
	public Member findByAcctName(String acctName) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("SELECT ");
		sbf.append("global_id, ");
		sbf.append("acct_name, ");
		sbf.append("member_code, ");
		sbf.append("member_id, ");
		sbf.append("name1, ");
		sbf.append("name2, ");
		sbf.append("gender, ");
		sbf.append("nationality, ");
		sbf.append("phone1, ");
		sbf.append("phone2, ");
		sbf.append("wechat, ");
		sbf.append("email, ");
		sbf.append("degree, ");
		sbf.append("occupation, ");
		sbf.append("dob, ");
		sbf.append("pob_province, ");
		sbf.append("pob_city, ");
		sbf.append("home_addr, ");
		sbf.append("postal_code, ");
		sbf.append("hobbies, ");
		sbf.append("member_status, ");
		sbf.append("member_level, ");
		sbf.append("member_apply_date, ");
		sbf.append("member_approved_date, ");
		sbf.append("member_active_date, ");
		sbf.append("member_inactive_date, ");
		sbf.append("member_pending_date, ");
		sbf.append("member_banned_date ");
		sbf.append(" FROM " + TABLE);
		sbf.append(" WHERE acct_name=:acctName");
		String sql = sbf.toString();

		System.out.println("findByAcctName SQL = " + sql);

		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("acctName", acctName);
		Member x = new Member();

		try {
			x = jdbc.queryForObject(sql, paramSource, new MemberRowMapper());
		} catch (EmptyResultDataAccessException ex) {
			x = null;
		}
		return x;
	}

	@Override
	public int create(Member member) {
		StringBuffer sbf = new StringBuffer();
		sbf.append("INSERT INTO ").append(TABLE);
		sbf.append(" ( ");
		sbf.append(" acct_name, ");
		sbf.append(" name1, ");
		sbf.append(" name2, ");
		sbf.append(" gender, ");
		sbf.append(" nationality, ");
		sbf.append(" phone1, ");
		sbf.append(" phone2, ");
		sbf.append(" wechat, ");
		sbf.append(" email, ");
		sbf.append(" degree, ");
		sbf.append(" occupation, ");
		sbf.append(" dob, ");
		sbf.append(" pob_province, ");
		sbf.append(" pob_city, ");
		sbf.append(" home_addr, ");
		sbf.append(" postal_code, ");
		sbf.append(" hobbies, ");
		sbf.append(" member_status, ");
		sbf.append(" member_level, ");
		sbf.append(" member_apply_date ");
		sbf.append(" ) VALUES(");
		sbf.append(" :acct_name, ");
		sbf.append(" :name1, ");
		sbf.append(" :name2, ");
		sbf.append(" :gender, ");
		sbf.append(" :nationality, ");
		sbf.append(" :phone1, ");
		sbf.append(" :phone2, ");
		sbf.append(" :wechat, ");
		sbf.append(" :email, ");
		sbf.append(" :degree, ");
		sbf.append(" :occupation, ");
		sbf.append(" :dob, ");
		sbf.append(" :pob_province, ");
		sbf.append(" :pob_city, ");
		sbf.append(" :home_addr, ");
		sbf.append(" :postal_code, ");
		sbf.append(" :hobbies, ");
		sbf.append(" :member_status, ");
		sbf.append(" :member_level, ");
		sbf.append(" :member_apply_date ");
		sbf.append(" )");
		String sql = sbf.toString();

		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("acct_name", member.getAcctName());
		paramSource.addValue("name1", member.getName1());
		paramSource.addValue("name2", member.getName2());
		paramSource.addValue("gender", member.getGender());
		paramSource.addValue("nationality", member.getNationality());
		paramSource.addValue("phone1", member.getPhone1());
		paramSource.addValue("phone2", member.getPhone2());
		paramSource.addValue("wechat", member.getWechat());
		paramSource.addValue("email", member.getEmail());
		paramSource.addValue("degree", member.getDegree());
		paramSource.addValue("occupation", member.getOccupation());
		paramSource.addValue("dob", member.getDob());
		paramSource.addValue("pob_province", member.getPobProvince());
		paramSource.addValue("pob_city", member.getPobCity());
		paramSource.addValue("home_addr", member.getHomeAddress());
		paramSource.addValue("postal_code", member.getPostalcode());
		paramSource.addValue("hobbies", member.getHobbies());
		paramSource.addValue("member_status", member.getMemberStatus());
		paramSource.addValue("member_level", member.getMemberLevel());
		paramSource.addValue("member_apply_date", member.getMemberApplyDate());

		int x = 0;
		try {
			x = jdbc.update(sql, paramSource);
		} catch (EmptyResultDataAccessException ex) {
			ex.printStackTrace();
		}

		return x;
	}

	@Override
	public int update(Member member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Member member) {
		// TODO Auto-generated method stub
		return 0;
	}

	private static class MemberRowMapper implements RowMapper<Member> {
		public Member mapRow(ResultSet rs, int rowNumber) throws SQLException {
			Member x = new Member();
			x.setGlobalId(rs.getLong("global_id"));
			x.setMemberCode(rs.getString("member_code"));
			x.setMemberId(rs.getLong("member_id"));
			x.setAcctName(rs.getString("acct_name"));
			x.setName1(rs.getString("name1"));
			x.setName2(rs.getString("name2"));
			x.setGender(rs.getInt("gender"));
			x.setNationality(rs.getString("nationality"));
			x.setPhone1(rs.getString("phone1"));
			x.setPhone2(rs.getString("phone2"));
			x.setWechat(rs.getString("wechat"));
			x.setEmail(rs.getString("email"));
			x.setDegree(rs.getString("degree"));
			x.setOccupation(rs.getString("occupation"));
			x.setDob(rs.getString("dob"));
			x.setPobProvince(rs.getString("pob_province"));
			x.setPobCity(rs.getString("pob_city"));
			x.setHomeAddress(rs.getString("home_addr"));
			x.setPostalcode(rs.getString("postal_code"));
			x.setHobbies(rs.getString("hobbies"));
			x.setMemberStatus(rs.getInt("member_status"));
			x.setMemberLevel(rs.getInt("member_level"));

			Timestamp mad = rs.getTimestamp("member_apply_date");
			x.setMemberApplyDate(mad == null ? null : new Date(mad.getTime()));
			mad = null;

			Timestamp mpd = rs.getTimestamp("member_approved_date");
			x.setMemberApprovedDate(mpd == null ? null : new Date(mpd.getTime()));
			mpd = null;

			Timestamp mcd = rs.getTimestamp("member_active_date");
			x.setMemberActiveDate(mcd == null ? null : new Date(mcd.getTime()));
			mcd = null;

			Timestamp mid = rs.getTimestamp("member_inactive_date");
			x.setMemberInactiveDate(mid == null ? null : new Date(mid.getTime()));
			mid = null;

			Timestamp med = rs.getTimestamp("member_pending_date");
			x.setMemberPendingDate(med == null ? null : new Date(med.getTime()));
			med = null;

			Timestamp mbd = rs.getTimestamp("member_banned_date");
			x.setMemberBannedDate(mbd == null ? null : new Date(mbd.getTime()));
			mbd = null;

			return x;
		}
	}
}
