package com.athensoft.common.email.service;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;



/**
 * References: 	http://wang3065.iteye.com/blog/1718381
 * 				http://blog.csdn.net/smcwwh/article/details/7095027
 * @author User
 *
 */
@Service
public class EmailService {
	private static final Logger logger = Logger.getLogger(EmailService.class);
	
	
	
	private JavaMailSenderImpl javaMailSenderImpl ;
	
	@Autowired
	public void setJavaMailSenderImpl(JavaMailSenderImpl javaMailSenderImpl) {
		this.javaMailSenderImpl = javaMailSenderImpl;
	}
	
	
	/**
	 * send a text-based email
	 * @param fromEmail sender's email address
	 * @param toEmail receiver's email address
	 * @param mailTitle title of the email message
	 * @param mailBody body content of the email message
	 * @throws MessagingException 
	 */
	public void sendTextMail(String fromEmailAddr, String toEmailAddr, String mailTitle, String mailBody){
		try{
			MimeMessage mail = javaMailSenderImpl.createMimeMessage();		
			MimeMessageHelper messageHelper = new MimeMessageHelper(mail,true,"utf-8");
//			MimeMessageHelper messageHelper = new MimeMessageHelper(mail);
			
			//set sender and receiver
			messageHelper.setFrom(fromEmailAddr);
			messageHelper.setTo(toEmailAddr);  
			
			System.out.println("mailTitle="+mailTitle);
			System.out.println("mailBody="+mailBody);
			
			//set mail subject
			//String CorrectContent = new String(mail.getbytes("iso-8859-1"),"utf-8");
//			mailMessage.setSubject(MimeUtility.encodeText(mailInfo.getSubject(), "UTF-8", "B"));
			
			messageHelper.setSubject(mailTitle);
//			messageHelper.setSubject(new String(mailTitle.getBytes("iso-8859-1"),"UTF-8"));
//			messageHelper.setSubject(MimeUtility.encodeText(mailTitle,"UTF-8", "Q"));
			
			//set mail body		
			messageHelper.setText(mailBody,true);
//			messageHelper.setText(new String(mailBody.getBytes("iso-8859-1"),"UTF-8"),true);
//			messageHelper.setText(MimeUtility.encodeText(mailBody,"UTF-8", "Q"),true);
			
			
			
			//execute sending mail
			//javaMailSenderImpl.setDefaultEncoding("utf-8");
        	javaMailSenderImpl.send(mail);
        	
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
}
