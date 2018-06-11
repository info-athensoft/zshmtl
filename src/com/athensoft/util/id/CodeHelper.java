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
	 * // 获取随机的boolean值 boolean b = random.nextBoolean(); // 获取随机的数组buf[] byte[]
	 * buf = new byte[BUFFER_LEN]; random.nextBytes(buf); //
	 * 获取随机的Double值，范围[0.0, 1.0) double d = random.nextDouble(); //
	 * 获取随机的float值，范围[0.0, 1.0) float f = random.nextFloat(); // 获取随机的int值 int
	 * i1 = random.nextInt(); // 获取随机的[0,100)之间的int值 int i2 =
	 * random.nextInt(100); // 获取随机的高斯分布的double值 double g =
	 * random.nextGaussian(); // 获取随机的long值 long l = random.nextLong();
	 * 
	 * System.out.printf(
	 * "\n---- %s ----\nb=%s, d=%s, f=%s, i1=%s, i2=%s, g=%s, l=%s, buf=[",
	 * title, b, d, f, i1, i2, g, l); for (byte bt : buf) System.out.printf(
	 * "%s, ", bt); System.out.println("]"); }
	 */
}
