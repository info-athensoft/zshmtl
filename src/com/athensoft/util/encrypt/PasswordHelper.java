package com.athensoft.util.encrypt;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class PasswordHelper {

	public static final String KEY_SHA = "SHA";  
	public static final String KEY_MD5 = "MD5";  
	public static final String KEY_MAC = "HmacMD5";
	
	public static void main(String[] args) {
		String data = "Timon@927jhjghjhfgdfdsas";
		try {
			System.out.println(new BigInteger(encryptMD5(data.getBytes())).toString());
			System.out.println(isValidPassword("-19957514588196642480933102624481703557","Timon@927jhjghjhfgdfdsas"));
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
	}

	public static byte[] encryptMD5(byte[] data) throws NoSuchAlgorithmException {
		if (data == null) {
			return null;
		}
		MessageDigest md5 = MessageDigest.getInstance(KEY_MD5);
		md5.update(data);
		return md5.digest();
	}
	
	public static final boolean isValidPassword(String savedPassword, String unencrytedPassword) throws NoSuchAlgorithmException{
		String sp = savedPassword.trim();
		String up = unencrytedPassword.trim();
		up = new BigInteger(encryptMD5(up.getBytes())).toString();
		boolean isValid = false;
		if(sp.equals(up)){
			isValid = true;
		}
		return isValid;
	}
}
