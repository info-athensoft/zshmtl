package com.athensoft.util.time;

import java.util.Calendar;
import java.util.Date;

public class DatetimeHelper {
	public static void main(String[] args){
		Date date = new Date();
	    Calendar cal = Calendar.getInstance();
	    cal.setTime(date);//������ʱ��
	    cal.add(Calendar.YEAR, 1);//����һ��
	    //cd.add(Calendar.DATE, n);//����һ��  
	   //cd.add(Calendar.DATE, -10);//��10��  
	    //cd.add(Calendar.MONTH, n);//����һ����   
	    System.out.println("���::"+cal.getTime());
	}
	
	
	/**
	 * change year by offset, if positive then add years by offset number, otherwise subtract years
	 * @param orginalDate
	 * @param offset
	 * @return
	 */
	
	public static Date shiftYear(Date orginalDate, int offset){
		Calendar cal = Calendar.getInstance();
	    cal.setTime(orginalDate);		//set start time
	    cal.add(Calendar.YEAR, offset);	
	    return cal.getTime();
	}
	
	/**
	 * add one calendar year
	 * @param orginalDate
	 * @return
	 */
	public static Date addOneYear(Date orginalDate){
		return shiftYear(orginalDate, 1);
	}
	
	
	
	
}
