package com.athensoft.uaas.controller;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.athensoft.uaas.entity.Function;
import com.athensoft.uaas.service.FunctionService;

@Controller
@RequestMapping("/uaas/function")
public class FunctionController {

	private final static Logger logger = Logger.getLogger(FunctionController.class);

	private static final String ACTION_EDIT = "Edit";
	private static final String ACTION_DELETE = "Delete";

	@Autowired
	private FunctionService functionService;

	public void setFunctionService(FunctionService functionService) {
		this.functionService = functionService;
	}

	@RequestMapping(value = "/list")
	public String gotoRoleList() {
		String viewName = "uaas/function_list";
		return viewName;
	}

	@RequestMapping(value = "/functionListData", produces = "application/json")
	@ResponseBody
	public Map<String, Object> getDataFunctionList() {
		logger.info("entering... /uaas/functionListData");

		ModelAndView mav = new ModelAndView();

		// data
		List<Function> listFunction = functionService.getAllFunctions();
		logger.info("Length of role entries: " + listFunction.size());

		String[][] data = getData(listFunction, ACTION_EDIT);

		Map<String, Object> model = mav.getModel();

		model.put("draw", new Integer(1));
		model.put("recordsTotal", new Integer(5));
		model.put("recordsFiltered", new Integer(5));
		model.put("data", data);
		model.put("customActionStatus", "OK");
		model.put("customActionMessage", "Data loaded");

		logger.info("leaving... /uaas/functionListData");
		return model;
	}

	private String[][] getData(List<Function> list, String actionName) {
		int entryLength = list.size();
		final int COLUMN_NUM = 10;
		String[][] data = new String[entryLength][COLUMN_NUM];

		String field0 = ""; // check box
		String field1 = ""; // role id
		String field2 = ""; // role code
		String field3 = ""; // role level
		String field4 = ""; // role type
		String field5 = ""; // role name
		String field6 = ""; // role status
		String field7 = ""; // action
		String field8 = ""; // action
		String field9 = ""; // action

		for (int i = 0; i < entryLength; i++) {
			field0 = "<input type='checkbox' name='id[]' value=" + list.get(i).getFunctionId() + ">";
			field1 = list.get(i).getFunctionId() + "";
			field2 = list.get(i).getParentId() + "";
			field3 = list.get(i).getFunctionPackage();
			field4 = list.get(i).getFunctionName();
			field5 = list.get(i).getFunctionCode();
			field6 = list.get(i).getFunctionUrl();
			field7 = list.get(i).getSeqNo() + "";

			int intFunctionStatus = list.get(i).getFunctionStatus();
			String[] functionStatusPair = getFunctionStatusPair(intFunctionStatus);
			String funtionStatusKey = functionStatusPair[0];
			String functionStatus = functionStatusPair[1];

			field8 = "<span class='label label-sm label-" + funtionStatusKey + "'>" + functionStatus + "</span>";
			field9 = "<a href='/uaas/function/list' class='btn btn-xs default btn-editable'><i class='fa fa-pencil'></i> "
					+ actionName + "</a>";

			data[i][0] = field0;
			data[i][1] = field1;
			data[i][2] = field2;
			data[i][3] = field3;
			data[i][4] = field4;
			data[i][5] = field5;
			data[i][6] = field6;
			data[i][7] = field7;
			data[i][8] = field8;
			data[i][9] = field9;
		}

		return data;
	}

	private String[] getFunctionStatusPair(int intObjectStatus) {
		String[] objectStatusPair = new String[2];

		String objectStatus = "";
		String objectStatusKey = "";
		switch (intObjectStatus) {
		case Function.ACTIVE:
			objectStatus = "Active";
			objectStatusKey = "success";
			break;
		case Function.INACTIVE:
			objectStatus = "Inactive";
			objectStatusKey = "warning";
			break;
		case Function.PENDING:
			objectStatus = "Pending";
			objectStatusKey = "danger";
			break;
		case Function.DISABLED:
			objectStatus = "Disabled";
			objectStatusKey = "default";
			break;
		default:
			break;
		}

		objectStatusPair[0] = objectStatusKey;
		objectStatusPair[1] = objectStatus;

		return objectStatusPair;
	}

	// TODO
	public void test() {
		System.out.println(ACTION_DELETE);
	}
}
