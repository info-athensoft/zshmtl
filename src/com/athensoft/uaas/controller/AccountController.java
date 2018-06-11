package com.athensoft.uaas.controller;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.athensoft.common.email.service.EmailService;
import com.athensoft.site.global.controller.LoginController;
import com.athensoft.uaas.model.LoginAccountModel;
import com.athensoft.uaas.model.ValidationModel;
import com.athensoft.util.id.CodeHelper;

@Controller
public class AccountController {
	
	private static final Logger logger = Logger.getLogger(LoginController.class);
	
	private EmailService emailService;
	
	@Autowired
	public void setEmailService(EmailService emailService) {
		this.emailService = emailService;
	}
	
	@RequestMapping("/request-resetpassword.html")
	public String gotoForgetpassword(){
		logger.info("entering... request-resetpassword.html");
		
		String viewName = "member-requestresetpassword";
		logger.info("exiting... request-resetpassword.html");
		return viewName;
	}
	
	@RequestMapping(value="/valid-resetpassword.html")
	public ModelAndView gotoValidResetpassword(@RequestParam String acctName){
		logger.info("entering... valid-resetpassword.html");
		
		ModelAndView mav = new ModelAndView();
		Map<String, Object> model = mav.getModel();
		model.put("acctName", acctName);
		
		String viewName = "member-validresetpassword";
		mav.setViewName(viewName);
		logger.info("exiting... valid-resetpassword.html");
		return mav;
	}
	
	@RequestMapping("/input-resetpassword.html")
	public String gotoInputResetpassword(){
		logger.info("entering... input-resetpassword.html");
		
		String viewName = "member-inputresetpassword";
		logger.info("exiting... input-resetpassword.html");
		return viewName;
	}
	
	
	@RequestMapping(value="/request-resetpassword", method=RequestMethod.POST, produces="application/json")
	@ResponseBody
	public Map<String, Object> requestResetpassword(@RequestBody LoginAccountModel resetAccount){
		logger.info("entering... request-resetpassword");
		
		//System.out.println(">>>>>>>>>>>>"+loginAccount.toString());
		mockSendRequest(resetAccount.getUserName());
		
		
		ModelAndView mav =new ModelAndView();
		Map<String,Object> model = mav.getModel();
		logger.info("exiting... request-resetpassword");
		return model;
	}
	
	@RequestMapping(value="/valid-resetpassword", method=RequestMethod.POST, produces="application/json")
	@ResponseBody
	public Map<String, Object> requestResetpassword(@RequestBody ValidationModel validation){
		logger.info("entering... request-resetpassword");
		
		System.out.println(">>>>>>>>>>>>"+validation.getAcctName()+","+validation.getValidationCode());
		
		//search in database
		
		
		ModelAndView mav =new ModelAndView();
		Map<String,Object> model = mav.getModel();
		logger.info("exiting... request-resetpassword");
		return model;
	}
	
	private void mockSendRequest(String acctName){
		System.out.println("mockSendRequest from "+acctName);
		final String FROM_EMAIL_ADDR = "support@athensoft.com";
		final String TO_EMAIL_ADDR = acctName;
		
		String emailTitle = "会员重置密码验证信息";
		
		String validCode=CodeHelper.createCode();
		
		StringBuffer mailBody = new StringBuffer();
		mailBody.append("Account Name: "+acctName);
		mailBody.append("<br/>");
		mailBody.append("Validation Code: "+validCode);
		mailBody.append("<br/><br/>");
		mailBody.append("请复制该验证码到以下链接:<br/>");
		
		String url = "http://localhost:8080/valid-resetpassword.html?acctName="+acctName;
		mailBody.append("<a href='"+url+"'>"+url+"</a>");
		
		String emailBody = mailBody.toString();
		logger.info("emailBody="+emailBody);
		
		//send mail
		emailService.sendTextMail(FROM_EMAIL_ADDR,TO_EMAIL_ADDR,emailTitle,emailBody);
	}
	
	private void saveResetPasswordRequest(){
		
	}
}
