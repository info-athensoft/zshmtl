package com.athensoft.uaas.dao;

import com.athensoft.uaas.entity.ValidationCode;

public interface ValidationCodeDao {
	public ValidationCode findByAcctName(String acctName);
	
	public void create(ValidationCode validationCode);
}
