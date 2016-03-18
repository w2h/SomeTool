package com.road7.blurswf.data;

import java.nio.ByteBuffer;

import com.road7.blurswf.tool.Tools;

public class Rect extends BaseData
{

	public Rect(ByteBuffer buffer,String Name)
	{
		super(buffer, Name);
	}
	
	public int length;
	public int xMinTwips;
	public int xMaxTwips;
	public int yMinTwips;
	public int yMaxTwips;
	@Override
	public void read()
	{
		int start = buffer.position() * 8;
		length = Tools.readUBits(buffer, start, 5);
		xMinTwips = Tools.readSBits(buffer, start + 5, length);
		xMaxTwips = Tools.readSBits(buffer, start + 5 + length, length);
		yMinTwips = Tools.readSBits(buffer, start + 5 + length * 2, length);
		yMaxTwips = Tools.readSBits(buffer, start + 5 + length * 3, length);
	}
	@Override
	public void write(ByteBuffer buffer)
	{
		int start = buffer.position() * 8;
		Tools.wirteBits(buffer, start, 5, length);
		Tools.wirteBits(buffer, start + 5, length, xMinTwips);
		Tools.wirteBits(buffer, start + 5 + length, length, xMaxTwips);
		Tools.wirteBits(buffer, start + 5 + length * 2, length, yMinTwips);
		Tools.wirteBits(buffer, start + 5 + length * 3, length, yMaxTwips);
	}
}
