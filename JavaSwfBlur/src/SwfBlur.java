import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.road7.blurswf.SwfFile;
import com.road7.blurswf.data.KeyWords;
import com.road7.blurswf.data.abc.Class_info;
import com.road7.blurswf.data.abc.Cpool_info;
import com.road7.blurswf.data.abc.Instance_info;
import com.road7.blurswf.data.abc.Method_info;
import com.road7.blurswf.data.abc.Traits_info;
import com.road7.blurswf.data.tags.DoAbcTag;
import com.road7.blurswf.data.tags.Tag;
import com.road7.blurswf.tool.FilesUtil;


public class SwfBlur {

	private static String _blurTargetSwfPath = "C:/Users/honghui.wu/Desktop/mystar_zws.swf";
	private static String _unblurClassConfigPath = "C:/Users/honghui.wu/Desktop/unConfig.xml";
	private static String _unblurStrConfigPath = "C:/Users/honghui.wu/Desktop/unblurStrConfig.xml";
	private static String _baseUnblurConfigPath = "C:/Users/honghui.wu/Desktop/unBlurConfig.xml";
	private static List<String> noEncryptClassArray = new ArrayList<String>();
	private static List<String> needEncryptClassArray = new ArrayList<String>();
	//需要解析的类名
	private static Map< String, DoAbcTag> classNameData = new HashMap<String, DoAbcTag>();

	private static SwfFile swfFile;

	/**
	 * @param args
	 */
	public static void main(String[] args) 
	{
		if(args.length > 0)
		{
			_baseUnblurConfigPath = args[0];
			_unblurClassConfigPath = args[1];
			_unblurStrConfigPath = args[2];
			_blurTargetSwfPath = args[3];
		}
		
		System.out.println("_baseUnblurConfigPath 	= " + _baseUnblurConfigPath);
		System.out.println("_unblurClassConfigPath 	= " + _unblurClassConfigPath);
		System.out.println("_unblurStrConfigPath 	= " + _unblurStrConfigPath);
		System.out.println("_blurTargetSwfPath 		= " + _blurTargetSwfPath);
		
		Document doc = FilesUtil.getXmlDocmentFromPath(_baseUnblurConfigPath);
		Element elmtInfo = doc.getDocumentElement();
		NodeList nodes = elmtInfo.getChildNodes();
		for (int i = 0; i < nodes.getLength(); i++)
		{                
			Node result = nodes.item(i);
			if (result.getNodeType() == Node.ELEMENT_NODE && result.getNodeName().equals("node"))
			{                    
				noEncryptClassArray.add(result.getTextContent());
			}            
		} 
		
		doc = FilesUtil.getXmlDocmentFromPath(_unblurClassConfigPath);
		elmtInfo = doc.getDocumentElement();
		nodes = elmtInfo.getChildNodes();
		for (int i = 0; i < nodes.getLength(); i++)
		{                
			Node result = nodes.item(i);
			if (result.getNodeType() == Node.ELEMENT_NODE && result.getNodeName().equals("node"))
			{                    
				noEncryptClassArray.add(result.getTextContent());
			}            
		} 
		
		doc = FilesUtil.getXmlDocmentFromPath(_unblurStrConfigPath);
		elmtInfo = doc.getDocumentElement();
		nodes = elmtInfo.getChildNodes();
		for (int i = 0; i < nodes.getLength(); i++)
		{                
			Node result = nodes.item(i);
			if (result.getNodeType() == Node.ELEMENT_NODE && result.getNodeName().equals("node"))
			{                    
				KeyWords.arrSelfWords.add(result.getTextContent());
			}            
		} 
		initBlurFile();
	}
	
	private static void initBlurFile()
	{
		ByteBuffer buffer = FilesUtil.getByteBufferFromeFile(_blurTargetSwfPath);
		swfFile = new SwfFile(buffer); 
		List<Tag> tags = swfFile.tags;
		List<DoAbcTag> doABCtags = new ArrayList<DoAbcTag>();
		for(Tag tag : tags)
		{
			if(tag instanceof DoAbcTag)//代码标签，需要混淆的标签全在这里面
			{
				doABCtags.add((DoAbcTag)tag);
			}
		}
		parseTag(doABCtags);
	}
	
	private static void parseTag(List<DoAbcTag> doABCtags)
	{
		Comparator<DoAbcTag> comparator = new Comparator<DoAbcTag>()
		{   
			public int compare(DoAbcTag s1, DoAbcTag s2) 
			{   
				int result = s1.Name.compareTo(s2.Name);
				return -result;
			}
		};
		Collections.sort(doABCtags,comparator);
		for(DoAbcTag doABCtag : doABCtags)
		{
			if(doABCtag.Name != "")
			{
				addNode(doABCtag.Name, doABCtag);
			}
		}
		startBlur();
	}
	
