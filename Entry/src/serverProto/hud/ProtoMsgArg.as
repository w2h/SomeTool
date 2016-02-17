package serverProto.hud
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import serverProto.bag.ProtoEquipInfo;
   import serverProto.inc.ProtoDiamondInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoMsgArg extends Message
   {
      
      public static const REP_STRING:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.hud.ProtoMsgArg.rep_string","repString",1 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const REP_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.hud.ProtoMsgArg.rep_flag","repFlag",2 << 3 | WireType.VARINT);
      
      public static const PLAYER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.hud.ProtoMsgArg.player_key","playerKey",3 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const INT_DATA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.hud.ProtoMsgArg.int_data","intData",4 << 3 | WireType.VARINT);
      
      public static const STR_DATA:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.hud.ProtoMsgArg.str_data","strData",5 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const EQUIP_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.hud.ProtoMsgArg.equip_info","equipInfo",6 << 3 | WireType.LENGTH_DELIMITED,ProtoEquipInfo);
      
      public static const PLAYER_DIAMOND:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.hud.ProtoMsgArg.player_diamond","playerDiamond",8 << 3 | WireType.LENGTH_DELIMITED,ProtoDiamondInfo);
      
      public static const PLAYER_VIP_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.hud.ProtoMsgArg.player_vip_level","playerVipLevel",9 << 3 | WireType.VARINT);
       
      private var rep_string$field:String;
      
      private var rep_flag$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var player_key$field:ProtoPlayerKey;
      
      private var int_data$field:uint;
      
      private var str_data$field:String;
      
      private var equip_info$field:ProtoEquipInfo;
      
      private var player_diamond$field:ProtoDiamondInfo;
      
      private var player_vip_level$field:int;
      
      public function ProtoMsgArg()
      {
         super();
      }
      
      public function clearRepString() : void
      {
         this.rep_string$field = null;
      }
      
      public function get hasRepString() : Boolean
      {
         return this.rep_string$field != null;
      }
      
      public function set repString(param1:String) : void
      {
         this.rep_string$field = param1;
      }
      
      public function get repString() : String
      {
         return this.rep_string$field;
      }
      
      public function clearRepFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.rep_flag$field = new uint();
      }
      
      public function get hasRepFlag() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set repFlag(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.rep_flag$field = param1;
      }
      
      public function get repFlag() : uint
      {
         return this.rep_flag$field;
      }
      
      public function clearPlayerKey() : void
      {
         this.player_key$field = null;
      }
      
      public function get hasPlayerKey() : Boolean
      {
         return this.player_key$field != null;
      }
      
      public function set playerKey(param1:ProtoPlayerKey) : void
      {
         this.player_key$field = param1;
      }
      
      public function get playerKey() : ProtoPlayerKey
      {
         return this.player_key$field;
      }
      
      public function clearIntData() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.int_data$field = new uint();
      }
      
      public function get hasIntData() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set intData(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.int_data$field = param1;
      }
      
      public function get intData() : uint
      {
         return this.int_data$field;
      }
      
      public function clearStrData() : void
      {
         this.str_data$field = null;
      }
      
      public function get hasStrData() : Boolean
      {
         return this.str_data$field != null;
      }
      
      public function set strData(param1:String) : void
      {
         this.str_data$field = param1;
      }
      
      public function get strData() : String
      {
         return this.str_data$field;
      }
      
      public function clearEquipInfo() : void
      {
         this.equip_info$field = null;
      }
      
      public function get hasEquipInfo() : Boolean
      {
         return this.equip_info$field != null;
      }
      
      public function set equipInfo(param1:ProtoEquipInfo) : void
      {
         this.equip_info$field = param1;
      }
      
      public function get equipInfo() : ProtoEquipInfo
      {
         return this.equip_info$field;
      }
      
      public function clearPlayerDiamond() : void
      {
         this.player_diamond$field = null;
      }
      
      public function get hasPlayerDiamond() : Boolean
      {
         return this.player_diamond$field != null;
      }
      
      public function set playerDiamond(param1:ProtoDiamondInfo) : void
      {
         this.player_diamond$field = param1;
      }
      
      public function get playerDiamond() : ProtoDiamondInfo
      {
         return this.player_diamond$field;
      }
      
      public function clearPlayerVipLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.player_vip_level$field = new int();
      }
      
      public function get hasPlayerVipLevel() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set playerVipLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.player_vip_level$field = param1;
      }
      
      public function get playerVipLevel() : int
      {
         return this.player_vip_level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRepString)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_STRING(param1,this.rep_string$field);
         }
         if(this.hasRepFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.rep_flag$field);
         }
         if(this.hasPlayerKey)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_key$field);
         }
         if(this.hasIntData)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.int_data$field);
         }
         if(this.hasStrData)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_STRING(param1,this.str_data$field);
         }
         if(this.hasEquipInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.equip_info$field);
         }
         if(this.hasPlayerDiamond)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_diamond$field);
         }
         if(this.hasPlayerVipLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_INT32(param1,this.player_vip_level$field);
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
          * Error type: IndexOutOfBoundsException (Index: 8, Size: 8)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
