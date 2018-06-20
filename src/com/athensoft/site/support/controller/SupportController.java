package com.athensoft.site.support.controller;

import java.util.Date;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.athensoft.member.entity.Member;
import com.athensoft.member.service.MemberService;
import com.athensoft.site.support.model.AdRequestForm;
import com.athensoft.site.support.model.ContactForm;
import com.athensoft.site.support.model.SignupForm;
import com.athensoft.site.support.service.SupportService;
import com.athensoft.uaas.entity.UserAccount;
import com.athensoft.uaas.service.UserAccountService;


@Controller
@RequestMapping("/support")
public class SupportController {
	private static final Logger logger = Logger.getLogger(SupportController.class);
	
	private UserAccountService userAccountService;
	
	@Autowired
	public void setUserAccountService(UserAccountService userAccountService) {
		this.userAccountService = userAccountService;
	}
	
	private MemberService memberService;
	
	@Autowired
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	private SupportService supportService;
	
	@Autowired
	public void setSupportService(SupportService supportService) {
		this.supportService = supportService;
	}
	
	@RequestMapping(value="/mailToUs",method=RequestMethod.POST)
	public String mailtoUs(@ModelAttribute("contactForm") ContactForm contactForm){
		logger.info("entering.. /support/mailToUs");
		
		logger.info(contactForm.toString());
		
		supportService.sendContactMail(contactForm);
		
		logger.info("exiting.. /support/mailToUs");
		return "redirect:/contactus.html";
	}
	
	
	@RequestMapping(value="/mailToUsAdReuqest",method=RequestMethod.POST)
	public String mailtoUsAdRequest(@ModelAttribute("adRequestForm") AdRequestForm adRequestForm){
		logger.info("entering.. /support/mailToUsAdReuqest");
		
		logger.info(adRequestForm.toString());
		
		supportService.sendAdRequestMail(adRequestForm);
		
		logger.info("exiting.. /support/mailToUsAdReuqest");
		return "redirect:/contactus.html";
	}
	
	@RequestMapping(value="/mailToUsSignup",method=RequestMethod.POST)
	public String mailtoUsSignup(@ModelAttribute("signupForm") SignupForm form){
		logger.info("entering.. /support/mailToUsSignup");
		
		logger.info(form.toString());
		supportService.sendSignupMail(form);
		
		logger.info("creating user account and submit application");
		UserAccount userAccount = new UserAccount();
//		userAccount.setAcctName(acctName);
//		userAccount.setAcctStatus(UserAccount.ACCOUNT_ACTIVATED);
//		userAccount.setCreateDate(new Date());
//		userAccount.setPassword(password);
//		userAccount.setPrimaryEmail(acctName);
		userAccountService.createUserAccount(userAccount);
		
		logger.info("creating member profile");
		Member member = new Member();
		
		
		
		logger.info("exiting.. /support/mailToUsSignup");
		return "redirect:/contactus.html";
	}
	
	@RequestMapping("/mailToUsLang")
	public String mailtoUsByLang(@ModelAttribute("contactForm") ContactForm contactForm,
						   @RequestParam("lang") String lang){
		logger.info("entering.. /support/mailToUs");
		
		logger.info(contactForm.toString());
		logger.info("lang="+lang);
		
		supportService.sendContactMail(contactForm);
		
		logger.info("exiting.. /support/mailToUs");
		return "redirect:/support/contactus.html?lang="+lang;
	}
	
	
	
	
	
	
}
