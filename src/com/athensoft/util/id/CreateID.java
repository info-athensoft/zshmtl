package com.athensoft.util.id;

public class CreateID {
	private final static String str = "1234567890abcdefghijklmnopqrstuvwxyz";
	private final static int pixLen = str.length();
	private static volatile int pixOne = 0;
	private static volatile int pixTwo = 0;
	private static volatile int pixThree = 0;
	private static volatile int pixFour = 0;

	/**
	 * ���ɶ�ʱ���ڲ����ظ��ĳ���Ϊ15λ���ַ�������Ҫ����ISSP-MOCģ�����ݿ���������ʹ�á�<br/>
	 * ���ɲ���Ϊ��ȡ��1970��1��1����ʱ�����������ǰʱ��ĺ�������16�����ַ���ֵ�����ַ���ֵΪ11λ<br/>
	 * ��׷����λ"0-z"�������ַ���.<br/>
	 * ���ϵͳʱ������Ϊ����<b>2304-6-27 7:00:26<b/>��ʱ�䣬���ᱨ��<br/>
	 * ����ϵͳ���صĺ����������ϵͳ��ϵ�ܴ����Ա���������׼ȷ�����������Ա�֤��ϵͳ���ص�һ��������������36��4�η�����1679616��ID���ظ���<br/>
	 * 
	 * @return 15λ��ʱ�䲻���ظ����ַ�����<br/>
	 * @author lixunhui@qq.com
	 * @since JDK1.6
	 */
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

	/**
	 * ����������ݿ�15λID
	 * 
	 * @return String 15λ�����ID
	 */
	/*
	 * public synchronized static String generate() { Long _ruleId1 =
	 * Long.valueOf(Calendar.getInstance().getTimeInMillis()); Integer _ruleId2
	 * = Integer.valueOf(i++); if (i > 99) { i = 10; } return (new
	 * Long(_ruleId1.toString() + _ruleId2.toString())).toString(); }
	 */

	/**
	 * ����������ݿ�9λID
	 * 
	 * @return String 9λ�����ID
	 */
	public synchronized static String generate9() {

		int n = (int) (Math.random() * 900000000) + 100000000;
		return n + "";
	}

	/**
	 * ����15λ��ĸ������ID
	* bl Ϊtrue��Ϊ��ͣʱ��
	 * 
	 * @return string 15λ���ID
	 */
	public synchronized static String generateStrID(String str) {
		int count = 0;
		String time = Long.toString(System.currentTimeMillis());
		time = time.substring(time.length() - 9, time.length());
		if (count > 99) {
			count = 0;
		} else {
			count++;
		}
		if (count < 10) {
			str += time + "0" + count;
		} else {
			str += time + count;
		}
		return str;
	}
	
	public static void main(String[] args){
		//System.out.println(generate());
		//System.out.println(generate9());
		for(int i=0; i<100; i++){
			//System.out.println(generateStrID("ATEHNS"));
			System.out.print(generate()+"\t");
			if(i%10==0 && i>0){
				System.out.println();
			}
//			System.out.println(System.nanoTime());
		}
	}
}
