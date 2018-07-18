package com.athensoft.uaas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.athensoft.uaas.dao.RoleDao;
import com.athensoft.uaas.entity.Role;

@Service
public class RoleService {

	@Autowired
	@Qualifier("roleDaoJdbcImpl")
	private RoleDao roleDao;

	public List<Role> getAllRoles() {
		return roleDao.findAll();
	}
}
