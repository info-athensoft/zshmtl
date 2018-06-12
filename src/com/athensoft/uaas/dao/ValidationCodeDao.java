package com.athensoft.uaas.dao;

import com.athensoft.uaas.entity.ValidationCode;

public interface ValidationCodeDao {
	public ValidationCode find(ValidationCode validationCode);
	
	public void create(ValidationCode validationCode);
}
