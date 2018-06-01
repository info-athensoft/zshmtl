package com.athensoft.util.id;

public class GeneralIDHelper {
	private final static String str = "1234567890abcdefghijklmnopqrstuvwxyz";
	private final static int pixLen = str.length();
	private static volatile int pixOne = 0;
	private static volatile int pixTwo = 0;
	private static volatile int pixThree = 0;
	private static volatile int pixFour = 0;

	final public synchronized static String generate() {
		StringBuilder sb = new StringBuilder();// ����һ��StringBuilder
		sb.append(Long.toHexString(System.currentTimeMillis()));// ����ӵ�ǰʱ��ĺ���ֵ��16����
		pixFour++;
		if (pixFour == pixLen) {
			pixFour = 0;
			pixThree++;
			if (pixThree == pixLen) {
				pixThree = 0;
				pixTwo++;
				if (pixTwo == pixLen) {
					pixTwo = 0;
					pixOne++;
					if (pixOne == pixLen) {
						pixOne = 0;
					}
				}
			}
		}
		return sb.append(str.charAt(pixOne)).append(str.charAt(pixTwo)).append(str.charAt(pixThree)).append(str.charAt(pixFour)).toString();
	}
	
	public static void main(String[] args){
		//System.out.println(generate());
		
		for(int i=0; i<100; i++){
			System.out.println(generateLong());
		}
	}
	
	final public synchronized static long generateLong() {
		long t = System.nanoTime();
		int r = (int) (Math.floor(Math.random() * 1000));
		//System.out.print(t+"\t");
		return t*1000+r;
	}
	
}
