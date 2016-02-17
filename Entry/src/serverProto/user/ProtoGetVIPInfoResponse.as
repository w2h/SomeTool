package serverProto.user
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetVIPInfoResponse extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoGetVIPInfoResponse.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.user.ProtoGetVIPInfoResponse.vip_level","vipLevel",2 << 3 | WireType.VARINT,ProtoPlayerVipLevel);
      
      public static const VIP_EXPIRED_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoGetVIPInfoResponse.vip_expired_time","vipExpiredTime",3 << 3 | WireType.VARINT);
      
      public static const VIP_REMAINDER_DAY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoGetVIPInfoResponse.vip_remainder_day","vipRemainderDay",4 << 3 | WireType.VARINT);
      
      public static const GENIN_PRIVILEGE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoGetVIPInfoResponse.genin_privilege","geninPrivilege",5 << 3 | WireType.LENGTH_DELIMITED,ProtoVIPPrivilegeInfo);
      
      public static const CHUNIN_PRIVILEGE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoGetVIPInfoResponse.chunin_privilege","chuninPrivilege",6 << 3 | WireType.LENGTH_DELIMITED,ProtoVIPPrivilegeInfo);
      
      public static const JONIN_PRIVILEGE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoGetVIPInfoResponse.jonin_privilege","joninPrivilege",7 << 3 | WireType.LENGTH_DELIMITED,ProtoVIPPrivilegeInfo);
       
      public var retInfo:ProtoRetInfo;
      
      private var vip_level$field:int;
      
      private var hasField$0:uint = 0;
      
      private var vip_expired_time$field:uint;
      
      private var vip_remainder_day$field:uint;
      
      private var genin_privilege$field:serverProto.user.ProtoVIPPrivilegeInfo;
      
      private var chunin_privilege$field:serverProto.user.ProtoVIPPrivilegeInfo;
      
      private var jonin_privilege$field:serverProto.user.ProtoVIPPrivilegeInfo;
      
      public function ProtoGetVIPInfoResponse()
      {
         super();
      }
      
      public function clearVipLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.vip_level$field = new int();
      }
      
      public function get hasVipLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set vipLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.vip_level$field = param1;
      }
      
      public function get vipLevel() : int
      {
         return this.vip_level$field;
      }
      
      public function clearVipExpiredTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.vip_expired_time$field = new uint();
      }
      
      public function get hasVipExpiredTime() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set vipExpiredTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.vip_expired_time$field = param1;
      }
      
      public function get vipExpiredTime() : uint
      {
         return this.vip_expired_time$field;
      }
      
      public function clearVipRemainderDay() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.vip_remainder_day$field = new uint();
      }
      
      public function get hasVipRemainderDay() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set vipRemainderDay(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.vip_remainder_day$field = param1;
      }
      
      public function get vipRemainderDay() : uint
      {
         return this.vip_remainder_day$field;
      }
      
      public function clearGeninPrivilege() : void
      {
         this.genin_privilege$field = null;
      }
      
      public function get hasGeninPrivilege() : Boolean
      {
         return this.genin_privilege$field != null;
      }
      
      public function set geninPrivilege(param1:serverProto.user.ProtoVIPPrivilegeInfo) : void
      {
         this.genin_privilege$field = param1;
      }
      
      public function get geninPrivilege() : serverProto.user.ProtoVIPPrivilegeInfo
      {
         return this.genin_privilege$field;
      }
      
      public function clearChuninPrivilege() : void
      {
         this.chunin_privilege$field = null;
      }
      
      public function get hasChuninPrivilege() : Boolean
      {
         return this.chunin_privilege$field != null;
      }
      
      public function set chuninPrivilege(param1:serverProto.user.ProtoVIPPrivilegeInfo) : void
      {
         this.chunin_privilege$field = param1;
      }
      
      public function get chuninPrivilege() : serverProto.user.ProtoVIPPrivilegeInfo
      {
         return this.chunin_privilege$field;
      }
      
      public function clearJoninPrivilege() : void
      {
         this.jonin_privilege$field = null;
      }
      
      public function get hasJoninPrivilege() : Boolean
      {
         return this.jonin_privilege$field != null;
      }
      
      public function set joninPrivilege(param1:serverProto.user.ProtoVIPPrivilegeInfo) : void
      {
         this.jonin_privilege$field = param1;
      }
      
      public function get joninPrivilege() : serverProto.user.ProtoVIPPrivilegeInfo
      {
         return this.jonin_privilege$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         if(this.hasVipLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_ENUM(param1,this.vip_level$field);
         }
         if(this.hasVipExpiredTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.vip_expired_time$field);
         }
         if(this.hasVipRemainderDay)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.vip_remainder_day$field);
         }
         if(this.hasGeninPrivilege)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.genin_privilege$field);
         }
         if(this.hasChuninPrivilege)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.chunin_privilege$field);
         }
         if(this.hasJoninPrivilege)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.jonin_privilege$field);
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
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
