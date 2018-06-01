package com.athensoft.util.id;

import java.security.SecureRandom;

/**
 * https://www.jianshu.com/p/61817cf48cc3
 * @author Athens
 *
 */
public class CustomUUID {
	// ��׼ʱ��
    private long twepoch = 1288834974657L; //Thu, 04 Nov 2010 01:42:54 GMT
    // �����־λ��
    private final static long regionIdBits = 3L;
    // ������ʶλ��
    private final static long workerIdBits = 10L;
    // ���к�ʶλ��
    private final static long sequenceBits = 10L;

    // �����־ID���ֵ
    private final static long maxRegionId = -1L ^ (-1L << regionIdBits);
    // ����ID���ֵ
    private final static long maxWorkerId = -1L ^ (-1L << workerIdBits);
    // ���к�ID���ֵ
    private final static long sequenceMask = -1L ^ (-1L << sequenceBits);

    // ����IDƫ����10λ
    private final static long workerIdShift = sequenceBits;
    // ҵ��IDƫ����20λ
    private final static long regionIdShift = sequenceBits + workerIdBits;
    // ʱ���������23λ
    private final static long timestampLeftShift = sequenceBits + workerIdBits + regionIdBits;

    private static long lastTimestamp = -1L;

    private long sequence = 0L;
    private final long workerId;
    private final long regionId;

    public CustomUUID(long workerId, long regionId) {

        // ���������Χ���׳��쳣
        if (workerId > maxWorkerId || workerId < 0) {
            throw new IllegalArgumentException("worker Id can't be greater than %d or less than 0");
        }
        if (regionId > maxRegionId || regionId < 0) {
            throw new IllegalArgumentException("datacenter Id can't be greater than %d or less than 0");
        }

        this.workerId = workerId;
        this.regionId = regionId;
    }

    public CustomUUID(long workerId) {
        // ���������Χ���׳��쳣
        if (workerId > maxWorkerId || workerId < 0) {
            throw new IllegalArgumentException("worker Id can't be greater than %d or less than 0");
        }
        this.workerId = workerId;
        this.regionId = 0;
    }

    public long generate() {
        return this.nextId(false, 0);
    }

    /**
     * ʵ�ʲ��������
     *
     * @param isPadding
     * @param busId
     * @return
     */
    private synchronized long nextId(boolean isPadding, long busId) {

        long timestamp = timeGen();
        long paddingnum = regionId;

        if (isPadding) {
            paddingnum = busId;
        }

        if (timestamp < lastTimestamp) {
            try {
                throw new Exception("Clock moved backwards.  Refusing to generate id for " + (lastTimestamp - timestamp) + " milliseconds");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        //����ϴ�����ʱ��͵�ǰʱ����ͬ,��ͬһ������
        if (lastTimestamp == timestamp) {
            //sequence��������Ϊsequenceֻ��10bit�����Ժ�sequenceMask����һ�£�ȥ����λ
            sequence = (sequence + 1) & sequenceMask;
            //�ж��Ƿ����,Ҳ����ÿ�����ڳ���1024����Ϊ1024ʱ����sequenceMask���룬sequence�͵���0
            if (sequence == 0) {
                //�����ȴ�����һ����
                timestamp = tailNextMillis(lastTimestamp);
            }
        } else {
            // ������ϴ�����ʱ�䲻ͬ,����sequence��������һ���뿪ʼ��sequence�������´�0��ʼ�ۼ�,
            // Ϊ�˱�֤β������Ը���һЩ,���һλ����һ�������
            sequence = new SecureRandom().nextInt(10);
        }

        lastTimestamp = timestamp;

        return ((timestamp - twepoch) << timestampLeftShift) | (paddingnum << regionIdShift) | (workerId << workerIdShift) | sequence;
    }

    // ��ֹ������ʱ���֮ǰ��ʱ�仹ҪС������NTP�ز������⣩,��������������.
    private long tailNextMillis(final long lastTimestamp) {
        long timestamp = this.timeGen();
        while (timestamp <= lastTimestamp) {
            timestamp = this.timeGen();
        }
        return timestamp;
    }

    // ��ȡ��ǰ��ʱ���
    protected long timeGen() {
        return System.currentTimeMillis();
    }
    
    public static void main(String[] args){
    	CustomUUID c = new CustomUUID(500);
    	System.out.println(c.maxWorkerId);
    	for(int i=0; i<50; i++){
    		System.out.println(new CustomUUID(1000).generate());
		}
    	
    }

}
