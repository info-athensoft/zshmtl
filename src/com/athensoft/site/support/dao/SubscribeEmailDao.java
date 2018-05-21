package com.athensoft.site.support.dao;

import java.util.List;

import com.athensoft.site.support.entity.SubscribeEmail;

public interface SubscribeEmailDao {
	public List<SubscribeEmail> findAll();
	
	public int create(SubscribeEmail subscribeEmail);
	
}
