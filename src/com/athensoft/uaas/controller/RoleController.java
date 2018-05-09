package com.athensoft.uaas.controller;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.athensoft.uaas.entity.Role;
import com.athensoft.uaas.entity.RoleStatus;
import com.athensoft.uaas.service.RoleService;

@Controller
@RequestMapping("/uaas/role")
public class RoleController {
	
	private final static Logger logger = Logger.getLogger(RoleController.class);
	
	private static final String ACTION_EDIT = "Edit";
	private static final String ACTION_DELETE = "Delete";
	
	@Autowired
	private RoleService roleService;

	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}
	
	@RequestMapping(value="/list")
	public String gotoRoleList(){
		String viewName = "uaas/role_list";
		return viewName;
	}
	
	
	@RequestMapping(value="/roleListData",produces="application/json")
	@ResponseBody
	public Map<String,Object> getDataRoleList(){
		logger.info("entering /uaas/roleListData");
		
		ModelAndView mav = new ModelAndView();
		
		//data
		List<Role> listRole = roleService.getAllRoles();
		logger.info("Length of role entries: "+ listRole.size());
		
		String[][] data = getData(listRole, ACTION_EDIT);
		
		Map<String, Object> model = mav.getModel();
		
		model.put("draw", new Integer(1));
		model.put("recordsTotal", new Integer(5));
		model.put("recordsFiltered", new Integer(5));
		model.put("data", data);
		model.put("customActionStatus","OK");
		model.put("customActionMessage","Data loaded");
		
		logger.info("leaving /events/eventsNewsListData");
		return model;
	}
	
	private String[][] getData(List<Role> list, String actionName){
		int entryLength = list.size();
		final int COLUMN_NUM = 8;
		String[][] data = new String[entryLength][COLUMN_NUM];
		
		String field0 = "";	//check box
		String field1 = "";	//role id
		String field2 = "";	//role code
		String field3 = "";	//role level
		String field4 = "";	//role type
		String field5 = "";	//role name
		String field6 = "";	//role status
		String field7 = "";	//action
		
		for(int i=0; i<entryLength ; i++){			
			field0 = "<input type='checkbox' name='id[]' value="+list.get(i).getRoleId()+">";
			field1 = list.get(i).getRoleId()+"";
			field2 = list.get(i).getRoleCode()+"";
			field3 = list.get(i).getRoleLevel()+"";
			field4 = list.get(i).getRoleType()+"";
			field5 = list.get(i).getRoleName();
			
			int intRoleStatus = list.get(i).getRoleStatus();
			String[] roleStatusPair = getRoleStatusPair(intRoleStatus);
			String roleStatusKey = roleStatusPair[0];
			String roleStatus = roleStatusPair[1];
			
			field6 = "<span class='label label-sm label-"+roleStatusKey+"'>"+roleStatus+"</span>";
			field7 = "<a href='/uaas/role/list' class='btn btn-xs default btn-editable'><i class='fa fa-pencil'></i> "+actionName+"</a>";
			
			
			data[i][0] = field0;
			data[i][1] = field1;
			data[i][2] = field2;
			data[i][3] = field3;
			data[i][4] = field4;
			data[i][5] = field5;
			data[i][6] = field6;
			data[i][7] = field7;
		}
		
		return data;
	}
	
	private String[] getRoleStatusPair(int intObjectStatus){
		String[] objectStatusPair = new String[2];
		
		String objectStatus = "";
		String objectStatusKey = "";
		switch(intObjectStatus){
			case RoleStatus.ACTIVE: 
				objectStatus = "Active";
				objectStatusKey = "success";
				break;
			case RoleStatus.INACTIVE: 
				objectStatus = "Inactive";
				objectStatusKey = "warning";
				break;
			case RoleStatus.PENDING: 
				objectStatus = "Pending";
				objectStatusKey = "danger";
				break;
			case RoleStatus.DISABLED: 
				objectStatus = "Disabled";
				objectStatusKey = "default";
				break;
			default: 
				break;
		}
		
		objectStatusPair[0]=objectStatusKey;
		objectStatusPair[1]=objectStatus;
		
		
		return objectStatusPair;
	}
	
	//TODO
	public void test(){
		System.out.println(ACTION_DELETE);
	}
}
