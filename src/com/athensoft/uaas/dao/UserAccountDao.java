package com.athensoft.uaas.dao;

import java.util.List;

import com.athensoft.uaas.entity.UserAccount;
import com.athensoft.uaas.model.UserCredentialModel;

public interface UserAccountDao {
	public List<UserAccount> find();
	public UserAccount findById(long acctId);
	public UserAccount findByName(String name);
	public boolean isUserAccountExist(UserAccount userAccount);
	
	public long create(UserAccount userAccount);
	public void update(UserAccount userAccount);
	
	/**
	 * update user password
	 * @param userCredentialModel
	 */
	public void update(UserCredentialModel userCredentialModel);
	
	public void delete(long acctId);
	
	//business query
	public UserAccount querySignin(UserAccount userAccount);
	public void activateAccount(UserAccount userAccount);
}
