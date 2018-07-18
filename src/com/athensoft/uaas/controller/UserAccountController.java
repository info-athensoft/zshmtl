package com.athensoft.uaas.controller;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.athensoft.uaas.entity.UserAccount;
import com.athensoft.uaas.service.UserAccountService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * For Back-end Management use
 * For test purpose
 * 
 * @author Athens
 *
 */
@Controller
public class UserAccountController {
	private static final Logger logger = Logger.getLogger(UserAccountController.class);
	
	private UserAccountService userAccountService;
	
	@RequestMapping(value="/useracct-test/{acctId}",method=RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<?> getUserAccountTest(@PathVariable long acctId){
		
	    logger.info("Fetching UserAcc with id {"+ acctId + "}");
	    System.out.println("Fetching UserAcc with id {"+ acctId + "}");
	    UserAccount userAccount = userAccountService.getUserAccount(acctId);
        if (userAccount == null) {
            logger.error("UserAcc with id {" + acctId + "} not found.");
            System.out.println("UserAcc with id {" + acctId + "} not found.");
            return new ResponseEntity<UserAccount>(HttpStatus.NOT_FOUND);
        }
        System.out.println("Got UserAccount :" + userAccount);
        return new ResponseEntity<UserAccount>(userAccount, HttpStatus.OK);
	}


	private String convertToJson( UserAccount obj) {
		ObjectMapper mapper = new ObjectMapper();
		String json = "";
        try {
            json = mapper.writeValueAsString(obj);
            System.out.println("JSON = " + json);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
		return json;
	}
	
	@RequestMapping(value="/useracct-test",method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<?> createUserAccountTest(@RequestBody UserAccount userAccount){
		System.out.println("hello POST");
		/*
		UserAccount userAccount = new UserAccount();
	    ObjectMapper mapper = new ObjectMapper();
	    try {
			userAccount = mapper.readValue(acct, UserAccount.class);
		} catch (IOException e) {
			e.printStackTrace();
		} */
	    /*
		long key = userAccountService.createUserAccount(userAccount);
		userAccount.setAcctId(key);
		*/
		if (userAccountService.isUserAccountExist(userAccount)) {
            logger.error("Unable to create. A User with name {" + userAccount.getAcctName() + "} already exist");
            System.out.println("Unable to create. A User with name {" + userAccount.getAcctName() + "} already exist");
            return new ResponseEntity<UserAccount>(HttpStatus.CONFLICT);
        }
		long key = userAccountService.createUserAccount(userAccount);
		userAccount.setAcctId(key);
		System.out.println("Created UserAccount :" + userAccount);
        
        return new ResponseEntity<UserAccount>(userAccount, HttpStatus.CREATED);
		//return userAccount;
	}
	
	@RequestMapping(value="/useracct/{acctId}",method=RequestMethod.POST,produces="application/json")
	@ResponseBody
	public Map<String,Object> updateUserAccount(
			@PathVariable long acctId,
			@RequestParam String password
			){
		System.out.println("hello PUT");				
		
		//UserAccount userAccount = userAccountService.getUserAccount(acctId);
		
		//logger.info(userAccount.toString());		
		
		UserAccount userAccount = userAccountService.getUserAccount(acctId);
		userAccount.setPassword(password);
		
		userAccountService.updateUserAccount(userAccount);
		
		ModelAndView mav = new ModelAndView();
		Map<String,Object> data = mav.getModel();
		
//		data.put("userAccount", userAccount);
		data.put("userAccountKey", acctId);
		
		//mav.setViewName("redirect:/useracct/"+key);
		return data;
	}
	
	@RequestMapping(value="/useracct-test/{acctId}",method=RequestMethod.PUT)
	@ResponseBody
	public ResponseEntity<?> updateUserAccountTest(
			@PathVariable long acctId,
			@RequestBody UserAccount userAccount
			){
		System.out.println("hello PUT");				
		logger.info("Updating UserAccount with id {" + acctId + "}");
		System.out.println("Updating UserAccount with id {" + acctId + "}");
		 
		UserAccount foundUserAccount = userAccountService.findById(acctId);
 
        if (foundUserAccount == null) {
            logger.error("Unable to update. UserAccount with id {" + acctId + "} not found.");
            System.out.println("Unable to update. UserAccount with id {" + acctId + "} not found.");
            return new ResponseEntity<UserAccount>(HttpStatus.NOT_FOUND);
        }
        userAccount.setAcctId(acctId);
        System.out.println("passed UserAccount :" + userAccount);
        userAccountService.updateUserAccount(userAccount);
        UserAccount updatedUserAccount = userAccountService.findById(acctId);
        System.out.println("Updated UserAccount :" + updatedUserAccount);
        return new ResponseEntity<UserAccount>(updatedUserAccount, HttpStatus.OK);
	}
	
	@RequestMapping(value="/useracct-test/{acctId}",method=RequestMethod.DELETE)
	@ResponseBody
	public ResponseEntity<?> deleteUserAccountTest(@PathVariable long acctId){
		System.out.println("hello DELETE");
		
	    logger.info("Fetching UserAcc with id {"+ acctId + "}");
	    System.out.println("Fetching UserAcc with id {"+ acctId + "}");
	    
	    UserAccount foundUserAccount = userAccountService.findById(acctId);
	    if (foundUserAccount == null) {
            logger.error("UserAcc with id {"+ acctId + "} not found.");
            System.out.println("UserAcc with id {"+ acctId + "} not found.");
            return new ResponseEntity<UserAccount>(HttpStatus.NOT_FOUND);
        }
	    
	    userAccountService.delete(acctId);
        
        return new ResponseEntity<UserAccount>(HttpStatus.NO_CONTENT);
        
	}
	
	//TODO
	public void test(){
		UserAccount obj = new UserAccount();
		convertToJson(obj);
	}
}
