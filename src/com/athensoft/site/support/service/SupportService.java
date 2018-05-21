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
		String emailTitle = "[�ÿ�] ������һ����ѯ�ʼ�";
		
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
		String emailTitle = "[��Ա] �����ϵ - "+senderName+" - "+senderService;
		
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
		String emailTitle = "[�ÿ�] "+name1+" �����Ա ";
		
		StringBuffer mailBody = new StringBuffer();
		mailBody.append("������: "+name1);
		mailBody.append("<br/>");
		mailBody.append("Ӣ����: "+name2);
		mailBody.append("<br/>");
		String genderString = "����";
		if(gender==1){
			genderString = "��";
		}else if(gender==2){
			genderString = "Ů";
		}
		mailBody.append("�Ա�: "+genderString);
		mailBody.append("<br/><br/>");
		mailBody.append("����: "+nationality);
		mailBody.append("<br/>");
		mailBody.append("�绰: "+phone1);
		mailBody.append("<br/>");
		mailBody.append("�ֻ�: "+phone2);
		mailBody.append("<br/>");
		mailBody.append("΢��: "+wechat);
		mailBody.append("<br/>");
		mailBody.append("�ֻ�: "+phone2);
		mailBody.append("<br/>");
		mailBody.append("�ʼ�: "+email);
		mailBody.append("<br/>");
		mailBody.append("���ѧ��: "+degree);
		mailBody.append("<br/>");
		mailBody.append("Ŀǰְҵ: "+occupation);
		mailBody.append("<br/>");
		mailBody.append("��������: "+dob);
		mailBody.append("<br/>");
		mailBody.append("�����أ�ʡ���ݣ�: "+pobProvince);
		mailBody.append("<br/>");
		mailBody.append("�����أ��С���: "+pobCity);
		mailBody.append("<br/>");
		mailBody.append("��ͥסַ: "+homeAddress);
		mailBody.append("<br/>");
		mailBody.append("�ʱ�: "+postalcode);
		mailBody.append("<br/>");
		mailBody.append("����: "+hobbies);
		mailBody.append("<br/>");
		String memberLevelString = "��Ա";
		if(memberLevel==MemberLevel.GENERAL){
			memberLevelString = "��ͨ��Ա";
		}else if(memberLevel==MemberLevel.VIP){
			memberLevelString = "VIP��Ա";
		}
		mailBody.append("��Ա����: "+memberLevelString);
		mailBody.append("<br/>");
		mailBody.append("�Ѿ��Ķ���ͬ������");
		
		String emailBody = mailBody.toString();
		logger.info("emailBody="+emailBody);
		
		//send mail
		emailService.sendTextMail(FROM_EMAIL_ADDR,TO_EMAIL_ADDR,emailTitle,emailBody);
						
	}
	
	
	
	
	
	
	
}
