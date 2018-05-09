package com.athensoft.member.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.athensoft.uaas.entity.UserAccount;

@Controller
public class MemberController {
	
	private static final Logger logger = Logger.getLogger(MemberController.class);
	
	@RequestMapping("/member-signup.html")
	public String gotoMemberSignup(){
		logger.info("entering.. /memeber-signup.html");
		logger.info("exiting.. /memeber-signup.html");
		return "member-signup";
	}
	
//	@RequestMapping("/login")
//	public String doLogin(HttpServletRequest request, @RequestParam String userName, @RequestParam String password){
//		logger.info("entering.. /login");
//		UserAccount userAccount = new UserAccount();
//		userAccount.setAcctName(userName);
//		userAccount.setPassword(password);
//		request.getSession().setAttribute("userAccount",userAccount);
//		logger.info("exiting.. /login");
//		return "member-signup";
//	}
	
	@RequestMapping("/member-index.html")
	public String gotoMemberIndex(){
		logger.info("entering.. /memeber-index.html");
		logger.info("exiting.. /memeber-index.html");
		return "member-index";
	}
}
