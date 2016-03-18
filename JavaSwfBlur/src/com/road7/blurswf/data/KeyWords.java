package com.road7.blurswf.data;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class KeyWords {
	public KeyWords()
	{
	}

	/**
	 * 收集包名
	 */
	public static Boolean isEncryptPackage = false;
	/**
	 * 收集类名
	 */
	public static Boolean isEncryptClass = false;
	/**
	 * 收集方法名
	 */
	public static Boolean isEncryptMethod = false;
	/**
	 * 收集变量名
	 */
	public static Boolean isEncryptVariable = false;
	/**
	 * 用于记录被替换字符串的原始字符和替换后字符，替换时无论如何都应该先搜索这个字典
	 * ，这样保证相同的字符替换后不会出现字符差异
	 */
	public static Map<String,String> dictReplace = new HashMap<String, String>();

	public static Boolean isKeyWords(String str)
	{
		str = str.replace("/",".");
		return arrWords.indexOf(str) >= 0 || arrSelfWords.indexOf(str) >= 0;
	}
	
	/** 需要加密的字符串，所有Method_body_info中解析出的code的initproperty指令参数 */
	public static List<String> arrNeedEncryptStr = new ArrayList<String>();

	public static Boolean addNeedEncryptStr(String str)
	{
		if(arrNeedEncryptStr.indexOf(str) == -1)
		{
			arrNeedEncryptStr.add(str);
			return true;
		}
		else
		{
		}
		return false;
	}
	/**
	 * 是否将混淆的关键字替换成（par_1、par_2....）格式
	 */
	public static Boolean isSimpleMode = false;
	public static int strCount = 0;

	public static String getNextEncryptStr(String str)
	{
		strCount++;
		if(isSimpleMode)
		{
			return "par_" + strCount;
		}
		return randomString(str);
	}

	public static List<String> randomList = new ArrayList<String>();
	public static Map<String, String> randomData = new HashMap<String, String>();

	public static String randomString(String str) 
	{
		String s = randomData.get(str);
		if(s != "" && s != null)
		{
			return s;
		}
		int length  = str.length();
		s = "";
		for(int i = 0; i < length; i++)
		{
			s += (char)(32 + (int)(100 * Math.random()));
		}

		if(randomList.indexOf(s) == -1)
		{
			randomList.add(s);
			randomData.put(str,s);
		}
		else
		{
			return randomString(str);
		}
		return s;
	}

	public static String encryptStr(String str)
	{
		if(arrNeedEncryptStr.indexOf(str) >= 0 && !isKeyWords(str))
		{
			if(dictReplace.get(str) == null)
			{
				dictReplace.put(str, getNextEncryptStr(str));
			}
			return dictReplace.get(str);
		}
		return str;
	}
	/**
	 * swf专有的关键字
	 * 比如要加载一个url是str="my.swf"的文件
	 * 那这个str就不能混淆，必须吧"my.swf"放到关键字里
	 */
	public static List<String> arrSelfWords = new ArrayList<String>();
	/**
	 * 公共关键字
	 */
	public static final List<String> arrWords = new ArrayList<String>(){
		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		{
			add("");add("CHANGE");add("backgroundColor");add("close");add("connect");add("colorTransform");add("hide");add("show");add("type");
			add("TextField");add("flash.text");add("text");add("addChild");add("void");add("int");add("file");add("flash.display");add("Sprite");
			add("Object");add("EventDispatcher");add("flash.events");add("DisplayObject");add("InteractiveObject");add("DisplayObjectContainer");
			add("graphics");add("beginFill");add("drawRect");add("endFill");add("loaderInfo");add("Event");add("addEventListener");
			add("removeEventListener");add("Loader");add("contentLoaderInfo");add("ProgressEvent");add("URLRequest");add("flash.net");add("removeChildAt");
			add("numChildren");add("load");add("String");add("PROGRESS");add("COMPLETE");add("flash.utils");add("ByteArray");add("uint");
			add("stage");add("StageScaleMode");add("NO_SCALE");add("scaleMode");add("StageAlign");add("TOP_LEFT");add("align");add("showDefaultContextMenu");
			add("URLLoaderDataFormat");add("BINARY");add("parameters");add("dataFormat");add("flash.display:Sprite");add("flash.display:DisplayObjectContainer");
			add("flash.display:InteractiveObject");add("name");add("flash.display:DisplayObject");add("flash.events:EventDispatcher");
			add("setInterval");add("target");add("data");add("navigateToURL");add("Endian");add("URLLoader");add("_blank");add("MovieClip");
			add("LITTLE_ENDIAN");add("endian");add("writeByte");add("readBytes");add("position");add("length");add("writeBytes");add("loadBytes");
			add("x");add("y");add("writeUTFBytes");add("Stage");add("readUTFBytes");add("Class");add("Boolean");add("Number");add("Array");
			add("URLStream");add("mp3");add("Socket");add("flash.geom");add("Rectangle");add("Transform");add("Point");add("LoaderInfo");
			add("flash.accessibility");add("AccessibilityProperties");add("flash.system");add("LoaderContext");add("ApplicationDomain");
			add("XML");add("Function");add("Bitmap");add("IDataInput");add("IOErrorEvent");add("SecurityErrorEvent");add("MouseEvent");
			add("Dictionary");add("autoLayout");add("toString");add("IBitmapDrawable");add("IEventDispatcher");add("root");add("parent");
			add("mask");add("visible");add("scaleX");add("scrollRect");add("filters");add("blendMode");add("transform");
			add("scaleY");add("mouseX");add("mouseY");add("rotation");add("alpha");add("width");add("height");add("cacheAsBitmap");add("opaqueBackground");
			add("scale9Grid");add("globalToLocal");add("localToGlobal");add("getBounds");add("getRect");
			add("hitTestObject");add("hitTestPoint");add("accessibilityProperties");add("measuredHeight");add("measuredWidth");
			add("move");add("setActualSize");add("flash.media");add("SoundChannel");add("SoundTransform");
			add("volume");add("bottom");add("left");add("LEFT");add("RIGHT");
			add("DOWN");add("UP");add("right");add("top");add("clone");
			add("flag");add("version");add("offset");add("time");add("method");
			add("flash.errors");add("IOError");add("lable");add("enabled");add("TOP");
			add("stageFocusRect");add("frameRate");add("StageQuality");add("BEST");add("quality");
			add("Error");add("contains");add("removeChild");add("htmlText");add("pop");
			add("writeUnsignedInt");add("connect");add("readInt");add("getTimer");add("writeInt");
			add("flush");add("MAX_VALUE");add("trace");add("readUnsignedInt");add("ENTER_FRAME");
			add("System");add("totalMemory");add("appendText");add("maxScrollV");add("scrollV");
			add("getQualifiedClassName");add("setChildIndex");add("Math");add("ceil");add("children");
			add("id");add("mouseEnabled");add("textColor");add("textWidth");add("textHeight");
			add("flash.utils:IDataInput");add("readShort");add("readUnsignedShort");add("currentDomain");add("applicationDomain");
			add("IO_ERROR");add("Sound");add("CONNECT");add("CLOSE");add("SECURITY_ERROR");
			add("SOCKET_DATA");add("bytesAvailable");add("readBoolean");add("readUTF");add("readByte");
			add("writeUTF");add("CLICK");add("push");add("clear");add("push");
			add("shift");add("loaderURL");add("indexOf");add("random");add("substr");
			add("charCodeAt");add("join");add("SecurityError");add("result");add("indices");
			add("Date");add("slice");add("splice");add("bytesLoaded");add("bytesTotal");
			add("unload");add("loader");add("bitmapData");add("auto");add("getDefinition");
			add("flash.filters");add("GlowFilter");add("currentTarget");add("MOUSE_UP");add("MOUSE_DOWN");
			add("startDrag");add("stopDrag");add("ROLL_OVER");add("gotoAndStop");add("ROLL_OUT");
			add("buttonMode");add("totalFrames");add("currentFrame");add("nextFrame");add("stopPropagation");
			add("stopImmediatePropagation");add("pause");add("http://adobe.com/AS3/2006/builtin");add("TextFormat");add("KeyboardEvent");
			add("ErrorEvent");add("SystemManager");add("Graphics");add("Bindable");add("allowDomain");
			add("addChildAt");add("getChildAt");add("getChildByName");add("getChildIndex");add("getObjectsUnderPoint");
			add("getDefinitionByName");add("Timer");add("BitmapData");add("Shape");add("RENDER");
			add("KEY_DOWN");add("selectable");add("invalidate");add("lock");add("fillRect");
			add("copyPixels");add("unlock");add("ctrlKey");add("shiftKey");add("dispatchEvent");
			add("min");add("max");add("stageWidth");add("stageHeight");add("content");
			add("rect");add("label");add("gb2312");add("hasEventListener");add("RESIZE");
			add("Vector");add("CENTER");add("TextFieldAutoSize");add("writeShort");add("connected");
			add("__AS3__");add(".vec");add("autoSize");add("::");add("fullYear");
			add("month");add("date");add("day");add("hours");add("minutes");
			add("seconds");add("charAt");add("ENTER");add("DOWN");add("UP");
			add("Keyboard");add("flash.ui");add("keyCode");add("dispose");add("getCharBoundaries");
			add("verticalScrollPosition");add("update");add("maxVerticalScrollPosition");add("split");add("substring");
			add("addItem");add("fromCharCode");add("getItemAt");add("focus");add("setSelection");
			add("value");add("selectedIndex");add("setRendererStyle");add("maxChars");add("setStyle");
			add("textPadding");add("addItems");add("dataProvider");add("wordWrap");add("multiline");
			add("LINK");add("setTextFormat");add("source");add("defaultTextFormat");add("replace");
			add("search");add("exec");add("textField");add("dropdown");add("bold");
			add("symbol");add("writeMultiByte");add("readMultiByte");add("leading");add("font");
			add("letterSpacing");add("readFloat");add("readDouble");add("soundTransform");add("toFixed");
			add("stop");add("play");add("TextEvent");add("RegExp");add("size");
			add(".");add("\n");add("DropShadowFilter");add("getUTCHours");add("getUTCMinutes");
			
			add("getUTCSeconds");add("setHours");add("fullYearUTC");add("monthUTC");add("dateUTC");
			add("currentLabel");add("currentFrameLabel");add("abs");add("moveTo");add("lineTo");
			add("hasDefinition");add("Capabilities");add("readObject");add("writeObject");add("drawRoundRect");
			add("PI");add("pow");add("eventPhase");add("getSeconds");add("getMinutes");
			add("getHours");add("getFullYear");add("getMonth");add("getDay");add("getTextFormat");
			add("LocalConnection");add("TIMER_COMPLETE");add("repeatCount");add("XMLNodeType");add("TEXT_NODE");
			
			add("ELEMENT_NODE");add("nodeValue");add("nodeType");add("childNodes");add("nodeName");
			add("ColorMatrixFilter");add("filter");add("getTime");add("setTime");add("NUMERIC");
			add("XMLDocument");add("contextMenu");add("ContextMenu");add("ContextMenuItem");add("customItems");
			add("getParagraphLength");add("getLineOffset");add("replaceText");add("getLineText");add("numLines");
			add("lastIndexOf");add("setTimeout");add("writeBoolean");add("TEXT_INPUT");add("INPUT");
			add("maxScrollH");add("scrollH");add("styleSheet");add("fontSize");add("underline");
			add("textDecoration");add("RangeError");add("TypeError");add("hasSimpleContent");add("localName");
			add("attributes");add("XMLList");add("MOUSE_FOCUS_CHANGE");add("tabChildren");add("TAB_CHILDREN_CHANGE");
			add("TAB_INDEX_CHANGE");add("TAB_ENABLED_CHANGE");add("REMOVED");add("ADDED");add("getQualifiedSuperclassName");
			add("scaleZ");add("getLocal");add("HTTP_STATUS");add("HTTPStatusEvent");add("OPEN");
			add("INIT");add("TAB");add("preventDefault");add("charCode");add("ESCAPE");
			add("relatedObject");add("KEY_FOCUS_CHANGE");add("describeType");add("DEACTIVATE");add("isDefaultPrevented");
			add("stageY");add("Mouse");add("MOUSE_MOVE");add("stageX");add("DESCENDING");
			add("NaN");add("MOUSE_OUT");add("MOUSE_OVER");add("DYNAMIC");add("TextFieldType");
			add("currentCount");add("delay");add("TIMER");add("useHandCursor");add("SPACE");
			add("hasOwnProperty");add("DOUBLE_CLICK");add("doubleClickEnabled");add("floor");add("PAGE_DOWN");
			add("PAGE_UP");add("HOME");add("END");add("apply");add("toUpperCase");
			add("mouseChildren");add("MOUSE_WHEEL");add("UNKNOWN");add("IMEConversionMode");add("conversionMode");
			add("IME");add("isNaN");add("round");add("KEY_UP");add("FOCUS_OUT");
			add("FOCUS_IN");add("focusRect");add("defaultDisabledTextFormat");add("TextFormatAlign");add("call");
			add("ExternalInterface");add("flash.external");add("ADDED_TO_STAGE");add("mx_internal");add("getUnqualifiedClassName");
			add("displayObjectToString");add("createUniqueName");add("testCharacter");add("isWhitespace");add("trimArrayElements");
			add("substitute");add("breakDownBloxUtils");add("validInterval");add("getLocalName");add("http://www.adobe.com/2006/flex/mx/internal");
			add("readLong");add("VERSION");add("SUCCESS");add("StyleSheet");add("isDocument");
			add("getLineMetrics");add("sortOn");add("merge");add("concat");add("SharedObject");
			add("SimpleButton");add("FocusEvent");add("TimerEvent");add("restrict");add("color");
			add("tabEnabled");add("selected");add("editable");add("sort");add("reset");
			add("start");add("flash");add("editable");add("sort");add("reset");
			add("currentLabels");add("totalFrames");add("addFrameScript");add("gotoAndPlay");add("gotoAndStop");
			add("stop");add("play");add("renderTime");add("showFrame");add("setEnabled");
			add("currentLabels");add("currentLabels");add("currentLabels");add("currentLabels");add("currentLabels");
			
		}
	};
}
