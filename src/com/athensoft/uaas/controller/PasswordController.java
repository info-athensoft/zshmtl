package com.athensoft.uaas.controller;

import java.util.Date;
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
import com.athensoft.uaas.entity.ValidationCode;
import com.athensoft.uaas.model.LoginAccountModel;
import com.athensoft.uaas.model.PasswordModel;
import com.athensoft.uaas.model.UserCredentialModel;
import com.athensoft.uaas.model.ValidationModel;
import com.athensoft.uaas.service.UserAccountService;
import com.athensoft.uaas.service.ValidationCodeService;
import com.athensoft.util.id.CodeHelper;

@Controller
public class PasswordController {

	private static final Logger logger = Logger.getLogger(LoginController.class);

	@Autowired
	private EmailService emailService;

	@Autowired
	private UserAccountService userAccountService;

	@Autowired
	private ValidationCodeService validationCodeService;

	@RequestMapping("/request-resetpassword.html")
	public String gotoForgetpassword() {
		logger.info("entering... request-resetpassword.html");

		String viewName = "member-requestresetpassword";
		logger.info("exiting... request-resetpassword.html");
		return viewName;
	}

	@RequestMapping(value = "/valid-resetpassword.html")
	public ModelAndView gotoValidResetpassword(@RequestParam String acctName) {
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
	public ModelAndView gotoInputResetpassword(@RequestParam String acctName) {
		logger.info("entering... input-resetpassword.html");

		ModelAndView mav = new ModelAndView();
		Map<String, Object> model = mav.getModel();
		model.put("acctName", acctName);

		String viewName = "member-inputresetpassword";
		mav.setViewName(viewName);
		logger.info("exiting... input-resetpassword.html");
		return mav;
	}

	@RequestMapping(value = "/request-resetpassword", method = RequestMethod.POST, produces = "application/json")
	@ResponseBody
	public Map<String, Object> requestResetpassword(@RequestBody LoginAccountModel resetAccount) {
		logger.info("entering... request-resetpassword");

		ValidationCode validationCode = new ValidationCode();
		validationCode.setAcctName(resetAccount.getUserName());
		validationCode.setValidCode(CodeHelper.createCode());
		validationCode.setCodeStatus(ValidationCode.VALID);
		validationCode.setGenerateDate(new Date());

		sendRequestMail(validationCode);
		createValidationCode(validationCode);

		ModelAndView mav = new ModelAndView();
		Map<String, Object> model = mav.getModel();
		logger.info("exiting... request-resetpassword");
		return model;
	}

	@RequestMapping(value = "/valid-resetpassword", method = RequestMethod.POST, produces = "application/json")
	@ResponseBody
	public Map<String, Object> validResetpassword(@RequestBody ValidationModel validation) {
		logger.info("entering... request-resetpassword");

		logger.info(">>>>>>" + validation.getAcctName() + "," + validation.getValidationCode());

		// search in database
		ValidationCode validationCode = new ValidationCode();
		validationCode.setAcctName(validation.getAcctName());
		validationCode.setValidCode(validation.getValidationCode());

		boolean isValid = validationCodeService.isValid(validationCode);
		System.out.println("isValid=" + isValid);

		// make current valid code invalid, a validation code can only be used
		// for once
		validationCodeService.invalidate(validationCode);

		// data
		ModelAndView mav = new ModelAndView();
		Map<String, Object> model = mav.getModel();

		String strIsValid = isValid ? "valid" : "notValid";
		model.put("strIsValid", strIsValid);

		logger.info("exiting... request-resetpassword");
		return model;
	}

	@RequestMapping(value = "/input-resetpassword", method = RequestMethod.POST, produces = "application/json")
	@ResponseBody
	public Map<String, Object> inputResetpassword(@RequestBody PasswordModel passwordModel) {
		logger.info("entering... input-resetpassword");

		logger.info("passwordModel=" + passwordModel.toString());

		// reset password in database
		UserCredentialModel userCredentialModel = new UserCredentialModel();
		userCredentialModel.setAcctName(passwordModel.getAcctName());
		userCredentialModel.setPassword(passwordModel.getPassword1());
		userAccountService.resetPassword(userCredentialModel);

		// data
		ModelAndView mav = new ModelAndView();
		Map<String, Object> model = mav.getModel();

		logger.info("exiting... input-resetpassword");
		return model;
	}

	private void sendRequestMail(ValidationCode validationCode) {

		final String FROM_EMAIL_ADDR = "support@athensoft.com";
		final String TO_EMAIL_ADDR = validationCode.getAcctName();

		System.out.println("acct Name " + TO_EMAIL_ADDR);

		String emailTitle = "会员重置密码验证信息";

		StringBuffer mailBody = new StringBuffer();
		mailBody.append("Account Name: " + TO_EMAIL_ADDR);
		mailBody.append("<br/>");
		mailBody.append("Validation Code: " + validationCode.getValidCode());
		mailBody.append("<br/><br/>");
		mailBody.append("请复制该验证码到以下链接:<br/>");

		String url = "http://localhost:8080/valid-resetpassword.html?acctName=" + TO_EMAIL_ADDR; // TODO
		mailBody.append("<a href='" + url + "'>" + url + "</a>");

		String emailBody = mailBody.toString();
		logger.info("emailBody=" + emailBody);

		// send mail
		emailService.sendTextMail(FROM_EMAIL_ADDR, TO_EMAIL_ADDR, emailTitle, emailBody);
	}

	private void createValidationCode(ValidationCode validationCode) {
		validationCodeService.createValidationCode(validationCode);
	}
}
