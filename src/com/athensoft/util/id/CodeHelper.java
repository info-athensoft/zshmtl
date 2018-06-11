package com.athensoft.util.id;

import java.util.Random;

public class CodeHelper {

	/**
	 * Generate 6 digital number between 100000 - 999999
	 * 
	 * @return
	 */
	public static final String createCode() {
		return createCode(6);
	}

	/**
	 * Generate a number by numLength
	 * 
	 * @param numLength
	 * @return
	 */
	public static final String createCode(int numLength) {

		final int MAX_LENGTH = 9;

		if (numLength > MAX_LENGTH || numLength < 1) {
			numLength = MAX_LENGTH;
		}

		Random random = new Random();
		double d = Math.pow(10, numLength);
		int a = Math.abs((int) d);
		int i1 = 0;

		// System.out.print(i1*10/a+"\t");
		// System.out.println(i1);

		do {
			i1 = random.nextInt(a);
		} while (i1 * 10 / a == 0);
		return String.valueOf(i1);
	}

	public static void main(String[] args) {
		for (int i = 0; i < 50; i++) {
			System.out.println(createCode());
		}
	}

	/*
	 * private static void testRandomAPIs(Random random, String title) { final
	 * int BUFFER_LEN = 5;
	 * 
	 * // ��ȡ�����booleanֵ boolean b = random.nextBoolean(); // ��ȡ���������buf[] byte[]
	 * buf = new byte[BUFFER_LEN]; random.nextBytes(buf); //
	 * ��ȡ�����Doubleֵ����Χ[0.0, 1.0) double d = random.nextDouble(); //
	 * ��ȡ�����floatֵ����Χ[0.0, 1.0) float f = random.nextFloat(); // ��ȡ�����intֵ int
	 * i1 = random.nextInt(); // ��ȡ�����[0,100)֮���intֵ int i2 =
	 * random.nextInt(100); // ��ȡ����ĸ�˹�ֲ���doubleֵ double g =
	 * random.nextGaussian(); // ��ȡ�����longֵ long l = random.nextLong();
	 * 
	 * System.out.printf(
	 * "\n---- %s ----\nb=%s, d=%s, f=%s, i1=%s, i2=%s, g=%s, l=%s, buf=[",
	 * title, b, d, f, i1, i2, g, l); for (byte bt : buf) System.out.printf(
	 * "%s, ", bt); System.out.println("]"); }
	 */
}
