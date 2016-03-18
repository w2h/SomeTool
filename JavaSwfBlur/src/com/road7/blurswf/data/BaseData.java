package com.road7.blurswf.data;

import java.nio.ByteBuffer;

public class BaseData 
{
	protected String _name;
	protected ByteBuffer buffer;
	public BaseData(ByteBuffer buffer, String $name)
	{
		this.buffer = buffer;
		_name = $name;
	}
	
	public void read()
	{

	}

	public void write(ByteBuffer buffer)
	{
		
	}

	public String toString()
	{
		return "BaseData";
	}

	public void encrypt()
	{

	}

	public void collectEncryptName()
	{
		
	}
}
