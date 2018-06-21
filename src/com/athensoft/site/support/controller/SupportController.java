package com.athensoft.site.support.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.athensoft.member.entity.Member;
import com.athensoft.member.entity.MemberStatus;
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
	
	@RequestMapping(value="/mailToUsSignup",method={RequestMethod.POST,RequestMethod.GET})
	public String mailtoUsSignup(@ModelAttribute("signupForm") SignupForm form){
		logger.info("entering.. /support/mailToUsSignup");
		
		logger.info(form.toString());
		supportService.sendSignupMail(form);
		
		logger.info("creating user account and submit application");
		UserAccount userAccount = new UserAccount();
		userAccount.setAcctName(form.getAcctName());
		userAccount.setAcctStatus(UserAccount.ACCOUNT_ACTIVATED);
		userAccount.setCreateDate(new Date());
		userAccount.setPassword(form.getPassword1());
		userAccount.setPrimaryEmail(form.getAcctName());
		
		userAccountService.createUserAccount(userAccount);
		
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date initDate = null;
		Date endDate = null;
		try {
			initDate = dateFormat.parse("1970-01-01 00:00:01");
			endDate = dateFormat.parse("2999-12-31 23:59:59");
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		logger.info("creating member profile");
		Member member = new Member();
		member.setAcctName(form.getAcctName());
		member.setName1(form.getName1());
		member.setName2(form.getName2());
		member.setGender(form.getGender());
		member.setNationality(form.getNationality());
		member.setPhone1(form.getPhone1());
		member.setPhone2(form.getPhone2());
		member.setWechat(form.getWechat());
		member.setEmail(form.getEmail());
		member.setDegree(form.getDegree());
		member.setOccupation(form.getOccupation());
		member.setDob(form.getDob());
		member.setPobProvince(form.getPobProvince());
		member.setPobCity(form.getPobCity());
		member.setHomeAddress(form.getHomeAddress());
		member.setPostalcode(form.getPostalcode());
		member.setHobbies(form.getHobbies());
		member.setMemberLevel(form.getMemberLevel());
		member.setMemberStatus(MemberStatus.APPLIED);
		member.setMemberApplyDate(new Date());
		member.setMemberApprovedDate(initDate);
		member.setMemberActiveDate(initDate);
		member.setMemberPendingDate(initDate);
		member.setMemberInactiveDate(initDate);
		member.setMemberBannedDate(endDate);
		
		memberService.createMemberProfile(member);
		
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
