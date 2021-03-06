package com.athensoft.site.support.service;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.athensoft.common.email.service.EmailService;
import com.athensoft.content.ad.entity.AdRequestType;
import com.athensoft.member.entity.MemberLevel;
import com.athensoft.site.support.model.AdRequestForm;
import com.athensoft.site.support.model.ContactForm;
import com.athensoft.site.support.model.JobForm;
import com.athensoft.site.support.model.SignupForm;

@Service
public class SupportService {
	private static final Logger logger = Logger.getLogger(SupportService.class);

//	private static final String FROM_EMAIL_ADDR = "support@athensoft.com";
//	private static final String TO_EMAIL_ADDR = "athens314@hotmail.com";

	private static final String FROM_EMAIL_ADDR = "info@zshmtl.ca";
	private static final String TO_EMAIL_ADDR = "info@zshmtl.ca";
	
	@Autowired
	private EmailService emailService;

	/**
	 * @param contactForm
	 */
	public void sendContactMail(ContactForm contactForm) {

		// set mail subject
		String emailTitle = "[访客] 发送了一个咨询邮件";

		// set mail body
		String senderName = contactForm.getName();
		String senderEmail = contactForm.getEmail();
		String senderSubject = contactForm.getSubject();
		String senderMessage = contactForm.getMessage();

		StringBuffer mailBody = new StringBuffer();
		mailBody.append("Customer: " + senderName);
		mailBody.append("<br/>");
		mailBody.append("Email: " + senderEmail);
		mailBody.append("<br/><br/>");
		mailBody.append("Subject: " + senderSubject);
		mailBody.append("<br/><br/>");
		mailBody.append(senderMessage);

		String emailBody = mailBody.toString();
		logger.info("emailBody=" + emailBody);

		// send mail
		emailService.sendTextMail(FROM_EMAIL_ADDR, TO_EMAIL_ADDR, emailTitle, emailBody);

	}

	/**
	 * @param AdRequestForm
	 */
	public void sendAdRequestMail(AdRequestForm form) {

		// set mail body
		String senderName = form.getName();
		String senderEmail = form.getEmail();
		String senderPhone = form.getPhone();
		String senderSubject = form.getSubject();
		String senderMessage = form.getMessage();

		int requestType = form.getRequestType();

		String senderService = "";

		switch (requestType) {
		case AdRequestType.INQUIRY:
			senderService = "广告咨询";
			break;
		case AdRequestType.CREATE:
			senderService = "广告新增申请";
			break;
		case AdRequestType.UPDATE:
			senderService = "广告修改申请";
			break;
		case AdRequestType.REVOKE:
			senderService = "广告撤回申请";
			break;
		default:
			senderService = "未知服务请求";
			break;
		}

		// set mail subject
		String emailTitle = "[会员] 广告联系 - " + senderName + " - " + senderService;

		StringBuffer mailBody = new StringBuffer();
		mailBody.append("Member: " + senderName);
		mailBody.append("<br/>");
		mailBody.append("Email: " + senderEmail);
		mailBody.append("<br/><br/>");
		mailBody.append("Phone: " + senderPhone);
		mailBody.append("<br/><br/>");
		mailBody.append("Subject: " + senderSubject);
		mailBody.append("<br/><br/>");
		mailBody.append("Service: " + senderService);
		mailBody.append("<br/><br/>");
		mailBody.append(senderMessage);

		String emailBody = mailBody.toString();
		logger.info("emailBody=" + emailBody);

		// send mail
		emailService.sendTextMail(FROM_EMAIL_ADDR, TO_EMAIL_ADDR, emailTitle, emailBody);

	}

