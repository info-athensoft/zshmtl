package com.athensoft.uaas.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.athensoft.site.global.controller.LoginController;

@Controller
public class AccountController {
	
	private static final Logger logger = Logger.getLogger(LoginController.class);
	
	
	
	@RequestMapping("/forgetpassword.html")
	public String gotoForgetpassword(){
		logger.info("entering... forgetpassword");
		
		String viewName = "member-forgetpassword";
		logger.info("exiting... forgetpassword");
		return viewName;
	}
	
	@RequestMapping("/valid-resetpassword.html")
	public String gotoValidResetpassword(){
		logger.info("entering... resetpassword");
		
		String viewName = "member-validresetpassword";
		logger.info("exiting... resetpassword");
		return viewName;
	}
	
	@RequestMapping("/input-resetpassword.html")
	public String gotoInputResetpassword(){
		logger.info("entering... input-resetpassword.html");
		
		String viewName = "member-inputresetpassword";
		logger.info("exiting... input-resetpassword.html");
		return viewName;
	}
}
