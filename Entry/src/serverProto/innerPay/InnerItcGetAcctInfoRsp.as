package serverProto.innerPay
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class InnerItcGetAcctInfoRsp extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.innerPay.InnerItcGetAcctInfoRsp.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const UIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPay.InnerItcGetAcctInfoRsp.uin","uin",2 << 3 | WireType.VARINT);
      
      public static const STAT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerItcGetAcctInfoRsp.stat","stat",3 << 3 | WireType.VARINT);
      
      public static const BALANCE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerItcGetAcctInfoRsp.balance","balance",4 << 3 | WireType.VARINT);
      
      public static const ALLIN:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerItcGetAcctInfoRsp.allin","allin",5 << 3 | WireType.VARINT);
      
      public static const DAYOUT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerItcGetAcctInfoRsp.dayout","dayout",6 << 3 | WireType.VARINT);
      
      public static const ALLOUT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerItcGetAcctInfoRsp.allout","allout",7 << 3 | WireType.VARINT);
      
      public static const EXPIRE_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerItcGetAcctInfoRsp.expire_time","expireTime",8 << 3 | WireType.VARINT);
       
      public var retInfo:ProtoRetInfo;
      
      private var uin$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var stat$field:int;
      
      private var balance$field:int;
      
      private var allin$field:int;
      
      private var dayout$field:int;
      
      private var allout$field:int;
      
      private var expire_time$field:int;
      
      public function InnerItcGetAcctInfoRsp()
      {
         super();
      }
      
      public function clearUin() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.uin$field = new uint();
      }
      
      public function get hasUin() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set uin(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.uin$field = param1;
      }
      
      public function get uin() : uint
      {
         return this.uin$field;
      }
      
      public function clearStat() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.stat$field = new int();
      }
      
      public function get hasStat() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set stat(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.stat$field = param1;
      }
      
      public function get stat() : int
      {
         return this.stat$field;
      }
      
      public function clearBalance() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.balance$field = new int();
      }
      
      public function get hasBalance() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set balance(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.balance$field = param1;
      }
      
      public function get balance() : int
      {
         return this.balance$field;
      }
      
      public function clearAllin() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.allin$field = new int();
      }
      
      public function get hasAllin() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set allin(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.allin$field = param1;
      }
      
      public function get allin() : int
      {
         return this.allin$field;
      }
      
      public function clearDayout() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.dayout$field = new int();
      }
      
      public function get hasDayout() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set dayout(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.dayout$field = param1;
      }
      
      public function get dayout() : int
      {
         return this.dayout$field;
      }
      
      public function clearAllout() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.allout$field = new int();
      }
      
      public function get hasAllout() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set allout(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.allout$field = param1;
      }
      
      public function get allout() : int
      {
         return this.allout$field;
      }
      
      public function clearExpireTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.expire_time$field = new int();
      }
      
      public function get hasExpireTime() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set expireTime(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.expire_time$field = param1;
      }
      
      public function get expireTime() : int
      {
         return this.expire_time$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         if(this.hasUin)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.uin$field);
         }
         if(this.hasStat)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.stat$field);
         }
         if(this.hasBalance)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.balance$field);
         }
         if(this.hasAllin)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.allin$field);
         }
         if(this.hasDayout)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.dayout$field);
         }
         if(this.hasAllout)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.allout$field);
         }
         if(this.hasExpireTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_INT32(param1,this.expire_time$field);
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
