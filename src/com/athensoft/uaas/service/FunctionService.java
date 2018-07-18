package com.athensoft.uaas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.athensoft.uaas.dao.FunctionDao;
import com.athensoft.uaas.entity.Function;

@Service
public class FunctionService {

	@Autowired
	@Qualifier("functionDaoJdbcImpl")
	private FunctionDao functionDao;

	public List<Function> getAllFunctions() {
		return functionDao.findAll();
	}
}
