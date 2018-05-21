package com.athensoft.site.support.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.athensoft.site.support.dao.SubscribeEmailDao;
import com.athensoft.site.support.entity.SubscribeEmail;


@Service
public class SubscribeEmailService {
	
	private SubscribeEmailDao subscribeEmailDao;
	
	@Autowired
	@Qualifier("subscribeEmailDaoJdbcImpl")
	public void setSubscribeEmailDao(SubscribeEmailDao subscribeEmailDao) {
		this.subscribeEmailDao = subscribeEmailDao;
	}
	
	
	public List<SubscribeEmail> getMailList(SubscribeEmail se){
		return subscribeEmailDao.findAll();
	}
	
	public void addToMailList(SubscribeEmail se){
		subscribeEmailDao.create(se);
	}
}