	/**
	 * @param form
	 */
	public void sendSignupMail(SignupForm form) {

		// set mail body
		String name1 = form.getName1();
		String name2 = form.getName2();
		Integer gender = form.getGender();
		String nationality = form.getNationality();
		String phone1 = form.getPhone1();
		String phone2 = form.getPhone2();
		String wechat = form.getWechat();
		String email = form.getEmail();
		String degree = form.getDegree();
		String occupation = form.getOccupation();
		String dob = form.getDob();
		String pobProvince = form.getPobProvince();
		String pobCity = form.getPobCity();
		String homeAddress = form.getHomeAddress();
		String postalcode = form.getPostalcode();
		String hobbies = form.getHobbies();
		Integer memberLevel = form.getMemberLevel();

		// set mail subject
		String emailTitle = "[访客] 申请会员 ";

		StringBuffer mailBody = new StringBuffer();
		mailBody.append("中文名: " + name1);
		mailBody.append("<br/>");
		mailBody.append("英文名: " + name2);
		mailBody.append("<br/>");
		String genderString = "保密";
		if (gender == 1) {
			genderString = "男";
		} else if (gender == 2) {
			genderString = "女";
		}
		mailBody.append("性别: " + genderString);
		mailBody.append("<br/><br/>");
		mailBody.append("国籍: " + nationality);
		mailBody.append("<br/>");
		mailBody.append("电话: " + phone1);
		mailBody.append("<br/>");
		mailBody.append("手机: " + phone2);
		mailBody.append("<br/>");
		mailBody.append("微信: " + wechat);
		mailBody.append("<br/>");
		mailBody.append("手机: " + phone2);
		mailBody.append("<br/>");
		mailBody.append("邮件: " + email);
		mailBody.append("<br/>");
		mailBody.append("最高学历: " + degree);
		mailBody.append("<br/>");
		mailBody.append("目前职业: " + occupation);
		mailBody.append("<br/>");
		mailBody.append("出生日期: " + dob);
		mailBody.append("<br/>");
		mailBody.append("出生地（省、州）: " + pobProvince);
		mailBody.append("<br/>");
		mailBody.append("出生地（市、镇）: " + pobCity);
		mailBody.append("<br/>");
		mailBody.append("家庭住址: " + homeAddress);
		mailBody.append("<br/>");
		mailBody.append("邮编: " + postalcode);
		mailBody.append("<br/>");
		mailBody.append("爱好: " + hobbies);
		mailBody.append("<br/>");
		String memberLevelString = "会员";
		if (memberLevel == MemberLevel.GENERAL) {
			memberLevelString = "普通会员";
		} else if (memberLevel == MemberLevel.VIP) {
			memberLevelString = "VIP会员";
		}
		mailBody.append("会员级别: " + memberLevelString);
		mailBody.append("<br/>");
		mailBody.append("已经阅读并同意条款");

		String emailBody = mailBody.toString();
		logger.info("emailBody=" + emailBody);

		// send mail
		emailService.sendTextMail(FROM_EMAIL_ADDR, TO_EMAIL_ADDR, emailTitle, emailBody);

	}

	public void sendJobMail(JobForm jobForm) {

		// set mail subject
		String emailTitle = "[访客] 申请义工职位";

		// set mail body
		String senderName = jobForm.getFirstName() + " " + jobForm.getLastName();
		String senderEmail = jobForm.getEmail();
		String senderPhone = jobForm.getPhone();
		String jobName = jobForm.getJobName();
		String senderLocation = jobForm.getCity() + "," + jobForm.getProvince();
		String expectedStartDate = jobForm.getExpectedStartDate();
		String website = jobForm.getWebsite();
		String experience = jobForm.getExperience();
		String senderApplication = jobForm.getApplication();

		StringBuffer mailBody = new StringBuffer();
		mailBody.append("申请人:   " + senderName);
		mailBody.append("<br/>");
		mailBody.append("Email:   " + senderEmail);
		mailBody.append("<br/>");
		mailBody.append("联系电话: " + senderPhone);
		mailBody.append("<br/>");
		mailBody.append("申请职位: " + jobName);
		mailBody.append("<br/>");
		mailBody.append("所在地:" + senderLocation);
		mailBody.append("<br/>");
		mailBody.append("期望起始日:   " + expectedStartDate);
		mailBody.append("<br/><br/>");
		mailBody.append("相关经验:   " + experience);
		mailBody.append("<br/><br/>");
		mailBody.append("个人网站:   " + website);
		mailBody.append("<br/><br/>");
		mailBody.append("申请留言:   " + senderApplication);

		String emailBody = mailBody.toString();
		logger.info("emailBody=" + emailBody);

		// send mail
		emailService.sendTextMail(FROM_EMAIL_ADDR, TO_EMAIL_ADDR, emailTitle, emailBody);

	}

}
