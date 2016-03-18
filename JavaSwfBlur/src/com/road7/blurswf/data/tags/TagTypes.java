package com.road7.blurswf.data.tags;

public class TagTypes {

	// Flash 1 tags
	public static final int TAG_END = 0;
	public static final int TAG_SHOWFRAME = 1;
	public static final int TAG_DEFINESHAPE = 2;
	public static final int TAG_FREECHARACTER = 3;
	public static final int TAG_PLACEOBJECT = 4;
	public static final int TAG_REMOVEOBJECT = 5;
	public static final int TAG_DEFINEBITS = 6;
	public static final int TAG_DEFINEBUTTON = 7;
	public static final int TAG_JPEGTABLES = 8;
	public static final int TAG_SETBACKGROUNDCOLOR = 9;
	public static final int TAG_DEFINEFONT = 10;
	public static final int TAG_DEFINETEXT = 11;
	public static final int TAG_DOACTION = 12;
	public static final int TAG_DEFINEFONTINFO = 13;
	public static final int TAG_DEFINESOUND = 14;
	public static final int TAG_STARTSOUND = 15;
	public static final int TAG_STOPSOUND = 16;
	public static final int TAG_DEFINEBUTTONSOUND = 17;
	public static final int TAG_SOUNDSTREAMHEAD = 18;
	public static final int TAG_SOUNDSTREAMBLOCK = 19;
	// Flash 2 tags
	public static final int TAG_DEFINEBITSLOSSLESS = 20;
	public static final int TAG_DEFINEBITSJPEG2 = 21;
	public static final int TAG_DEFINESHAPE2 = 22;
	public static final int TAG_DEFINEBUTTONCXFORM = 23;
	public static final int TAG_PROTECT = 24;
	public static final int TAG_PATHSAREPOSTSCRIPT = 25;
	// Flash 3 tags
	public static final int TAG_PLACEOBJECT2 = 26;
	
	public static final int TAG_REMOVEOBJECT2 = 28;
	public static final int TAG_SYNCFRAME = 29;
	
	public static final int TAG_FREEALL = 31;
	public static final int TAG_DEFINESHAPE3 = 32;
	public static final int TAG_DEFINETEXT2 = 33;
	public static final int TAG_DEFINEBUTTON2 = 34;
	public static final int TAG_DEFINEBITSJPEG3 = 35;
	public static final int TAG_DEFINEBITSLOSSLESS2 = 36;
	// Flash 4 tags
	public static final int TAG_DEFINEEDITTEXT = 37;
	public static final int TAG_DEFINEVIDEO = 38;
	public static final int TAG_DEFINESPRITE = 39;
	public static final int TAG_NAMECHARACTER = 40;
	public static final int TAG_PRODUCTINFO = 41;
	public static final int TAG_DEFINETEXTFORMAT = 42;
	public static final int TAG_FRAMELABEL = 43;
	// Flash 5 tags
	public static final int TAG_DEFINEBEHAVIOR = 44;
	public static final int TAG_SOUNDSTREAMHEAD2 = 45;
	public static final int TAG_DEFINEMORPHSHAPE = 46;
	public static final int TAG_FRAMETAG = 47;
	public static final int TAG_DEFINEFONT2 = 48;
	public static final int TAG_GENCOMMAND = 49;
	public static final int TAG_DEFINECOMMANDOBJ = 50;
	public static final int TAG_CHARACTERSET = 51;
	public static final int TAG_FONTREF = 52;
	public static final int TAG_DEFINEFUNCTION = 53;
	public static final int TAG_PLACEFUNCTION = 54;
	public static final int TAG_GENTAGOBJECT = 55;
	public static final int TAG_EXPORTASSETS = 56;
	public static final int TAG_IMPORTASSETS = 57;
	public static final int TAG_ENABLEDEBUGGER = 58;
	// Flash 6 tags
	public static final int TAG_DOINITACTION = 59;
	public static final int TAG_DEFINEVIDEOSTREAM = 60;
	public static final int TAG_VIDEOFRAME = 61;
	public static final int TAG_DEFINEFONTINFO2 = 62;
	public static final int TAG_DEBUGID = 63;
	public static final int TAG_ENABLEDEBUGGER2 = 64;
	public static final int TAG_SCRIPTLIMITS = 65;
	// Flash 7 tags
	public static final int TAG_SETTABINDEX = 66;
	// Flash 8 tags
	
	
	public static final int TAG_FILEATTRIBUTES = 69;
	public static final int TAG_PLACEOBJECT3 = 70;
	public static final int TAG_IMPORTASSETS2 = 71;
	public static final int TAG_DEFINEFONTALIGNZONES = 73;
	public static final int TAG_CSMTEXTSETTINGS = 74;
	public static final int TAG_DEFINEFONT3 = 75;
	public static final int TAG_SYMBOLCLASS = 76;
	public static final int TAG_METADATA = 77;
	public static final int TAG_SCALINGGRID = 78;
	
	
	
