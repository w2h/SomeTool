package serverProto.chat
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import serverProto.inc.ProtoDiamondInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoChatNotify extends Message
   {
      
      public static const CHANNEL_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.chat.ProtoChatNotify.channel_type","channelType",1 << 3 | WireType.VARINT,ProtoChatChannelType);
      
      public static const CONTEXT_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.chat.ProtoChatNotify.context_type","contextType",2 << 3 | WireType.VARINT,ProtoChatContextType);
      
      public static const CONTEXT:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.chat.ProtoChatNotify.context","context",3 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const TALKER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.chat.ProtoChatNotify.talker_name","talkerName",4 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const TALKER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.chat.ProtoChatNotify.talker_key","talkerKey",5 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const LISTENER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.chat.ProtoChatNotify.listener_name","listenerName",6 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const LISTENER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.chat.ProtoChatNotify.listener_key","listenerKey",7 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const TALKER_DIAMOND:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.chat.ProtoChatNotify.talker_diamond","talkerDiamond",8 << 3 | WireType.LENGTH_DELIMITED,ProtoDiamondInfo);
      
      public static const TALKER_VIP_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.chat.ProtoChatNotify.talker_vip_level","talkerVipLevel",9 << 3 | WireType.VARINT);
      
      public static const LISTENER_DIAMOND:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.chat.ProtoChatNotify.listener_diamond","listenerDiamond",10 << 3 | WireType.LENGTH_DELIMITED,ProtoDiamondInfo);
      
      public static const LISTENER_VIP_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.chat.ProtoChatNotify.listener_vip_level","listenerVipLevel",11 << 3 | WireType.VARINT);
       
      public var channelType:int;
      
      public var contextType:int;
      
      public var context:String;
      
      private var talker_name$field:String;
      
      private var talker_key$field:ProtoPlayerKey;
      
      private var listener_name$field:String;
      
      private var listener_key$field:ProtoPlayerKey;
      
      private var talker_diamond$field:ProtoDiamondInfo;
      
      private var talker_vip_level$field:int;
      
      private var hasField$0:uint = 0;
      
      private var listener_diamond$field:ProtoDiamondInfo;
      
      private var listener_vip_level$field:int;
      
      public function ProtoChatNotify()
      {
         super();
      }
      
      public function clearTalkerName() : void
      {
         this.talker_name$field = null;
      }
      
      public function get hasTalkerName() : Boolean
      {
         return this.talker_name$field != null;
      }
      
      public function set talkerName(param1:String) : void
      {
         this.talker_name$field = param1;
      }
      
      public function get talkerName() : String
      {
         return this.talker_name$field;
      }
      
      public function clearTalkerKey() : void
      {
         this.talker_key$field = null;
      }
      
      public function get hasTalkerKey() : Boolean
      {
         return this.talker_key$field != null;
      }
      
      public function set talkerKey(param1:ProtoPlayerKey) : void
      {
         this.talker_key$field = param1;
      }
      
      public function get talkerKey() : ProtoPlayerKey
      {
         return this.talker_key$field;
      }
      
      public function clearListenerName() : void
      {
         this.listener_name$field = null;
      }
      
      public function get hasListenerName() : Boolean
      {
         return this.listener_name$field != null;
      }
      
      public function set listenerName(param1:String) : void
      {
         this.listener_name$field = param1;
      }
      
      public function get listenerName() : String
      {
         return this.listener_name$field;
      }
      
      public function clearListenerKey() : void
      {
         this.listener_key$field = null;
      }
      
      public function get hasListenerKey() : Boolean
      {
         return this.listener_key$field != null;
      }
      
      public function set listenerKey(param1:ProtoPlayerKey) : void
      {
         this.listener_key$field = param1;
      }
      
      public function get listenerKey() : ProtoPlayerKey
      {
         return this.listener_key$field;
      }
      
      public function clearTalkerDiamond() : void
      {
         this.talker_diamond$field = null;
      }
      
      public function get hasTalkerDiamond() : Boolean
      {
         return this.talker_diamond$field != null;
      }
      
      public function set talkerDiamond(param1:ProtoDiamondInfo) : void
      {
         this.talker_diamond$field = param1;
      }
      
      public function get talkerDiamond() : ProtoDiamondInfo
      {
         return this.talker_diamond$field;
      }
      
      public function clearTalkerVipLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.talker_vip_level$field = new int();
      }
      
      public function get hasTalkerVipLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set talkerVipLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.talker_vip_level$field = param1;
      }
      
      public function get talkerVipLevel() : int
      {
         return this.talker_vip_level$field;
      }
      
      public function clearListenerDiamond() : void
      {
         this.listener_diamond$field = null;
      }
      
      public function get hasListenerDiamond() : Boolean
      {
         return this.listener_diamond$field != null;
      }
      
      public function set listenerDiamond(param1:ProtoDiamondInfo) : void
      {
         this.listener_diamond$field = param1;
      }
      
      public function get listenerDiamond() : ProtoDiamondInfo
      {
         return this.listener_diamond$field;
      }
      
      public function clearListenerVipLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.listener_vip_level$field = new int();
      }
      
      public function get hasListenerVipLevel() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set listenerVipLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.listener_vip_level$field = param1;
      }
      
      public function get listenerVipLevel() : int
      {
         return this.listener_vip_level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.channelType);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_ENUM(param1,this.contextType);
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
         WriteUtils.write$TYPE_STRING(param1,this.context);
         if(this.hasTalkerName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_STRING(param1,this.talker_name$field);
         }
         if(this.hasTalkerKey)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.talker_key$field);
         }
         if(this.hasListenerName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_STRING(param1,this.listener_name$field);
         }
         if(this.hasListenerKey)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.listener_key$field);
         }
         if(this.hasTalkerDiamond)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_MESSAGE(param1,this.talker_diamond$field);
         }
         if(this.hasTalkerVipLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_INT32(param1,this.talker_vip_level$field);
         }
         if(this.hasListenerDiamond)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,10);
            WriteUtils.write$TYPE_MESSAGE(param1,this.listener_diamond$field);
         }
         if(this.hasListenerVipLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_INT32(param1,this.listener_vip_level$field);
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
          * Error type: IndexOutOfBoundsException (Index: 11, Size: 11)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
