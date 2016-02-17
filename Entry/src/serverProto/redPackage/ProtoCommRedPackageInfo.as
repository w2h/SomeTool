package serverProto.redPackage
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoCommRedPackageInfo extends Message
   {
      
      public static const TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.redPackage.ProtoCommRedPackageInfo.type","type",1 << 3 | WireType.VARINT);
      
      public static const SEND_PLAYER:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.redPackage.ProtoCommRedPackageInfo.send_player","sendPlayer",2 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.redPackage.ProtoCommRedPackageInfo.id","id",3 << 3 | WireType.VARINT);
      
      public static const SEND_MONEY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.redPackage.ProtoCommRedPackageInfo.send_money","sendMoney",4 << 3 | WireType.VARINT);
      
      public static const SEND_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.redPackage.ProtoCommRedPackageInfo.send_num","sendNum",5 << 3 | WireType.VARINT);
      
      public static const RECV_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.redPackage.ProtoCommRedPackageInfo.recv_num","recvNum",6 << 3 | WireType.VARINT);
      
      public static const RECV_MONEY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.redPackage.ProtoCommRedPackageInfo.recv_money","recvMoney",7 << 3 | WireType.VARINT);
       
      private var type$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var send_player$field:ProtoPlayerKey;
      
      private var id$field:uint;
      
      private var send_money$field:uint;
      
      private var send_num$field:uint;
      
      private var recv_num$field:uint;
      
      private var recv_money$field:uint;
      
      public function ProtoCommRedPackageInfo()
      {
         super();
      }
      
      public function clearType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.type$field = new uint();
      }
      
      public function get hasType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set type(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.type$field = param1;
      }
      
      public function get type() : uint
      {
         return this.type$field;
      }
      
      public function clearSendPlayer() : void
      {
         this.send_player$field = null;
      }
      
      public function get hasSendPlayer() : Boolean
      {
         return this.send_player$field != null;
      }
      
      public function set sendPlayer(param1:ProtoPlayerKey) : void
      {
         this.send_player$field = param1;
      }
      
      public function get sendPlayer() : ProtoPlayerKey
      {
         return this.send_player$field;
      }
      
      public function clearId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.id$field = new uint();
      }
      
      public function get hasId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set id(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.id$field = param1;
      }
      
      public function get id() : uint
      {
         return this.id$field;
      }
      
      public function clearSendMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.send_money$field = new uint();
      }
      
      public function get hasSendMoney() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set sendMoney(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.send_money$field = param1;
      }
      
      public function get sendMoney() : uint
      {
         return this.send_money$field;
      }
      
      public function clearSendNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.send_num$field = new uint();
      }
      
      public function get hasSendNum() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set sendNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.send_num$field = param1;
      }
      
      public function get sendNum() : uint
      {
         return this.send_num$field;
      }
      
      public function clearRecvNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.recv_num$field = new uint();
      }
      
      public function get hasRecvNum() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set recvNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.recv_num$field = param1;
      }
      
      public function get recvNum() : uint
      {
         return this.recv_num$field;
      }
      
      public function clearRecvMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.recv_money$field = new uint();
      }
      
      public function get hasRecvMoney() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set recvMoney(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.recv_money$field = param1;
      }
      
      public function get recvMoney() : uint
      {
         return this.recv_money$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.type$field);
         }
         if(this.hasSendPlayer)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.send_player$field);
         }
         if(this.hasId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.id$field);
         }
         if(this.hasSendMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.send_money$field);
         }
         if(this.hasSendNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.send_num$field);
         }
         if(this.hasRecvNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.recv_num$field);
         }
         if(this.hasRecvMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.recv_money$field);
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
