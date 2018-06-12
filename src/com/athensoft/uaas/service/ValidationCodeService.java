package com.athensoft.uaas.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.athensoft.uaas.dao.ValidationCodeDao;
import com.athensoft.uaas.entity.ValidationCode;

@Service
public class ValidationCodeService {
	private ValidationCodeDao validationCodeDao;

	@Autowired
	@Qualifier("validationCodeDaoJdbcImpl")
	public void setValidationCodeDao(ValidationCodeDao validationCodeDao) {
		this.validationCodeDao = validationCodeDao;
	}
	
	public void createValidationCode(ValidationCode validationCode){
		validationCodeDao.create(validationCode);
	}
	
	public boolean isValid(ValidationCode validationCode){
		boolean isValid = false;
		validationCode.setCodeStatus(ValidationCode.VALID);
		
		try{
			ValidationCode vc = validationCodeDao.find(validationCode);
			if(vc==null){
				
			}else{
				isValid = true;
			}
		}catch(Exception ex){
			isValid = false;
			System.out.println("ERROR:  ValidationCodeService.isValid()");
		}
		
		return isValid;
	}
	
}
