package com.road7.blurswf.tool;

import java.nio.ByteBuffer;

public class ByteTools {

	public static String getStrFromBuf(ByteBuffer buffer, int MaxLen) {
		String value = "";
		byte[] btemp = new byte[MaxLen];
		int avaibleBytes = buffer.array().length - buffer.position();
		if (!(avaibleBytes > 0)) {
			return "";
		}
		for (int i = 0; i < MaxLen; i++) {
			btemp[i] = buffer.get();
			if (btemp[i] == 0) {
				break;
			}
		}
		value = new String(btemp, 0, MaxLen);
		return value;
	}

	public static byte getByte(ByteBuffer buffer) {
		byte value = buffer.get();
		return value;
	}

	public static int getInt(ByteBuffer buffer) {
		int value = 0;
		byte[] b = new byte[4];
		for (int i = 0; i < 4; i++) {
			b[i] = buffer.get();
		}
		value = b[0] & 0xff | (b[1] & 0xff) << 8 | (b[2] & 0xff) << 16
				| (b[3] & 0xff) << 24;
		return value;
	}

	public static int getUnsignedByte(ByteBuffer buffer) {
		byte byteValue = buffer.get();
		int intValue = byteValue & 0xFF;
		return intValue;
	}

	public static int getUnsignedShort(ByteBuffer buffer) {
		byte[] b = new byte[2];
		b[0] = buffer.get();
		b[1] = buffer.get();
		int value = b[0] & 0xff | (b[1] & 0xff) << 8;
		return value;
	}

	public static long getUnsignedInt(ByteBuffer buffer) {
		long value = 0;
		byte[] array = new byte[4];
		array[0] = buffer.get();
		array[1] = buffer.get();
		array[2] = buffer.get();
		array[3] = buffer.get();
		value = ((long) (array[0] & 0xff)) | ((long) (array[1] & 0xff)) << 8
				| ((long) (array[2] & 0xff)) << 16
				| ((long) (array[3] & 0xff)) << 24;
		return value;
	}

	public static int getByteByIndex(ByteBuffer buffer, int index) {
		byte byteValue = buffer.get(index);
		int intValue = byteValue & 0xFF;
		return intValue;
	}

	public static double getDouble(ByteBuffer buffer) {
		long l;
		
		int[] b = new int[8];
		b[0] = ByteTools.getUnsignedByte(buffer);
		b[1] = ByteTools.getUnsignedByte(buffer);
		b[2] = ByteTools.getUnsignedByte(buffer);
		b[3] = ByteTools.getUnsignedByte(buffer);
		b[4] = ByteTools.getUnsignedByte(buffer);
		b[5] = ByteTools.getUnsignedByte(buffer);
		b[6] = ByteTools.getUnsignedByte(buffer);
		b[7] = ByteTools.getUnsignedByte(buffer);
		
		l = b[0];
		l += ((long) b[1] << 8);
		l += ((long) b[2] << 16);
		l += ((long) b[3] << 24);
		l += ((long) b[4] << 32);
		l += ((long) b[5] << 40);
		l += ((long) b[6] << 48);
		l += ((long) b[7] << 56);
		double d = Double.longBitsToDouble(l);
		return d;
	}
}
