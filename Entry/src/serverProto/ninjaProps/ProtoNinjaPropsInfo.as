package serverProto.ninjaProps
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoNaurtoAllPropertyInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaPropsInfo extends Message
   {
      
      public static const ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaProps.ProtoNinjaPropsInfo.id","id",1 << 3 | WireType.VARINT);
      
      public static const INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaProps.ProtoNinjaPropsInfo.index","index",2 << 3 | WireType.VARINT);
      
      public static const LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaProps.ProtoNinjaPropsInfo.level","level",3 << 3 | WireType.VARINT);
      
      public static const EXP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaProps.ProtoNinjaPropsInfo.exp","exp",4 << 3 | WireType.VARINT);
      
      public static const USE_NEED_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaProps.ProtoNinjaPropsInfo.use_need_level","useNeedLevel",5 << 3 | WireType.VARINT);
      
      public static const MAX_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaProps.ProtoNinjaPropsInfo.max_level","maxLevel",6 << 3 | WireType.VARINT);
      
      public static const BASE_PROPERTY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaProps.ProtoNinjaPropsInfo.base_property","baseProperty",7 << 3 | WireType.LENGTH_DELIMITED,ProtoNaurtoAllPropertyInfo);
      
      public static const LEVEL_UP_PROPERTY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaProps.ProtoNinjaPropsInfo.level_up_property","levelUpProperty",8 << 3 | WireType.LENGTH_DELIMITED,ProtoNaurtoAllPropertyInfo);
      
      public static const EXTENSION_PROPERTY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaProps.ProtoNinjaPropsInfo.extension_property","extensionProperty",9 << 3 | WireType.LENGTH_DELIMITED,ProtoNaurtoAllPropertyInfo);
      
      public static const LEVEL_UP_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaProps.ProtoNinjaPropsInfo.level_up_info","levelUpInfo",10 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaPropsLevelUpInfo);
       
      public var id:int;
      
      private var index$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var level$field:int;
      
      private var exp$field:int;
      
      private var use_need_level$field:int;
      
      private var max_level$field:int;
      
      private var base_property$field:ProtoNaurtoAllPropertyInfo;
      
      private var level_up_property$field:ProtoNaurtoAllPropertyInfo;
      
      private var extension_property$field:ProtoNaurtoAllPropertyInfo;
      
      private var level_up_info$field:serverProto.ninjaProps.ProtoNinjaPropsLevelUpInfo;
      
      public function ProtoNinjaPropsInfo()
      {
         super();
      }
      
      public function clearIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.index$field = new uint();
      }
      
      public function get hasIndex() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set index(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.index$field = param1;
      }
      
      public function get index() : uint
      {
         return this.index$field;
      }
      
      public function clearLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.level$field = new int();
      }
      
      public function get hasLevel() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set level(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.level$field = param1;
      }
      
      public function get level() : int
      {
         return this.level$field;
      }
      
      public function clearExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.exp$field = new int();
      }
      
      public function get hasExp() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set exp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.exp$field = param1;
      }
      
      public function get exp() : int
      {
         return this.exp$field;
      }
      
      public function clearUseNeedLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.use_need_level$field = new int();
      }
      
      public function get hasUseNeedLevel() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set useNeedLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.use_need_level$field = param1;
      }
      
      public function get useNeedLevel() : int
      {
         return this.use_need_level$field;
      }
      
      public function clearMaxLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.max_level$field = new int();
      }
      
      public function get hasMaxLevel() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set maxLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.max_level$field = param1;
      }
      
      public function get maxLevel() : int
      {
         return this.max_level$field;
      }
      
      public function clearBaseProperty() : void
      {
         this.base_property$field = null;
      }
      
      public function get hasBaseProperty() : Boolean
      {
         return this.base_property$field != null;
      }
      
      public function set baseProperty(param1:ProtoNaurtoAllPropertyInfo) : void
      {
         this.base_property$field = param1;
      }
      
      public function get baseProperty() : ProtoNaurtoAllPropertyInfo
      {
         return this.base_property$field;
      }
      
      public function clearLevelUpProperty() : void
      {
         this.level_up_property$field = null;
      }
      
      public function get hasLevelUpProperty() : Boolean
      {
         return this.level_up_property$field != null;
      }
      
      public function set levelUpProperty(param1:ProtoNaurtoAllPropertyInfo) : void
      {
         this.level_up_property$field = param1;
      }
      
      public function get levelUpProperty() : ProtoNaurtoAllPropertyInfo
      {
         return this.level_up_property$field;
      }
      
      public function clearExtensionProperty() : void
      {
         this.extension_property$field = null;
      }
      
      public function get hasExtensionProperty() : Boolean
      {
         return this.extension_property$field != null;
      }
      
      public function set extensionProperty(param1:ProtoNaurtoAllPropertyInfo) : void
      {
         this.extension_property$field = param1;
      }
      
      public function get extensionProperty() : ProtoNaurtoAllPropertyInfo
      {
         return this.extension_property$field;
      }
      
      public function clearLevelUpInfo() : void
      {
         this.level_up_info$field = null;
      }
      
      public function get hasLevelUpInfo() : Boolean
      {
         return this.level_up_info$field != null;
      }
      
      public function set levelUpInfo(param1:serverProto.ninjaProps.ProtoNinjaPropsLevelUpInfo) : void
      {
         this.level_up_info$field = param1;
      }
      
      public function get levelUpInfo() : serverProto.ninjaProps.ProtoNinjaPropsLevelUpInfo
      {
         return this.level_up_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.id);
         if(this.hasIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.index$field);
         }
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.level$field);
         }
         if(this.hasExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.exp$field);
         }
         if(this.hasUseNeedLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_SINT32(param1,this.use_need_level$field);
         }
         if(this.hasMaxLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_SINT32(param1,this.max_level$field);
         }
         if(this.hasBaseProperty)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.base_property$field);
         }
         if(this.hasLevelUpProperty)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_MESSAGE(param1,this.level_up_property$field);
         }
         if(this.hasExtensionProperty)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,9);
            WriteUtils.write$TYPE_MESSAGE(param1,this.extension_property$field);
         }
         if(this.hasLevelUpInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,10);
            WriteUtils.write$TYPE_MESSAGE(param1,this.level_up_info$field);
         }
         for(_loc2_ in this)
         {
            super.writeUnknown(param1,_loc2_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 10, Size: 10)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