	public static final int TAG_DOABC = 82;
	public static final int TAG_DEFINESHAPE4 = 83;
	public static final int TAG_DEFINEMORPHSHAPE2 = 84;
	
	// Flash 9 tags
	public static final int TAG_DEFINESCENEANDFRAMELABELDATA = 86;
	public static final int TAG_DEFINEBINARYDATA = 87;
	public static final int TAG_DEFINEFONTNAME = 88;
	public static final int TAG_STARTSOUND2 = 89;
	public static final int TAG_DEFINEBITSJPEG4 = 90;
	// Flash 10 tags
	public static final int TAG_DEFINEFONT4 = 91;
	
	
	/**
	 * tagType => tag 名称 
	 */     
	private static final String[] TAG_NAMES ={"End","ShowFrame","DefineShape","FreeCharacter","PlaceObject","RemoveObject","DefineBits","DefineButton","JPEGTables","SetBackgroundColor","DefineFont","DefineText","DoAction","DefineFontInfo","DefineSound","StartSound","StopSound","DefineButtonSound","SoundStreamHead","SoundStreamBlock","DefineBitsLossless","DefineBitsJPEG2","DefineShape2","DefineButtonCxform","Protect","PathsArePostScript","PlaceObject2","27 (invalid)","RemoveObject2","SyncFrame","30 (invalid)","FreeAll","DefineShape3","DefineText2","DefineButton2","DefineBitsJPEG3","DefineBitsLossless2","DefineEditText","DefineVideo","DefineSprite","NameCharacter","ProductInfo","DefineTextFormat","FrameLabel","DefineBehavior","SoundStreamHead2","DefineMorphShape","FrameTag","DefineFont2","GenCommand","DefineCommandObj","CharacterSet","FontRef","DefineFunction","PlaceFunction","GenTagObject","ExportAssets","ImportAssets","EnableDebugger","DoInitAction","DefineVideoStream","VideoFrame","DefineFontInfo2","DebugID","EnableDebugger2","ScriptLimits","SetTabIndex","67 (invalid)","68 (invalid)","FileAttributes","PlaceObject3","ImportAssets2","72 (invalid)","DefineFontAlignZones","CSMTextSettings","DefineFont3","SymbolClass","Metadata","ScalingGrid","79 (invalid)","80 (invalid)","81 (invalid)","DoABC","DefineShape4","DefineMorphShape2","85 (invalid)","DefineSceneAndFrameLabelData","DefineBinaryData","DefineFontName","StartSound2","DefineBitsJPEG4","DefineFont4"};
	
