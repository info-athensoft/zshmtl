package com.athensoft.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.athensoft.member.dao.MemberDao;
import com.athensoft.member.entity.Member;

@Service
public class MemberService {
	@Autowired
	@Qualifier("memberDaoJdbcImpl")
	private MemberDao memberDao;

	public Member getMemberProfile(String acctName) {
		return memberDao.findByAcctName(acctName);
	}

	public void createMemberProfile(Member member) {
		memberDao.create(member);
	}

}
