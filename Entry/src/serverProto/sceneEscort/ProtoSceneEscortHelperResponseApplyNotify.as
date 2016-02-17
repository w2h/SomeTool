package serverProto.sceneEscort
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerBaseInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSceneEscortHelperResponseApplyNotify extends Message
   {
      
      public static const PLAYER_BASE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.sceneEscort.ProtoSceneEscortHelperResponseApplyNotify.player_base_info","playerBaseInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerBaseInfo);
      
      public static const STATUS:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.sceneEscort.ProtoSceneEscortHelperResponseApplyNotify.status","status",2 << 3 | WireType.VARINT,ProtoSceneEscortResponseApplyStatue);
      
      public static const CAN_ASK_HELPER_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.sceneEscort.ProtoSceneEscortHelperResponseApplyNotify.can_ask_helper_times","canAskHelperTimes",3 << 3 | WireType.VARINT);
      
      public static const REMAINDER_HELPER_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.sceneEscort.ProtoSceneEscortHelperResponseApplyNotify.remainder_helper_times","remainderHelperTimes",4 << 3 | WireType.VARINT);
      
      public static const CAN_ASK_FRIEND_HELPER_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.sceneEscort.ProtoSceneEscortHelperResponseApplyNotify.can_ask_friend_helper_times","canAskFriendHelperTimes",5 << 3 | WireType.VARINT);
      
      public static const REMAINDER_FRIEND_HELPER_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.sceneEscort.ProtoSceneEscortHelperResponseApplyNotify.remainder_friend_helper_times","remainderFriendHelperTimes",6 << 3 | WireType.VARINT);
       
      private var player_base_info$field:ProtoPlayerBaseInfo;
      
      private var status$field:int;
      
      private var hasField$0:uint = 0;
      
      private var can_ask_helper_times$field:int;
      
      private var remainder_helper_times$field:int;
      
      private var can_ask_friend_helper_times$field:int;
      
      private var remainder_friend_helper_times$field:int;
      
      public function ProtoSceneEscortHelperResponseApplyNotify()
      {
         super();
      }
      
      public function clearPlayerBaseInfo() : void
      {
         this.player_base_info$field = null;
      }
      
      public function get hasPlayerBaseInfo() : Boolean
      {
         return this.player_base_info$field != null;
      }
      
      public function set playerBaseInfo(param1:ProtoPlayerBaseInfo) : void
      {
         this.player_base_info$field = param1;
      }
      
      public function get playerBaseInfo() : ProtoPlayerBaseInfo
      {
         return this.player_base_info$field;
      }
      
      public function clearStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.status$field = new int();
      }
      
      public function get hasStatus() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set status(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.status$field = param1;
      }
      
      public function get status() : int
      {
         return this.status$field;
      }
      
      public function clearCanAskHelperTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.can_ask_helper_times$field = new int();
      }
      
      public function get hasCanAskHelperTimes() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set canAskHelperTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.can_ask_helper_times$field = param1;
      }
      
      public function get canAskHelperTimes() : int
      {
         return this.can_ask_helper_times$field;
      }
      
      public function clearRemainderHelperTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.remainder_helper_times$field = new int();
      }
      
      public function get hasRemainderHelperTimes() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set remainderHelperTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.remainder_helper_times$field = param1;
      }
      
      public function get remainderHelperTimes() : int
      {
         return this.remainder_helper_times$field;
      }
      
      public function clearCanAskFriendHelperTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.can_ask_friend_helper_times$field = new int();
      }
      
      public function get hasCanAskFriendHelperTimes() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set canAskFriendHelperTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.can_ask_friend_helper_times$field = param1;
      }
      
      public function get canAskFriendHelperTimes() : int
      {
         return this.can_ask_friend_helper_times$field;
      }
      
      public function clearRemainderFriendHelperTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.remainder_friend_helper_times$field = new int();
      }
      
      public function get hasRemainderFriendHelperTimes() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set remainderFriendHelperTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.remainder_friend_helper_times$field = param1;
      }
      
      public function get remainderFriendHelperTimes() : int
      {
         return this.remainder_friend_helper_times$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasPlayerBaseInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_base_info$field);
         }
         if(this.hasStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_ENUM(param1,this.status$field);
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
