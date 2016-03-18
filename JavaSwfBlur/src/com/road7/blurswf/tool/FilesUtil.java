package com.road7.blurswf.tool;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;

public class FilesUtil
{

	public static final String PNG = "png";
	public static final String JPG = "jpg";
	
	
	public static Document getXmlDocmentFromPath(String path)
	{
		try       
		{            
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = factory.newDocumentBuilder();
			Document doc = db.parse(new File(path));
			return doc;
		}        
		catch (Exception e)
		{            
			e.printStackTrace();        
		}
		return null;
	}
	
	public static ByteBuffer getByteBufferFromeFile(String path)
	{
		try {
			FileChannel channel = new RandomAccessFile(path,"r").getChannel();
			ByteBuffer byteBuf = ByteBuffer.allocate((int) channel.size());
//			byteBuf.order(ByteOrder.LITTLE_ENDIAN);
			channel.read(byteBuf);
			byteBuf.position(0);
			return byteBuf;//3811836
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 保存2进制文件
	 * @param savePath
	 * @param bytes
	 *
	 */
	public static void saveBytes(String savePath,ByteBuffer buffer)
	{
		FileChannel channel;
		try {
			channel = new RandomAccessFile(savePath,"rw").getChannel();
			buffer.position(0);
			channel.write(buffer);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}