package serverProto.sceneEscort
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.inc.ProtoPlayerBaseInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetSceneEscortHelperListResponse extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.sceneEscort.ProtoGetSceneEscortHelperListResponse.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const HELPER_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.sceneEscort.ProtoGetSceneEscortHelperListResponse.helper_list","helperList",2 << 3 | WireType.LENGTH_DELIMITED,ProtoSceneEscortHelperInfo);
      
      public static const CAN_ASK_HELPER_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.sceneEscort.ProtoGetSceneEscortHelperListResponse.can_ask_helper_times","canAskHelperTimes",3 << 3 | WireType.VARINT);
      
      public static const REMAINDER_HELPER_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.sceneEscort.ProtoGetSceneEscortHelperListResponse.remainder_helper_times","remainderHelperTimes",4 << 3 | WireType.VARINT);
      
      public static const CAN_ASK_FRIEND_HELPER_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.sceneEscort.ProtoGetSceneEscortHelperListResponse.can_ask_friend_helper_times","canAskFriendHelperTimes",5 << 3 | WireType.VARINT);
      
      public static const REMAINDER_FRIEND_HELPER_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.sceneEscort.ProtoGetSceneEscortHelperListResponse.remainder_friend_helper_times","remainderFriendHelperTimes",6 << 3 | WireType.VARINT);
      
      public static const HELPER_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.sceneEscort.ProtoGetSceneEscortHelperListResponse.helper_info","helperInfo",7 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerBaseInfo);
       
      public var retInfo:ProtoRetInfo;
      
      [ArrayElementType("serverProto.sceneEscort.ProtoSceneEscortHelperInfo")]
      public var helperList:Array;
      
      private var can_ask_helper_times$field:int;
      
      private var hasField$0:uint = 0;
      
      private var remainder_helper_times$field:int;
      
      private var can_ask_friend_helper_times$field:int;
      
      private var remainder_friend_helper_times$field:int;
      
      private var helper_info$field:ProtoPlayerBaseInfo;
      
      public function ProtoGetSceneEscortHelperListResponse()
      {
         this.helperList = [];
         super();
      }
      
      public function clearCanAskHelperTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.can_ask_helper_times$field = new int();
      }
      
      public function get hasCanAskHelperTimes() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set canAskHelperTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.can_ask_helper_times$field = param1;
      }
      
      public function get canAskHelperTimes() : int
      {
         return this.can_ask_helper_times$field;
      }
      
      public function clearRemainderHelperTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.remainder_helper_times$field = new int();
      }
      
      public function get hasRemainderHelperTimes() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set remainderHelperTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.remainder_helper_times$field = param1;
      }
      
      public function get remainderHelperTimes() : int
      {
         return this.remainder_helper_times$field;
      }
      
      public function clearCanAskFriendHelperTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.can_ask_friend_helper_times$field = new int();
      }
      
      public function get hasCanAskFriendHelperTimes() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set canAskFriendHelperTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.can_ask_friend_helper_times$field = param1;
      }
      
      public function get canAskFriendHelperTimes() : int
      {
         return this.can_ask_friend_helper_times$field;
      }
      
      public function clearRemainderFriendHelperTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.remainder_friend_helper_times$field = new int();
      }
      
      public function get hasRemainderFriendHelperTimes() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set remainderFriendHelperTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.remainder_friend_helper_times$field = param1;
      }
      
      public function get remainderFriendHelperTimes() : int
      {
         return this.remainder_friend_helper_times$field;
      }
      
      public function clearHelperInfo() : void
      {
         this.helper_info$field = null;
      }
      
      public function get hasHelperInfo() : Boolean
      {
         return this.helper_info$field != null;
      }
      
      public function set helperInfo(param1:ProtoPlayerBaseInfo) : void
      {
         this.helper_info$field = param1;
      }
      
      public function get helperInfo() : ProtoPlayerBaseInfo
      {
         return this.helper_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         var _loc2_:uint = 0;
         while(_loc2_ < this.helperList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.helperList[_loc2_]);
            _loc2_++;
         }
         if(this.hasCanAskHelperTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.can_ask_helper_times$field);
         }
         if(this.hasRemainderHelperTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.remainder_helper_times$field);
         }
         if(this.hasCanAskFriendHelperTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.can_ask_friend_helper_times$field);
         }
         if(this.hasRemainderFriendHelperTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.remainder_friend_helper_times$field);
         }
         if(this.hasHelperInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.helper_info$field);
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
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
