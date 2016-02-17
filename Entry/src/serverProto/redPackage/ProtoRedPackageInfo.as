package serverProto.redPackage
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoRedPackageInfo extends Message
   {
      
      public static const RECHARGE_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.redPackage.ProtoRedPackageInfo.recharge_money","rechargeMoney",1 << 3 | WireType.VARINT);
      
      public static const BEGIN_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.redPackage.ProtoRedPackageInfo.begin_time","beginTime",2 << 3 | WireType.VARINT);
      
      public static const END_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.redPackage.ProtoRedPackageInfo.end_time","endTime",3 << 3 | WireType.VARINT);
      
      public static const RETURN_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.redPackage.ProtoRedPackageInfo.return_money","returnMoney",4 << 3 | WireType.VARINT);
      
      public static const SEND_DIRECT_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.redPackage.ProtoRedPackageInfo.send_direct_count","sendDirectCount",5 << 3 | WireType.VARINT);
      
      public static const RECV_DIRECT_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.redPackage.ProtoRedPackageInfo.recv_direct_count","recvDirectCount",6 << 3 | WireType.VARINT);
      
      public static const SEND_WHOLE_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.redPackage.ProtoRedPackageInfo.send_whole_count","sendWholeCount",7 << 3 | WireType.VARINT);
      
      public static const RECV_WHOLE_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.redPackage.ProtoRedPackageInfo.recv_whole_count","recvWholeCount",8 << 3 | WireType.VARINT);
       
      public var rechargeMoney:int;
      
      private var begin_time$field:int;
      
      private var hasField$0:uint = 0;
      
      private var end_time$field:int;
      
      private var return_money$field:int;
      
      private var send_direct_count$field:int;
      
      private var recv_direct_count$field:int;
      
      private var send_whole_count$field:int;
      
      private var recv_whole_count$field:int;
      
      public function ProtoRedPackageInfo()
      {
         super();
      }
      
      public function clearBeginTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.begin_time$field = new int();
      }
      
      public function get hasBeginTime() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set beginTime(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.begin_time$field = param1;
      }
      
      public function get beginTime() : int
      {
         return this.begin_time$field;
      }
      
      public function clearEndTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.end_time$field = new int();
      }
      
      public function get hasEndTime() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set endTime(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.end_time$field = param1;
      }
      
      public function get endTime() : int
      {
         return this.end_time$field;
      }
      
      public function clearReturnMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.return_money$field = new int();
      }
      
      public function get hasReturnMoney() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set returnMoney(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.return_money$field = param1;
      }
      
      public function get returnMoney() : int
      {
         return this.return_money$field;
      }
      
      public function clearSendDirectCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.send_direct_count$field = new int();
      }
      
      public function get hasSendDirectCount() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set sendDirectCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.send_direct_count$field = param1;
      }
      
      public function get sendDirectCount() : int
      {
         return this.send_direct_count$field;
      }
      
      public function clearRecvDirectCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.recv_direct_count$field = new int();
      }
      
      public function get hasRecvDirectCount() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set recvDirectCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.recv_direct_count$field = param1;
      }
      
      public function get recvDirectCount() : int
      {
         return this.recv_direct_count$field;
      }
      
      public function clearSendWholeCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.send_whole_count$field = new int();
      }
      
      public function get hasSendWholeCount() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set sendWholeCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.send_whole_count$field = param1;
      }
      
      public function get sendWholeCount() : int
      {
         return this.send_whole_count$field;
      }
      
      public function clearRecvWholeCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.recv_whole_count$field = new int();
      }
      
      public function get hasRecvWholeCount() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set recvWholeCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.recv_whole_count$field = param1;
      }
      
      public function get recvWholeCount() : int
      {
         return this.recv_whole_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_INT32(param1,this.rechargeMoney);
         if(this.hasBeginTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.begin_time$field);
         }
         if(this.hasEndTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.end_time$field);
         }
         if(this.hasReturnMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.return_money$field);
         }
         if(this.hasSendDirectCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.send_direct_count$field);
         }
         if(this.hasRecvDirectCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.recv_direct_count$field);
         }
         if(this.hasSendWholeCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.send_whole_count$field);
         }
         if(this.hasRecvWholeCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_INT32(param1,this.recv_whole_count$field);
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
