package com.athensoft.util.id;

public class HashCodeHelper {
	
	public static long getHashCodeForString(String s){
		return s.hashCode();
	}
	
	public static void main(String[] args){
		for(int i=0; i<5; i++){
			System.out.println(getHashCodeForString("java�����̳���ȥ�������˵��ɻ���˹�ٷҰ�����˹�ٷҷ���ʱ�����尢˹�ٷ� ��˹����ɻ����ֶ���������������ʦ�ط�"));
		}
	
		for(int i=0; i<5; i++){
			System.out.println(getHashCodeForString("Aa"));
		}
	
		for(int i=0; i<5; i++){
			System.out.println(getHashCodeForString("BB"));
		}	
	}
}