	/**
	 * tagType => tag class
	 */     
	//private static final TAG_CLASS:Array = [EndTag,ShowFrameTag,DefineShapeTag,FreeCharacterTag,PlaceObjectTag,RemoveObjectTag,DefineBitsTag,DefineButtonTag,JPEGTablesTag,SetBackgroundColorTag,DefineFontTag,DefineTextTag,DoActionTag,DefineFontInfoTag,DefineSoundTag,StartSoundTag,StopSoundTag,DefineButtonSoundTag,SoundStreamHeadTag,SoundStreamBlockTag,DefineBitsLosslessTag,DefineBitsJPEG2Tag,DefineShape2Tag,DefineButtonCxformTag,ProtectTag,PathsArePostScriptTag,PlaceObject2Tag,null,RemoveObject2Tag,SyncFrameTag,null,FreeAllTag,DefineShape3Tag,DefineText2Tag,DefineButton2Tag,DefineBitsJPEG3Tag,DefineBitsLossless2Tag,DefineEditTextTag,DefineVideoTag,DefineSpriteTag,NameCharacterTag,ProductInfoTag,DefineTextFormatTag,FrameLabelTag,DefineBehaviorTag,SoundStreamHead2Tag,DefineMorphShapeTag,FrameTagTag,DefineFont2Tag,GenCommandTag,DefineCommandObjTag,CharacterSetTag,FontRefTag,DefineFunctionTag,PlaceFunctionTag,GenTagObjectTag,ExportAssetsTag,ImportAssetsTag,EnableDebuggerTag,DoInitActionTag,DefineVideoStreamTag,VideoFrameTag,DefineFontInfo2Tag,DebugIDTag,EnableDebugger2Tag,ScriptLimitsTag,SetTabIndexTag,null,null,FileAttributesTag,PlaceObject3Tag,ImportAssets2Tag,DoABCTag,DefineFontAlignZonesTag,CSMTextSettingsTag,DefineFont3Tag,SymbolClassTag,MetadataTag,ScalingGridTag,null,null,null,DoABCTag,DefineShape4Tag,DefineMorphShape2Tag,null,DefineSceneAndFrameLabelDataTag,DefineBinaryDataTag,DefineFontNameTag,StartSound2Tag,DefineBitsJPEG4Tag,DefineFont4Tag];
	private static final String[] TAG_CLASS = {"EndTag","ShowFrameTag","DefineShapeTag","null",
		"PlaceObjectTag","RemoveObjectTag","DefineBitsTag","DefineButtonTag","JPEGTablesTag",
		"SetBackgroundColorTag","DefineFontTag","DefineTextTag","DoActionTag","DefineFontInfoTag",
		"DefineSoundTag","StartSoundTag","null","DefineButtonSoundTag","SoundStreamHeadTag",
		"SoundStreamBlockTag","DefineBitsLosslessTag","DefineBitsJPEG2Tag","DefineShape2Tag",
		"DefineButtonCxformTag","ProtectTag","null","PlaceObject2Tag","null","RemoveObject2Tag",
		"null","null","null","DefineShape3Tag","DefineText2Tag","DefineButton2Tag","DefineBitsJPEG3Tag",
		"DefineBitsLossless2Tag","DefineEditTextTag","null","DefineSpriteTag","null","null","null",
		"FrameLabelTag","null","SoundStreamHead2Tag","DefineMorphShapeTag","null","DefineFont2Tag",
		"null","null","null","null","null","null","null","ExportAssetsTag","ImportAssetsTag","EnableDebuggerTag",
		"DoInitActionTag","DefineVideoStreamTag","VideoFrameTag","DefineFontInfo2Tag","null","EnableDebugger2Tag",
		"ScriptLimitsTag","SetTabIndexTag","null","null","FileAttributesTag","PlaceObject3Tag","ImportAssets2Tag","null",
		"DefineFontAlignZonesTag","CSMTextSettingsTag","DefineFont3Tag","SymbolClassTag","MetadataTag",
		"DefineScalingGridTag","null","null","null","DoAbcTag","DefineShape4Tag","DefineMorphShape2Tag","null",
		"DefineSceneAndFrameLabelDataTag","DefineBinaryDataTag","DefineFontNameTag","StartSound2Tag",
		"DefineBitsJPEG4Tag","DefineFont4Tag"};
	
	/**
	 * 根据编号获取tag名称 
	 * @param tagType
	 * @return 
	 * 
	 */     
	public static String getTagNameByTagType(int tagType)
	{
		return TAG_NAMES[tagType];
	}
	
	/**
	 * 根据变化获取tag class 
	 * @param tagType
	 * @return 
	 * 
	 */     
	public static String getTagClassByTagType(int tagType)
	{
		return TAG_CLASS[tagType];
	}
}
