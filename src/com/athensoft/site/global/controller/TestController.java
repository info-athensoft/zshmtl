package com.athensoft.site.global.controller;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.athensoft.uaas.entity.UserAccount;
import com.athensoft.uaas.service.UserAccountService;

@Controller
public class TestController {
	
	private static final Logger logger = Logger.getLogger(TestController.class);
	
	
	private UserAccountService userAccountService;
	
	@Autowired
	public void setUserAccountService(UserAccountService userAccountService) {
		this.userAccountService = userAccountService;
	}
	
	@RequestMapping("/test1")
	public ModelAndView gotoTest1(){
		logger.info("entering.. /test1");
		
		UserAccount loginAccount = new UserAccount();
		loginAccount.setAcctName("athens315@hotmail.com");
		loginAccount.setPassword("zshmtl");
		UserAccount userAccount = userAccountService.login(loginAccount);
		
		ModelAndView mav = new ModelAndView();
		
		Map<String,Object> model = mav.getModel();
		
		model.put("userAccount", userAccount);		
		
		String viewName = "test";
		mav.setViewName(viewName);
		
		logger.info("exiting.. /test1");
		return mav;
	}
	
	@RequestMapping("/test2")
	public String gotoTest2(){
		logger.info("entering.. /test2");
		logger.info("exiting.. /test2");
		return "test2";
	}
}
