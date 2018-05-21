package com.athensoft.site.support.service;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.athensoft.common.email.service.EmailService;
import com.athensoft.member.entity.MemberLevel;
import com.athensoft.site.support.model.AdRequestForm;
import com.athensoft.site.support.model.ContactForm;
import com.athensoft.site.support.model.SignupForm;

@Service
public class SupportService {
	private static final Logger logger = Logger.getLogger(SupportService.class);
	
	private static final String FROM_EMAIL_ADDR = "support@athensoft.com";
	private static final String TO_EMAIL_ADDR = "athens314@hotmail.com";
	
	
	private EmailService emailService;
	
	@Autowired
	public void setEmailService(EmailService emailService) {
		this.emailService = emailService;
	}


	/**
	 * @param contactForm
	 */
	public void sendContactMail(ContactForm contactForm){
		
		//set mail subject
		String emailTitle = "[访客] 发送了一个咨询邮件";
		
		//set mail body
		String senderName 	= contactForm.getName();
		String senderEmail 	= contactForm.getEmail();
		String senderSubject= contactForm.getSubject();
		String senderMessage= contactForm.getMessage();
		
		StringBuffer mailBody = new StringBuffer();
		mailBody.append("Customer: "+senderName);
		mailBody.append("<br/>");
		mailBody.append("Email: "+senderEmail);
		mailBody.append("<br/><br/>");
		mailBody.append("Subject: "+senderSubject);
		mailBody.append("<br/><br/>");
		mailBody.append(senderMessage);
		
		String emailBody = mailBody.toString();
		logger.info("emailBody="+emailBody);
		
		//send mail
		emailService.sendTextMail(FROM_EMAIL_ADDR,TO_EMAIL_ADDR,emailTitle,emailBody);
						
	}
	
	/**
	 * @param AdRequestForm
	 */
	public void sendAdRequestMail(AdRequestForm form){
		
		//set mail body
		String senderName 	= form.getName();
		String senderEmail 	= form.getEmail();
		String senderPhone 	= form.getPhone();
		String senderSubject= form.getSubject();
		String senderMessage= form.getMessage();
		String senderService= form.getServiceName();
		
		//set mail subject
		String emailTitle = "[会员] 广告联系 - "+senderName+" - "+senderService;
		
		StringBuffer mailBody = new StringBuffer();
		mailBody.append("Member: "+senderName);
		mailBody.append("<br/>");
		mailBody.append("Email: "+senderEmail);
		mailBody.append("<br/><br/>");
		mailBody.append("Phone: "+senderPhone);
		mailBody.append("<br/><br/>");
		mailBody.append("Subject: "+senderSubject);
		mailBody.append("<br/><br/>");
		mailBody.append("Service: "+senderService);
		mailBody.append("<br/><br/>");
		mailBody.append(senderMessage);
		
		String emailBody = mailBody.toString();
		logger.info("emailBody="+emailBody);
		
		//send mail
		emailService.sendTextMail(FROM_EMAIL_ADDR,TO_EMAIL_ADDR,emailTitle,emailBody);
						
	}
	
	
	/**
	 * @param form
	 */
	public void sendSignupMail(SignupForm form){
		
		//set mail body
		String name1 		= form.getName1();
		String name2 		= form.getName2();
		Integer gender 		= form.getGender();
		String nationality	= form.getNationality();
		String phone1		= form.getPhone1();
		String phone2		= form.getPhone2();
		String wechat		= form.getWechat();
		String email		= form.getEmail();
		String degree		= form.getDegree();
		String occupation	= form.getOccupation();
		String dob			= form.getDob();
		String pobProvince	= form.getPobProvince();
		String pobCity		= form.getPobCity();
		String homeAddress	= form.getHomeAddress();
		String postalcode	= form.getPostalcode();
		String hobbies		= form.getHobbies();
		Integer memberLevel	= form.getMemberLevel();
		
		
			
		//set mail subject
		String emailTitle = "[访客] "+name1+" 申请会员 ";
		
		StringBuffer mailBody = new StringBuffer();
		mailBody.append("中文名: "+name1);
		mailBody.append("<br/>");
		mailBody.append("英文名: "+name2);
		mailBody.append("<br/>");
		String genderString = "保密";
		if(gender==1){
			genderString = "男";
		}else if(gender==2){
			genderString = "女";
		}
		mailBody.append("性别: "+genderString);
		mailBody.append("<br/><br/>");
		mailBody.append("国籍: "+nationality);
		mailBody.append("<br/>");
		mailBody.append("电话: "+phone1);
		mailBody.append("<br/>");
		mailBody.append("手机: "+phone2);
		mailBody.append("<br/>");
		mailBody.append("微信: "+wechat);
		mailBody.append("<br/>");
		mailBody.append("手机: "+phone2);
		mailBody.append("<br/>");
		mailBody.append("邮件: "+email);
		mailBody.append("<br/>");
		mailBody.append("最高学历: "+degree);
		mailBody.append("<br/>");
		mailBody.append("目前职业: "+occupation);
		mailBody.append("<br/>");
		mailBody.append("出生日期: "+dob);
		mailBody.append("<br/>");
		mailBody.append("出生地（省、州）: "+pobProvince);
		mailBody.append("<br/>");
		mailBody.append("出生地（市、镇）: "+pobCity);
		mailBody.append("<br/>");
		mailBody.append("家庭住址: "+homeAddress);
		mailBody.append("<br/>");
		mailBody.append("邮编: "+postalcode);
		mailBody.append("<br/>");
		mailBody.append("爱好: "+hobbies);
		mailBody.append("<br/>");
		String memberLevelString = "会员";
		if(memberLevel==MemberLevel.GENERAL){
			memberLevelString = "普通会员";
		}else if(memberLevel==MemberLevel.VIP){
			memberLevelString = "VIP会员";
		}
		mailBody.append("会员级别: "+memberLevelString);
		mailBody.append("<br/>");
		mailBody.append("已经阅读并同意条款");
		
		String emailBody = mailBody.toString();
		logger.info("emailBody="+emailBody);
		
		//send mail
		emailService.sendTextMail(FROM_EMAIL_ADDR,TO_EMAIL_ADDR,emailTitle,emailBody);
						
	}
	
	
	
	
	
	
	
}
