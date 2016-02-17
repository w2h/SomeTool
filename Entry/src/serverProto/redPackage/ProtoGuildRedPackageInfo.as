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
   
   public final class ProtoGuildRedPackageInfo extends Message
   {
      
      public static const BEGIN_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.redPackage.ProtoGuildRedPackageInfo.begin_time","beginTime",1 << 3 | WireType.VARINT);
      
      public static const END_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.redPackage.ProtoGuildRedPackageInfo.end_time","endTime",2 << 3 | WireType.VARINT);
      
      public static const RECHARGE_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.redPackage.ProtoGuildRedPackageInfo.recharge_money","rechargeMoney",3 << 3 | WireType.VARINT);
      
      public static const RETURN_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.redPackage.ProtoGuildRedPackageInfo.return_money","returnMoney",4 << 3 | WireType.VARINT);
      
      public static const SEND_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.redPackage.ProtoGuildRedPackageInfo.send_money","sendMoney",5 << 3 | WireType.VARINT);
      
      public static const SENDED_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.redPackage.ProtoGuildRedPackageInfo.sended_money","sendedMoney",6 << 3 | WireType.VARINT);
      
      public static const RECV_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.redPackage.ProtoGuildRedPackageInfo.recv_money","recvMoney",7 << 3 | WireType.VARINT);
       
      private var begin_time$field:int;
      
      private var hasField$0:uint = 0;
      
      private var end_time$field:int;
      
      public var rechargeMoney:int;
      
      private var return_money$field:int;
      
      private var send_money$field:int;
      
      private var sended_money$field:int;
      
      private var recv_money$field:int;
      
      public function ProtoGuildRedPackageInfo()
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
      
      public function clearSendMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.send_money$field = new int();
      }
      
      public function get hasSendMoney() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set sendMoney(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.send_money$field = param1;
      }
      
      public function get sendMoney() : int
      {
         return this.send_money$field;
      }
      
      public function clearSendedMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.sended_money$field = new int();
      }
      
      public function get hasSendedMoney() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set sendedMoney(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.sended_money$field = param1;
      }
      
      public function get sendedMoney() : int
      {
         return this.sended_money$field;
      }
      
      public function clearRecvMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.recv_money$field = new int();
      }
      
      public function get hasRecvMoney() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set recvMoney(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.recv_money$field = param1;
      }
      
      public function get recvMoney() : int
      {
         return this.recv_money$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasBeginTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.begin_time$field);
         }
         if(this.hasEndTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.end_time$field);
         }
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_INT32(param1,this.rechargeMoney);
         if(this.hasReturnMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.return_money$field);
         }
         if(this.hasSendMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.send_money$field);
         }
         if(this.hasSendedMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.sended_money$field);
         }
         if(this.hasRecvMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.recv_money$field);
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
