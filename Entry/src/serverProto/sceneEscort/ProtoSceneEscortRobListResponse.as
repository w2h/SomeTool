package serverProto.sceneEscort
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
   
   public final class ProtoSceneEscortRobListResponse extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.sceneEscort.ProtoSceneEscortRobListResponse.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const ROB_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.sceneEscort.ProtoSceneEscortRobListResponse.rob_List","rob_List",2 << 3 | WireType.LENGTH_DELIMITED,ProtoSceneEscortRobInfo);
      
      public static const CAN_ROB_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.sceneEscort.ProtoSceneEscortRobListResponse.can_rob_times","canRobTimes",3 << 3 | WireType.VARINT);
      
      public static const REMAINDER_ROB_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.sceneEscort.ProtoSceneEscortRobListResponse.remainder_rob_times","remainderRobTimes",4 << 3 | WireType.VARINT);
       
      private var ret_info$field:ProtoRetInfo;
      
      [ArrayElementType("serverProto.sceneEscort.ProtoSceneEscortRobInfo")]
      public var rob_List:Array;
      
      private var can_rob_times$field:int;
      
      private var hasField$0:uint = 0;
      
      private var remainder_rob_times$field:int;
      
      public function ProtoSceneEscortRobListResponse()
      {
         this.rob_List = [];
         super();
      }
      
      public function clearRetInfo() : void
      {
         this.ret_info$field = null;
      }
      
      public function get hasRetInfo() : Boolean
      {
         return this.ret_info$field != null;
      }
      
      public function set retInfo(param1:ProtoRetInfo) : void
      {
         this.ret_info$field = param1;
      }
      
      public function get retInfo() : ProtoRetInfo
      {
         return this.ret_info$field;
      }
      
      public function clearCanRobTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.can_rob_times$field = new int();
      }
      
      public function get hasCanRobTimes() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set canRobTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.can_rob_times$field = param1;
      }
      
      public function get canRobTimes() : int
      {
         return this.can_rob_times$field;
      }
      
      public function clearRemainderRobTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.remainder_rob_times$field = new int();
      }
      
      public function get hasRemainderRobTimes() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set remainderRobTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.remainder_rob_times$field = param1;
      }
      
      public function get remainderRobTimes() : int
      {
         return this.remainder_rob_times$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasRetInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret_info$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.rob_List.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.rob_List[_loc2_]);
            _loc2_++;
         }
         if(this.hasCanRobTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.can_rob_times$field);
         }
         if(this.hasRemainderRobTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.remainder_rob_times$field);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
