import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.ByteBuffer;

import com.road7.blurswf.tool.FilesUtil;


public class TestCompress {

	/**
	 * @param args
	 * @throws IOException 
	 */
	public static void main(String[] args) throws IOException {
		
		// TODO Auto-generated method stub
		File file = new File("C:/Users/alan/Desktop/test.txt");
		FileWriter write = new FileWriter(file);
		ByteBuffer bytearr = FilesUtil.getByteBufferFromeFile("C:/Users/alan/Desktop/test1.txt");
		bytearr.position(0);
//		o.write(bytearr.array());
		int len = bytearr.capacity();
		for (int i =0; i < len; i ++)
		{
			if(i % 20 == 0)
			{
				write.write("\n");
			}
			write.write(" " + bytearr.get());
		}
//		ByteArrayOutputStream bos = new ByteArrayOutputStream();
//		ZLibUtils.compress(bytearr.array(),bos);
//		byte[] bytea = bos.toByteArray();
//		bytearr = ByteBuffer.wrap(bytea);
//		
//		ByteArrayInputStream is = new ByteArrayInputStream(bytearr.array(),0,bytearr.array().length) ;
//		bytearr = ZLibUtils.decompress(is);
		
//		FilesUtil.saveBytes("C:/Users/alan/Desktop/ack/javaFile.txt",bytearr);
	}

}
