package com.athensoft.content.ad.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.athensoft.content.ad.dao.AdRequestDao;
import com.athensoft.content.ad.entity.AdRequest;

@Service
public class AdRequestService {
	@Autowired
	@Qualifier("adRequestDaoJdbcImpl")
	private AdRequestDao adRequestDao;
	
	public void requestCreateAd(AdRequest adRequest){
		adRequestDao.create(adRequest);
	}
}