	private static void addNode(String name, DoAbcTag doABCtag)
	{
		if (name.indexOf("/") >= 0)
		{
			 String str = name.substring(name.indexOf("/") + 1);
			 addNode(str, doABCtag);
		}
		else
		{
			classNameData.put(name, doABCtag);
			if(doABCtag.Name.indexOf("pickgliss") >= 0 || doABCtag.Name.indexOf("greensock") >= 0)
			{
				noEncryptClassArray.add(name);
			}
			if(noEncryptClassArray.indexOf(name) < 0)
			{
				needEncryptClassArray.add(name);
			}
		}
	}
	
	private static void startBlur()
	{
		List<String> noEncryptStr = getWordsByClass(noEncryptClassArray);
		KeyWords.arrSelfWords.addAll(noEncryptStr);
		List<String> arrNeedEncryptStr = getWordsByClass(needEncryptClassArray);
		KeyWords.arrNeedEncryptStr = arrNeedEncryptStr;
		
		SwfFile.addEncryptDoABCTag = false;
		swfFile.encrypt();
		try {
			swfFile.encode();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String strDefaultFileName  = _blurTargetSwfPath.replace(".swf", "_encrypt1.swf");
		System.out.println("strDefaultFileName : = " + strDefaultFileName);
		FilesUtil.saveBytes(strDefaultFileName, swfFile.buffer);
		
		String str = "";
		@SuppressWarnings("rawtypes")
		Iterator iter = KeyWords.dictReplace.entrySet().iterator();
		while (iter.hasNext()) 
		{
			@SuppressWarnings("rawtypes")
			Map.Entry entry = (Map.Entry) iter.next();
			Object key = entry.getKey();
			Object val = entry.getValue();
			str += (key + "==" + val + "\n");
		}
		ByteBuffer b = ByteBuffer.wrap(str.getBytes());
		String dictReplaceFileName  = _unblurClassConfigPath.replace(".xml", "_instead.xml");
		FilesUtil.saveBytes(dictReplaceFileName, b);
	}
	
	private static List<String> getWordsByClass(List<String> data)
	{
		List<String> result = new ArrayList<String>();
		addEncryptPackageName(data,result);
		addEncryptMethodName(data,result);
		addEncryptFieldName(data,result);
		return result;
	}
	
	//根据所选择的，添加需要混淆的包名
	private static void addEncryptPackageName(List<String> data,List<String> result)
	{
		int len = data.size();
		String packageName;
		String className;
		DoAbcTag doABCtag;
		
		for(int i = 0; i < len; i++)
		{
			className = data.get(i);
			doABCtag = classNameData.get(className);
			
			if(doABCtag != null)
			{
				result.add(doABCtag.Name);
				if(doABCtag.Name.indexOf("/") >= 0)
				{
					packageName = doABCtag.Name.substring(0, doABCtag.Name.indexOf("/"));		
					packageName = packageName.replace('/', '.');
					if(result.indexOf(packageName) == -1)
					{
						result.add(doABCtag.Name);
					}
				}
			}
		}
	}
	
	//根据所选择的，添加需要混淆的方法
	private static void addEncryptMethodName(List<String> data,List<String> result)
	{
		int len = data.size();
		String methodName;
		String className;
		DoAbcTag doABCtag;
		
		for(int i = 0; i < len; i++)
		{
			className = data.get(i);
			doABCtag = classNameData.get(className);
			if(doABCtag != null)
			{
				for(Method_info method_info : doABCtag.abcFile.arrMethod)
				{
					if(method_info.strName == "")
						continue;
					methodName = method_info.strName.substring(method_info.strName.lastIndexOf('.') + 1, method_info.strName.length());
					if(result.indexOf(methodName) == -1)
					{
//						result.add(methodName);
					}
				}
			}
		}
	}
	
	//根据所选择的，添加需要混淆的属性名字
	private static void addEncryptFieldName(List<String> data,List<String> result)
	{
		int len  = data.size();
		for(int i = 0; i < len; i++)
		{
			String className = data.get(i);
			DoAbcTag doABCtag = classNameData.get(className);
			if(doABCtag != null)
			{
				Cpool_info cpool_info = doABCtag.abcFile.cpool_info;
				
				for(Class_info class_info : doABCtag.abcFile.arrClass)
				{
					parseTraits(class_info.arrTraits, cpool_info,result);
				}
				
				for(Instance_info instance_info : doABCtag.abcFile.arrInstance)
				{
					parseTraits(instance_info.arrTraits, cpool_info,result);
				}
			}
		}
	}
	private static void parseTraits(List<Traits_info> traits,Cpool_info cpool_info,List<String> result)
	{
		String field;
		for(Traits_info traits_info : traits)
		{
			if(traits_info.getTraitType() == Traits_info.Trait_Const || traits_info.getTraitType() == Traits_info.Trait_Slot)
			{
				field = cpool_info.arrString.get(cpool_info.arrMultiname.get(traits_info.name - 1).name - 1).getStr();
				
				if(result.indexOf(field) == -1)
				{
//					result.add(field);
				}
			}
		}
	}
}
