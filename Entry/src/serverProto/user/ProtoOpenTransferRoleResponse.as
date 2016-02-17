package serverProto.user
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoOpenTransferRoleResponse extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoOpenTransferRoleResponse.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const POSITION_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoOpenTransferRoleResponse.position_list","positionList",2 << 3 | WireType.LENGTH_DELIMITED,ProtoTransferRolePositionInfo);
      
      public static const CHOOSE_INDEX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoOpenTransferRoleResponse.choose_index","chooseIndex",3 << 3 | WireType.VARINT);
      
      public static const CD_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoOpenTransferRoleResponse.cd_time","cdTime",4 << 3 | WireType.VARINT);
      
      public static const NEED_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoOpenTransferRoleResponse.need_money","needMoney",5 << 3 | WireType.VARINT);
       
      public var retInfo:ProtoRetInfo;
      
      [ArrayElementType("serverProto.user.ProtoTransferRolePositionInfo")]
      public var positionList:Array;
      
      private var choose_index$field:int;
      
      private var hasField$0:uint = 0;
      
      private var cd_time$field:int;
      
      private var need_money$field:int;
      
      public function ProtoOpenTransferRoleResponse()
      {
         this.positionList = [];
         super();
      }
      
      public function clearChooseIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.choose_index$field = new int();
      }
      
      public function get hasChooseIndex() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set chooseIndex(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.choose_index$field = param1;
      }
      
      public function get chooseIndex() : int
      {
         return this.choose_index$field;
      }
      
      public function clearCdTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.cd_time$field = new int();
      }
      
      public function get hasCdTime() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set cdTime(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.cd_time$field = param1;
      }
      
      public function get cdTime() : int
      {
         return this.cd_time$field;
      }
      
      public function clearNeedMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.need_money$field = new int();
      }
      
      public function get hasNeedMoney() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set needMoney(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.need_money$field = param1;
      }
      
      public function get needMoney() : int
      {
         return this.need_money$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         var _loc2_:uint = 0;
         while(_loc2_ < this.positionList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.positionList[_loc2_]);
            _loc2_++;
         }
         if(this.hasChooseIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.choose_index$field);
         }
         if(this.hasCdTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.cd_time$field);
         }
         if(this.hasNeedMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.need_money$field);
         }
         for(_loc3_ in this)
         {
            super.writeUnknown(param1,_loc3_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
