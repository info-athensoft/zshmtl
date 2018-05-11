package com.athensoft.uaas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.athensoft.uaas.dao.UserAccountDao;
import com.athensoft.uaas.entity.UserAccount;

@Service
public class UserAccountService {
	
	private UserAccountDao userAccoutDao;	
	
	@Autowired
	@Qualifier("userAccountDaoParamImpl")
	public void setUserAccoutDao(UserAccountDao userAccoutDao) {
		this.userAccoutDao = userAccoutDao;
	}
	
	public List<UserAccount> getUserAccountAll(){
		return userAccoutDao.find();
	}
	
	public UserAccount getUserAccount(long acctId){
		return userAccoutDao.findById(acctId);
	}

	public long createUserAccount(UserAccount userAccount) {
		return this.userAccoutDao.create(userAccount);
	}

	public void updateUserAccount(UserAccount userAccount) {
		userAccoutDao.update(userAccount);
	}
	
	public boolean isUserAccountExist(UserAccount userAccount) {
		return userAccoutDao.isUserAccountExist(userAccount);
	}

	public UserAccount findById(long acctId) {
		return userAccoutDao.findById(acctId);
	}
	
	public UserAccount findByName(String name) {
		return userAccoutDao.findByName(name);
	}

	public void delete(long acctId) {
		userAccoutDao.delete(acctId);
	}
	
	public UserAccount login(UserAccount userAccount) {
		return userAccoutDao.querySignin(userAccount);
	}
}
